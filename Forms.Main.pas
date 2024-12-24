unit Forms.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, scGPControls, scStyledForm,
  scGPPagers, scGPExtControls, Vcl.Menus, scGrids, scDBGrids, NLVLib.FileHandling, NLVLib.Utils,
  Vcl.StdCtrls, scAdvancedControls, scExtControls, Frames.ListItemTemplate,
  scImageCollection, Vcl.ComCtrls;

type
  TfrmMain = class(TForm)
    scStyledForm1: TscStyledForm;
    headerPanel: TscGPPanel;
    CloseBtn: TscGPGlyphButton;
    MinimizeBtn: TscGPGlyphButton;
    ToolPager: TscGPToolPager;
    scGPGlyphButton3: TscGPGlyphButton;
    FiltersPagerTab: TscGPToolPagerPage;
    menuPanel: TscGPPanel;
    scGPToolPagerPage2: TscGPToolPagerPage;
    pbRead: TscGPProgressBar;
    ContentPanel: TscGPPanel;
    statusBarPanel: TscGPPanel;
    pmFiles: TPopupMenu;
    Open1: TMenuItem;
    Close1: TMenuItem;
    scImage1: TscImage;
    scImageCollection1: TscImageCollection;
    scGPLabel1: TscGPLabel;
    contentListView: TscListView;
    procedure CloseBtnClick(Sender: TObject);
    procedure MinimizeBtnClick(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);

  private
    { Private declarations }
    FFrameList: TObject; // Create an object TFrameManager to hold all existing frames and manage them.
  public
    { Public declarations }
    procedure ProgressBarInc(AProgress: Integer);
  end;

var
  frmMain: TfrmMain;

implementation

uses
  NLVLib.ApplicationStateHolder;

{$R *.dfm}

procedure TfrmMain.Open1Click(Sender: TObject);
var
  OpenedFile: TLogFile;
begin
  OpenedFile := ActionUtils.OpenFile;
  if OpenedFile <> nil then
  begin
    gStateHolder.CurrentFile := OpenedFile;
    gStateHolder.HasOpenFile := True;

    var Progress: Extended := 0;
    var Increment: Extended := 100/Length(gStateHolder.CurrentFile.FLogEntries);
    ProgressBarInc(0);

    {
      I decided to make invisible while I add the entries so the it doesn't have to draw every single entry on each insert.
      By setting it to Visible := False before the loop and True after the loop I got it to render all at once, which
      **Improved significantly the Load time for 217 records**. Still fails for 3.000
    }
    //contentListView.Visible := False;
    for var I := Length(gStateHolder.CurrentFile.FLogEntries) - 1 downto 0 do
    begin
      var rec := gStateHolder.CurrentFile.FLogEntries[I];
      var ListItem: TListItem := TListItem.Create(nil);
      ListItem.Caption := '';
      var frame := TEntryListItemTemplate.Create(contentListView, rec, contentListView.ControlCount);
      frame.Name := TypeUtils.GenerateFrameName();
      contentListView.InsertControl(frame);
      Progress := Progress + Increment;
      ProgressBarInc(Round(Progress));
    end;
    contentListView.Items.Count := Length(gStateHolder.CurrentFile.FLogEntries);
    //contentListView.Visible := True;  // System out of Resources. How to deal with?

  end;
end;

procedure TfrmMain.ProgressBarInc(AProgress: Integer);
begin
  if not pbRead.Visible then
  begin
    pbRead.Visible := True
  end;

  pbRead.Value := AProgress;
end;

procedure TfrmMain.Close1Click(Sender: TObject);
begin
  while contentListView.ControlCount > 0 do
  begin
    var ControlToRemoveCpy := contentListView.Controls[contentListView.ControlCount - 1];
    contentListView.RemoveControl(contentListView.Controls[contentListView.ControlCount - 1]);
    ControlToRemoveCpy.Free;
  end;
end;

procedure TfrmMain.CloseBtnClick(Sender: TObject);
begin
  Application.Terminate();
end;

procedure TfrmMain.MinimizeBtnClick(Sender: TObject);
begin
  Application.Minimize;
end;

end.
