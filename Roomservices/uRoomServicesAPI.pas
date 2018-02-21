unit uRoomServicesAPI;

interface
uses
    cmpRoomerDataset
  , uMobileAPI
  , SysUtils
  , Classes
  ;

type
  RRoomServicesSetStatusParameters = record
    Status: string;
    setStatus: boolean;
    CleaningNotes: string;
    setCleaningNotes: boolean;
    MaintenanceNotes: string;
    setMaintenanceNotes: boolean;
    lostAndFound: string;
    setLostAndFound: boolean;
  end;

  TRoomServicesMobileAPICaller = class(TBaseMobileAPICaller)
  private const
    cRoomServicesURI = '/roomservices';
    cSetStatusURI = '/setstatus';
  public
    /// <summary>
    ///   Implementation of /roomservices/setstatus mobile api endpoint, changing the room cleaning state
    /// </summary>
    procedure SetStatus(const aRoom: string; aDate: TDate; const aParams: RRoomServicesSetStatusParameters);
  end;

implementation

uses
  uD
  , uDateUtils
  , WinAPI.Windows
  ;

{ TRoomServicesMobileAPICaller }

procedure TRoomServicesMobileAPICaller.SetStatus(const aRoom: string; aDate: TDate; const aParams: RRoomServicesSetStatusParameters);
var
  lData: TStringList;
  lResponse: string;
//  @FormParam("room") final String room,
//  @FormParam("dt") final String date,
//	@FormParam("st") final String status,
//	@FormParam("cn") final String cleaningNotes,
//	@FormParam("mn") final String maintenanceNotes,
//	@FormParam("lf") final String lostAndFound)
begin
  lData := TStringlist.Create;
  try
    lData.Delimiter := '&';
    lData.StrictDelimiter := true;

    lData.Add(Format('room=%s', [aRoom]));
    lData.Add(Format('dt=%s', [dateToSqlString(aDate)]));
    if aParams.setStatus then
      lData.Add(Format('st=%s', [aParams.Status]));
    if aParams.setCleaningNotes then
      lData.Add(Format('cn=%s', [d.roomerMainDataSet.ForcedUrlEncode(aParams.CleaningNotes)]));
    if aParams.setMaintenanceNotes then
      lData.Add(Format('mn=%s', [d.roomerMainDataSet.ForcedUrlEncode(aParams.MaintenanceNotes)]));
    if aParams.setLostAndFound then
      lData.Add(Format('lf=%s', [d.roomerMainDataSet.ForcedUrlEncode(aParams.lostAndFound)]));

    if lData.Count > 2 then
      lResponse := d.roomerMainDataSet.PostData(cRoomServicesURI + cSetStatusURI, lData.DelimitedText);

  finally
    lData.Free;
  end;

end;

end.
