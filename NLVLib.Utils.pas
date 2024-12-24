unit NLVLib.Utils;

interface

uses
  Windows, CommCtrl, System.SysUtils, NLVLib.FileHandling, VCL.ComCtrls;

type
  ActionUtils = record
    class function OpenFile(): TLogFile; static;
  end;

  TypeUtils = record
    class function ByteArrayToStrOfBytes(ALine: TBytes): String; static;
    class function GenerateFrameName: String; static;
  end;

  UIUtils = record
    class function GetSubItemRect(LV: TListView; ItemIndex, SubItemIndex: Integer; var Rect: TRect): Boolean; static;
  end;

implementation

uses
  VCL.Dialogs, VCL.Forms, NLVLib.ApplicationStateHolder, System.IOUtils;

{ ActionUtils }

class function ActionUtils.OpenFile: TLogFile;
var
  OpenDlg: TOpenDialog;
  FullFilePath: String;
  LogFile: TLogFile;
begin           
  Result := nil;
  if gStateHolder.HasOpenFile then
  begin
   // Call Routine to Close file b4;
  end;
  
  OpenDlg := TOpenDialog.Create(Application.MainForm);
  OpenDlg.Filter := 'Log Files | *.LOG;*.TXT';

  if gStateHolder.LatestLogPath <> '' then
  begin
    OpenDlg.InitialDir := gStateHolder.LatestLogPath;
  end else begin
    OpenDlg.InitialDir := TPath.GetDocumentsPath;
  end;

  if gStateHolder.CurrentFile <> nil then
    Exit();
  
  try
    if OpenDlg.Execute then
    begin
      if FileExists(OpenDlg.FileName) then
      begin
        FullFilePath := OpenDlg.FileName
      end else begin
        raise Exception.Create('File Doesn''t Exist');
      end;

      // From now on the file does exist in the chosen path.
      LogFile := TLogFile.Create();

      if LogFile.ReadFile(FullFilePath) then
      begin
        gStateHolder.LatestLogPath := TDirectory.GetParent(FullFilePath);
        Result := LogFile;
      end;
    end;
  finally
    OpenDlg.Free;
  end;


end;

{ TypeUtils }

class function TypeUtils.ByteArrayToStrOfBytes(ALine: TBytes): String;
begin
  result := '';
  for var B in ALine do
  begin
    result := result + IntToHex(B, 2) + ' ';
  end;
end;

class function TypeUtils.GenerateFrameName: String;
begin
  result :=  'FRAME_' + StringReplace(StringReplace(StringReplace(TGuid.NewGuid.ToString, '{', '', [rfReplaceAll]), '}', '', [rfReplaceAll]), '-','',[rfReplaceAll]);
end;

{ UIUtils }

class function UIUtils.GetSubItemRect(LV: TListView; ItemIndex,
  SubItemIndex: Integer; var Rect: TRect): Boolean;
begin
  Result := ListView_GetSubItemRect(LV.Handle, ItemIndex, SubItemIndex, LVIR_BOUNDS, @Rect);
end;

end.
