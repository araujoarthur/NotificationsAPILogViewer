unit Frames.ListItemTemplate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Skia, Vcl.Skia,
  scGPControls, scControls, NLVLib.FileHandling;

type
  TEntryListItemTemplate = class(TFrame)
    svgLogIcon: TSkSvg;
    labelDateTime: TscGPLabel;
    scGPPanel1: TscGPPanel;
    labelDescription: TscGPLabel;
    scGPPanel2: TscGPPanel;
    scGPPanel3: TscGPPanel;
    scGPGlyphContainerButton2: TscGPGlyphContainerButton;
    svgEyeIcon: TSkSvg;
  private
    { Private declarations }
    FAssociatedRecord: TLogEntry;
    FAssociatedControlIndex: Integer; // TODO: When one is removed all indexes must above must change (needs a routine)
    procedure SetupWarningIcon();
    procedure SetupErrorIcon();
    procedure SetupInfoIcon();
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; ARecord: TLogEntry; AControlIndexInList: Integer); reintroduce;
  end;

const
  ERROR_ICON = '''
  <?xml version="1.0" ?><svg height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M16.707 2.293A.996.996 0 0 0 16 2H8a.996.996 0 0 0-.707.293l-5 5A.996.996 0 0 0 2 8v8c0 .266.105.52.293.707l5 5A.996.996 0 0 0 8 22h8c.266 0 .52-.105.707-.293l5-5A.996.996 0 0 0 22 16V8a.996.996 0 0 0-.293-.707l-5-5zM13 17h-2v-2h2v2zm0-4h-2V7h2v6z"/></svg>
  ''';

  INFO_ICON = '''
  <?xml version="1.0" ?><svg height="48" viewBox="0 0 48 48" width="48" xmlns="http://www.w3.org/2000/svg"><path d="M0 0h48v48h-48z" fill="none"/><path d="M24 4c-11.05 0-20 8.95-20 20s8.95 20 20 20 20-8.95 20-20-8.95-20-20-20zm2 30h-4v-12h4v12zm0-16h-4v-4h4v4z"/></svg>
  ''';

  WARNING_ICON = '''
  <?xml version="1.0" ?><svg height="21px" version="1.1" viewBox="0 0 22 21" width="22px" xmlns="http://www.w3.org/2000/svg" xmlns:sketch="http://www.bohemiancoding.com/sketch/ns" xmlns:xlink="http://www.w3.org/1999/xlink"><title/><desc/><defs/><g fill="none" fill-rule="evenodd" id="Page-1" stroke="none" stroke-width="1"><g fill="#000000" id="Core" transform="translate(-337.000000, -506.000000)"><g id="warning" transform="translate(337.000000, 506.500000)"><path d="M0,19 L22,19 L11,0 L0,19 L0,19 Z M12,16 L10,16 L10,14 L12,14 L12,16 L12,16 Z M12,12 L10,12 L10,8 L12,8 L12,12 L12,12 Z" id="Shape"/></g></g></g></svg>
  ''';

implementation

{$R *.dfm}

{ TEntryListItemTemplate }

constructor TEntryListItemTemplate.Create(AOwner: TComponent; ARecord: TLogEntry; AControlIndexInList: Integer);
begin
  inherited Create(AOwner);
  FAssociatedRecord := ARecord;
  FAssociatedControlIndex := AControlIndexInList;
  case FAssociatedRecord.Severity of
    lsUNKNOWN: SetupInfoIcon();
    lsUNIMPORTANT: SetupInfoIcon();
    lsREQUESTRECEIVED: SetupInfoIcon();
    lsINFORMATION: SetupInfoIcon();
    lsWARNING: SetupWarningIcon();
    lsERROR: SetupErrorIcon();
  end;

  labelDescription.Caption := Copy(FAssociatedRecord.Message, 0, 150);
  labelDateTime.Caption := DateTimeToStr(FAssociatedRecord.Date);

end;

procedure TEntryListItemTemplate.SetupErrorIcon;
begin
  svgLogIcon.Svg.OverrideColor := $FFFF2D2D;
  svgLogIcon.Svg.Source := ERROR_ICON;
end;

procedure TEntryListItemTemplate.SetupInfoIcon;
begin
  svgLogIcon.Svg.OverrideColor := $FF2D4DFF;
  svgLogIcon.Svg.Source := INFO_ICON;
end;

procedure TEntryListItemTemplate.SetupWarningIcon;
begin
  svgLogIcon.Svg.OverrideColor := $FFFFAB2D;
  svgLogIcon.Svg.Source := WARNING_ICON;
end;

end.
