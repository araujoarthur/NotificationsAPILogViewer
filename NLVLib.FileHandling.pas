unit NLVLib.FileHandling;

interface
uses
System.Generics.Collections, System.SysUtils;
type

  TLogEntry = record
    Date: TDateTime;
    Severity: Integer;
    Message: String;
  end;

  TLogFile = class
  private
    FFilePath: String;
    
    FTotalLines: Integer;
    procedure InitDefaults();
  public
    FLogEntries: TArray<TLogEntry>;
    constructor Create(); overload;
    constructor Create(APath: String); overload;
    function ReadFile(): Boolean; overload;
    function ReadFile(APath: String): Boolean; overload;
    function ParseLineIntoEntryRecord(ALine: String): TLogEntry; overload;
    function ParseLineIntoEntryRecord(ALine: TBytes): TLogEntry; overload;
    property LogEntries: TArray<TLogEntry> read FLogEntries;
  end;


const
  INFO_SEPARATOR: Byte = 31;
  ENTRY_SEPARATOR: Byte = 30;
  INFO_SEPARATOR_CHAR = #31;
  ENTRY_SEPARATOR_CHAR = #30;

  lsUNKNOWN = 100;
  lsUNIMPORTANT = lsUNKNOWN + 1;
  lsREQUESTRECEIVED = lsUNIMPORTANT + 1;
  lsINFORMATION = lsREQUESTRECEIVED + 1;
  lsWARNING = lsINFORMATION + 1;
  lsERROR = lsWARNING + 1;
implementation

uses
  System.IOUtils, Vcl.Dialogs, Forms.Main, NLVLib.Utils;
{ TLogFile }

constructor TLogFile.Create(APath: String);
begin
  FFilePath := APath;
  InitDefaults();
end;

constructor TLogFile.Create;
begin
  InitDefaults();
end;

procedure TLogFile.InitDefaults;
begin
  SetLength(FLogEntries, 0);
end;

function TLogFile.ParseLineIntoEntryRecord(ALine: TBytes): TLogEntry;
var
  Timestmp: TBytes;
  Severity: TBytes;
  Msg: TBytes;
  Breaks: Integer;
  FS: TFormatSettings;
begin

  FS := TFormatSettings.Create;
  FS.DateSeparator := '/';
  FS.TimeSeparator := ':';
  FS.ShortDateFormat := 'dd/mm/yyyy';
  FS.LongTimeFormat := 'hh:nn:ss';

  var Position, InitialPosition: Integer;
  Breaks := 0;
  InitialPosition := 0;
  Position := InitialPosition;
  
  for var currByte in ALine do
  begin
    if (currByte = INFO_SEPARATOR) then
    begin
      if (Breaks = 0) then
      begin
        Timestmp := Copy(ALine, InitialPosition, Position - InitialPosition); // Up to Position here bc Count of charaters to position reaches the Separator, so using position as count (nth - 1 character) leads to the char before the separator

      end else if (Breaks = 1) then
      begin
        Severity := Copy(ALine, InitialPosition, Position - InitialPosition);
      end;

      Inc(Breaks);
      InitialPosition := Position + 1; // Starts the initial position from the character NEXT to the separator pos.
    end;
    if (currByte = ENTRY_SEPARATOR) or (Position = (Length(ALine) - 1)) then    // the chk for EntrySeparator is more like a safeguard for futureproofing. The way it's designed in open file now is not likely to let a #30 reach Parsing
    begin
      Msg := Copy(ALine, InitialPosition, MaxInt);   // Reads everything up to the end.
      break;
    end;
    Inc(Position);

  end;

  if (Length(Timestmp) > 0) and (Length(Severity) > 0) and (Length(Msg) > 0) then
  begin
    Result.Date := StrToDateTime(UTF8ArrayToString(Timestmp), FS);
    Result.Severity := StrToInt(UTF8ArrayToString(Severity));
    Result.Message := UTF8ArrayToString(Msg);
  end;
end;

function TLogFile.ParseLineIntoEntryRecord(ALine: String): TLogEntry;
begin
  var Encoded: TBytes := TEncoding.UTF8.GetBytes(ALine);
  Result := ParseLineIntoEntryRecord(Encoded);
end;

function TLogFile.ReadFile(APath: String): Boolean;
var
  LinesArr: TArray<TBytes>;
begin
  // Get All file Bytes
  var FileBytes := TFile.ReadAllBytes(APath);

  var LineCount: Int64 := 0;
  var Increment := 100/Length(FileBytes);
  var Progress := 0.0;
  
  
  var Position, InitialPosition: Integer;
  InitialPosition := 0;
  Position := InitialPosition;
  
  
  try
    for var currByte in FileBytes do
    begin
      if (currByte = ENTRY_SEPARATOR) then
      begin
        Inc(LineCount);

        var NewLine: TBytes := Copy(FileBytes, InitialPosition, Position - InitialPosition);
        SetLength(LinesArr, Length(LinesArr) + 1);
        LinesArr[Length(LinesArr) - 1] := Copy(NewLine, 0, MaxInt);
        InitialPosition := Position + 3; // Jumps the 30, the 13 and 10 bytes.
      end;
      
      
      Progress := Progress + Increment;
      frmMain.ProgressBarInc(Round(Progress));   // There must be a better way of doing this.
      Inc(Position);
      FTotalLines := LineCount - 1; // Ignores the last blank line.
    end;  

    Increment := 100/Length(LinesArr);
    Progress := 0;
    for var Line in LinesArr do
    begin
      var ParseResult: TLogEntry;
      ParseResult := ParseLineIntoEntryRecord(Line);
      SetLength(FLogEntries, Length(FLogEntries) + 1);
      FLogEntries[Length(FLogEntries) - 1] := ParseResult;
      Progress := Progress + Increment;
      frmMain.ProgressBarInc(Round(Progress)); 
    end;
    Result := True;
  finally
    SetLength(LinesArr, 0);
  end;
  
  
  
  
end;

function TLogFile.ReadFile(): Boolean;
begin
  Result := ReadFile(FFilePath);
end;

end.
