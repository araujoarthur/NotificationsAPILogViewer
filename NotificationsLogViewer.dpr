program NotificationsLogViewer;

uses
  Vcl.Forms,
  Forms.Main in 'Forms.Main.pas' {frmMain},
  NLVLib.FileHandling in 'NLVLib.FileHandling.pas',
  NLVLib.Utils in 'NLVLib.Utils.pas',
  NLVLib.ApplicationStateHolder in 'NLVLib.ApplicationStateHolder.pas',
  Frames.ListItemTemplate in 'Frames.ListItemTemplate.pas' {EntryListItemTemplate: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
