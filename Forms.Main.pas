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
    scGPLabel1: TscGPLabel;
    contentListView: TListView;
    scImageCollection1: TscImageCollection;
    pmContentListView: TPopupMenu;
    ViewDetails1: TMenuItem;
    procedure CloseBtnClick(Sender: TObject);
    procedure MinimizeBtnClick(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ViewDetails1Click(Sender: TObject);
    procedure pmContentListViewPopup(Sender: TObject);
  private
    { Private declarations }
    FFrameList: TObject; // Create an object TFrameManager to hold all existing frames and manage them.
    procedure cstLVOnData(Sender: TObject; Item: TListItem);
    procedure lvDrawApplyProportionsOnColumns();
    procedure cstLVOnCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
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

    {
      I decided to make invisible while I add the entries so the it doesn't have to draw every single entry on each insert.
      By setting it to Visible := False before the loop and True after the loop I got it to render all at once, which
      **Improved significantly the Load time for 217 records**. Still fails for 3.000
    }
    //contentListView.Visible := False;
    contentListView.Items.Count := Length(gStateHolder.CurrentFile.FLogEntries); // Causes OnData to start fetching for items.

    contentListView.OnCustomDrawItem := self.cstLVOnCustomDrawItem;
    contentListView.OnData := self.cstLVOnData;
    lvDrawApplyProportionsOnColumns();
  end;
end;

procedure TfrmMain.pmContentListViewPopup(Sender: TObject);
begin
  if contentListView.Items.Count >= 0 then
  begin
    pmContentListView.Items[0].Enabled := False;
  end else begin
    pmContentListView.Items[0].Enabled := True;
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

procedure TfrmMain.ViewDetails1Click(Sender: TObject);
begin
  ShowMessage(contentListView.Selected.SubItems[1]);

end;

procedure TfrmMain.Close1Click(Sender: TObject);
begin
  contentListView.Items.Count := 0;
  FreeAndNil(gStateHolder.CurrentFile);
end;

procedure TfrmMain.CloseBtnClick(Sender: TObject);
begin
  Application.Terminate();
end;

procedure TfrmMain.cstLVOnCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
var
  R: TRect;
  rec: TLogEntry;
begin
  rec := gStateHolder.CurrentFile.FLogEntries[Item.Index];

  // Get the item's rectangle
  R := Item.DisplayRect(drBounds);

  // Set background color for the row
  with Sender.Canvas do
  begin
    var SeverityText: String := '';

    case rec.Severity of
      lsERROR:
      begin
        Font.Color := $FFFFFF;
        Font.Style := [fsBold];
        Brush.Color := $00269b;
        SeverityText := 'ERROR';
      end;

      lsWARNING:
      begin
        Font.Color := $000000;
        Font.Style := [fsBold];
        Brush.Color := $00ccff;
        SeverityText := 'WARN';
      end;

      lsINFORMATION:
      begin
        Font.Color := $000000;
        Font.Style := [fsBold];
        Brush.Color := $d8d8d8;
        SeverityText := 'INFO';
      end;

      lsREQUESTRECEIVED:
      begin
        Font.Color := $000000;
        Font.Style := [fsBold];
        Brush.Color := $d8d8d8;
        SeverityText := 'REQ';
      end;

      lsUNIMPORTANT:
      begin
        Font.Color := $000000;
        Font.Style := [fsBold];
        Brush.Color := $d8d8d8;
        SeverityText := 'UNIMP';
      end;

      lsUNKNOWN:
      begin
        Font.Color := $000000;
        Font.Style := [fsBold];
        Brush.Color := $007cf9;
        SeverityText := 'UNK';
      end;
    end;


    FillRect(R);

    var Boundary: TRect;
    // Draw Main Item (Subitem 0)
    if UIUtils.GetSubItemRect(contentListView, Item.Index, 0, Boundary) then
    begin
      FillRect(Boundary);
      TextOut(Boundary.Left + 2, Boundary.Top + 2, SeverityText);
    end;

    // Draw SubItem 1
    if UIUtils.GetSubItemRect(contentListView, Item.Index, 1, Boundary) then
    begin
      FillRect(Boundary);
      TextOut(Boundary.Left + 2, Boundary.Top + 2, DateTimeToStr(rec.Date));
    end;

    // Draw SubItem 2
    if UIUtils.GetSubItemRect(contentListView, Item.Index, 2, Boundary) then
    begin
      FillRect(Boundary);
      TextOut(Boundary.Left + 2, Boundary.Top + 2, Copy(rec.Message, 0, Trunc(contentListView.Columns[2].Width/5) - 6));
    end;

    // Draw SubItem 2
    if UIUtils.GetSubItemRect(contentListView, Item.Index, 3, Boundary) then
    begin
      FillRect(Boundary);
      TextOut(Boundary.Left + 10, Boundary.Top + 2, 'View');
    end;
  end;

  DefaultDraw := False; // Prevent default drawing
end;


procedure TfrmMain.cstLVOnData(Sender: TObject; Item: TListItem);
begin
 var rec: TLogEntry;
  if pbRead.Value = 100 then
    pbRead.Visible := False;

  rec := gStateHolder.CurrentFile.FLogEntries[Item.Index];
  Item.Caption := IntToStr(rec.Severity);
  Item.SubItems.Add(DateTimeToStr(rec.Date)); // Second column
  Item.SubItems.Add(rec.Message);               // Third column
  Item.SubItems.Add('Action Required');
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
  lvDrawApplyProportionsOnColumns();
end;

procedure TfrmMain.lvDrawApplyProportionsOnColumns;
const
  RATIO_ICON = 0.1084;
  RATIO_DATE = 0.2322;
  RATIO_ACTIONS = 0.1703;
  RATIO_DATA = 1 - RATIO_ICON - RATIO_DATE - RATIO_ACTIONS;
var
  SeverityWid, DateWid, ActionsWid, DataWid: Integer;
begin
  SeverityWid := Trunc(contentListView.ClientWidth * RATIO_ICON);
  DateWid := Trunc(contentListView.ClientWidth * RATIO_DATE);
  ActionsWid := Trunc(contentListView.ClientWidth * RATIO_ACTIONS);
  DataWid := contentListView.ClientWidth - SeverityWid - ActionsWid - DateWid;

  contentListView.Columns.Items[0].MinWidth := SeverityWid;
  contentListView.Columns.Items[0].MaxWidth := SeverityWid;
  contentListView.Columns.Items[0].Width := SeverityWid;

  contentListView.Columns.Items[1].MinWidth := DateWid;
  contentListView.Columns.Items[1].MaxWidth := DateWid;
  contentListView.Columns.Items[1].Width := DateWid;

  contentListView.Columns.Items[3].MinWidth := ActionsWid;
  contentListView.Columns.Items[3].MaxWidth := ActionsWid;
  contentListView.Columns.Items[3].Width := ActionsWid;

  contentListView.Columns.Items[2].MinWidth := DataWid;
  contentListView.Columns.Items[2].MaxWidth := DataWid;
  contentListView.Columns.Items[2].Width := DataWid;
end;

procedure TfrmMain.MinimizeBtnClick(Sender: TObject);
begin
  Application.Minimize;
end;

end.
