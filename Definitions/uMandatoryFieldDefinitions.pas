unit uMandatoryFieldDefinitions;

interface

uses Classes
     ;

type

  /// <summary>
  ///   Fields on the checking form that can be set as Mandatory in the global settings
  /// </summary>
  TMandatoryCheckinField = (
    mfCity,
    mfCountry,
    mfFirstName,
    mfSurname,
    mfMarket,
    mfNationality,
    mfGuarantee
  );

  TMandatoryCheckInFieldSet = set of TMandatoryCheckinField;

  TMandatoryFieldHelper = record helper for TMandatoryCheckinField
  private
      /// <summary>
      ///   Return a TManadatoryCheckinField based in index
      /// </summary>
      class function FromItemIndex(aIndex: integer) : TMandatoryCheckinField; static;

      /// <summary>
      ///   Return the translated displaystring for a TManadatoryFieldsSet
      /// </summary>
      function AsReadableString : string;


  public
      class function PMSSettingGroup: string; static;
      function PMSSettingName: String;
      /// <summary>
      ///   Fill a TStrings with translated descriptions in order of enumeration. Can by used to populate a TCombobox.<br />
      ///  The objects list of aItemList will contain the ord() of the TManadatoryFieldsSet cast to an TObject
      /// </summary>
      class procedure AsStrings(aItemList: TStrings); static;
      /// <summary>
      ///   Return the itemindex of TManadatoryFieldsSet as it would have in the itemlist created by AsStrings
      /// </summary>
      function ToItemIndex: integer;

      /// <summary>
      ///   Returns true if Self is currently set as mandatory in the global settings
      /// </summary>
      function IsCurrentlyOn : Boolean;
      /// <summary>
      ///   Set Self  as manditory in the global settings
      /// </summary>
      procedure SetOnOrOff(aSetOn: Boolean);

      /// <summary>
      ///   Return a tagid larger than MinimumTagId to link a control to a certain mandatoryField setting.
      /// </summary>
      function AsTagid: integer;
      class function MinimumTagid: integer; static; inline;
      class function FromTagId(aTag: integer) : TMandatoryCheckinField; static;

    end;


implementation

{ TManadatoryFieldsHelper }

uses PrjConst, SysUtils, uUtils, uAppGlobal
     , uD;

const MF_PMSSETTING_NAMES : Array[low(TMandatoryCheckinField)..high(TMandatoryCheckinField)] of String =
     ('CITY_MANDATORY',
      'COUNTRY_MANDATORY',
      'FIRST_NAME_MANDATORY',
      'LAST_NAME_MANDATORY',
      'MARKET_MANDATORY',
      'NATIONALITY_MANDATORY',
      'PAYMENT_GUARANTEE_MANDATORY');
      MF_KEY_GROUP = 'MANDATORY_CHECK_IN_FIELDS';

     /// <summary>
     ///   Offset used to map a TMandatoryField to a integer used as Tag of a component. This is the
     ///  MinimumTagid
     /// </summary>
     cAsTagOffset = 100;

function TMandatoryFieldHelper.AsReadableString: string;
begin
  case Self of
    mfCity          : result := GetTranslatedText('shTx_MandatoryFields_City');
    mfCountry       : result := GetTranslatedText('shTx_MandatoryFields_Country');
    mfFirstName     : result := GetTranslatedText('shTx_MandatoryFields_FirstName');
    mfSurname       : result := GetTranslatedText('shTx_MandatoryFields_Surname');
    mfMarket        : result := GetTranslatedText('shTx_MandatoryFields_Market');
    mfNationality   : result := GetTranslatedText('shTx_MandatoryFields_Nationality');
    mfGuarantee     : result := GetTranslatedText('shTx_MandatoryFields_Guarantee');
  else
    Result := '';
  end;
end;

class procedure TMandatoryFieldHelper.AsStrings(aItemList: TStrings);
var
  s: TMandatoryCheckinField;
begin
  aItemList.BeginUpdate;
  try
    aItemList.Clear;
    for s := low(TMandatoryCheckinField) to high(s) do
      aItemList.AddObject(s.AsReadableString, TObject(ord(s)));
  finally
    aItemList.EndUpdate;
  end;
end;

function TMandatoryFieldHelper.AsTagid: integer;
begin
  Result := ord(Self) + cAsTagOffset;
end;

class function TMandatoryFieldHelper.FromItemIndex(aIndex: integer): TMandatoryCheckinField;
begin
    Result := TMandatoryCheckinField(aIndex);
end;

class function TMandatoryFieldHelper.FromTagId(aTag: integer): TMandatoryCheckinField;
begin
  result :=  FromItemIndex(aTag - cAsTagOffset);
end;

function TMandatoryFieldHelper.isCurrentlyOn: Boolean;
begin
  Result := Self in glb.PMSSettings.MandatoryCheckinFields;
  if Self = TMandatoryCheckinField.mfNationality then
    Result := Result OR d.HotelServicesSettings.HagstofaServiceSettings.HagstofaEnabled
end;

class function TMandatoryFieldHelper.MinimumTagid: integer;
begin
  Result := cAsTagOffset;
end;

procedure TMandatoryFieldHelper.SetOnOrOff(aSetOn: Boolean);
var
  lMandatoryCheckinFields: TMandatoryCheckInFieldSet;
begin
  lMandatoryCheckinFields := glb.PMSSettings.MandatoryCheckinFields;
  if aSetOn and not (Self in lMandatoryCheckinFields) then
    glb.PMSSettings.MandatoryCheckinFields := lMandatoryCheckinFields + [self]
  else if not aSetOn and (Self in lMandatoryCheckinFields) then
    glb.PMSSettings.MandatoryCheckinFields := lMandatoryCheckinFields - [Self];
end;

class function TMandatoryFieldHelper.PMSSettingGroup: string;
begin
  Result := MF_KEY_GROUP;
end;

function TMandatoryFieldHelper.PMSSettingName: String;
begin
  result := MF_PMSSETTING_NAMES[self];
end;

function TMandatoryFieldHelper.ToItemIndex: integer;
begin
  Result := ord(Self);
end;

end.
