unit NLVLib.ApplicationStateHolder;

interface

uses NLVLib.Utils, NLVLib.FileHandling, System.IOUtils, VCL.Forms;

type

  TApplicationStateHolder = record
    CurrentFile: TLogFile;
    HasOpenFile: Boolean;
    LatestLogPath: String;
    ApplicationPath: String;
  end;

var
  gStateHolder: TApplicationStateHolder;
implementation

initialization
  gStateHolder.CurrentFile := nil;
  gStateHolder.LatestLogPath := '';
  gStateHolder.HasOpenFile := False;
  gStateHolder.ApplicationPath := TPath.GetDirectoryName(Application.ExeName)
end.
