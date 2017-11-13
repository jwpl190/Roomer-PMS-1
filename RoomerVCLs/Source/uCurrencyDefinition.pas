unit uCurrencyDefinition;

interface

uses
  SysUtils
  , uCurrencyConstants
  ;

type
  ECurrencyDefinitionException = class(Exception);


  /// <summary>
  ///   Object to handle definitions of currencies and display of amounts in a certain currency <br />
  ///  This base class is and should not be dependent on any part of Roomer
  /// </summary>
  ///	<remarks>
  ///	  <para>
  ///	    Unittests are available in <c>Roomer-PMS-1\Unittests\CurrencyTests</c>
  ///	  </para>
  ///	</remarks>
  TCurrencyDefinition = class
  private
    FRate: double;
    FCode: TCurrencyCode;
    FFormatSettings: TFormatSettings;
    function GetRate: double;
    function GetCurrencyCode: string;
    function GetFormatSettings: TFormatSettings;
    procedure SetFormatSettings(const Value: TFormatSettings);
    procedure SetRate(const Value: double);
  protected
    FID: integer;
  public
    constructor Create(const aCurrencyCode: string); overload; virtual;
    constructor Create(const aCurrencyCode: TCurrencyCode); overload; virtual;
    constructor Create(const aCurrencyCode: string; aCurID: integer); overload; virtual;

    property ID: integer read FId;
    property CurrencyCode: string read GetCurrencyCode;
    property Rate: double read GetRate write SetRate;
    property CurrencyFormatSettings: TFormatSettings read GetFormatSettings write SetFormatSettings;

    /// <summary>
    ///   Round aAmount to the number of decimals defined for the currency
    /// </summary>
    function RoundedValue(aAmount: double): double;
    /// <summary>
    ///   Format aAmount according to the formatsettings of the currency
    /// </summary>
    function FormattedValue(aAmount: double; aIncludeCurrencySymbol: boolean = false): string;
    /// <summary>
    ///   Format aAmount according to the formatsettings of the currency, including the 3 letter currencycode
    /// </summary>
    function FormattedValueWithCode(aAmount: double): string;
    /// <summary>
    ///   Format aAmount according to the formatsettings of the currency for editing purposes, so exclusing currencySign but with
    ///  correct number of decimals
    /// </summary>
    function EditValue(aAmount: double): string;
    /// <summary>
    ///   Returns a formatted string with the currencycode and the exchange rate, used to display active currency in i.e. a labelcaption
    /// </summary>
    function ShortDescription: string;
  end;

  TCurrencyDefinitionClass = class of TCurrencyDefinition;


implementation

uses
  uFloatUtils
  ;


constructor TCurrencyDefinition.Create(const aCurrencyCode: TCurrencyCode);
begin
  if String(aCurrencyCode).IsEmpty then
    raise ECurrencyDefinitionException.Create('Cannot create a currencydefinition with empty currencycode');
  FCode := UpperCase(String(aCurrencyCode));
  FRate := 1.0;
  FID := -1;
  FFormatSettings := TFormatSettings.Create; // System defaults
end;

constructor TCurrencyDefinition.Create(const aCurrencyCode: string; aCurID: integer);
begin
  Create(aCurrencyCode);
  FId := aCurId;
end;

constructor TCurrencyDefinition.Create(const aCurrencyCode: string);
begin
  Create(TCurrencyCode(aCurrencyCode));
end;

function TCurrencyDefinition.EditValue(aAmount: double): string;
begin
  Result := FloatToStrF(RoundedValue(aAmount), ffFixed, 10, FFormatsettings.CurrencyDecimals, FFormatSettings);
end;

function TCurrencyDefinition.FormattedValue(aAmount: double; aIncludeCurrencySymbol: boolean = false): string;
var
  lSettings: TFormatSettings;
begin
  if aIncludeCurrencySymbol then
  begin
    lSettings := FFormatSettings;
    lSettings.CurrencyString := '';
    Result := CurrToStrF(aAMount, ffCurrency, lSettings.CurrencyDecimals, lSettings)
  end
  else
    Result := CurrToStrF(aAmount, ffFixed, FFormatSettings.CurrencyDecimals, FFormatSettings);
end;

function TCurrencyDefinition.FormattedValueWithCode(aAmount: double): string;
begin
  Result := Format('%s %s', [FormattedValue(aAmount), string(CurrencyCode)]);
end;

function TCurrencyDefinition.GetCurrencyCode: string;
begin
  Result := String(FCode);
end;

function TCurrencyDefinition.GetFormatSettings: TFormatSettings;
begin
  Result := FFormatSettings;
end;

function TCurrencyDefinition.GetRate: double;
begin
  Result := FRate;
end;

function TCurrencyDefinition.ShortDescription: string;
const
  cFormat = '%s (%s)';
begin
  Result := Format(cFormat, [CurrencyCode, FloatToStr(RoundDecimals(Rate, 4))]);
end;

procedure TCurrencyDefinition.SetFormatSettings(const Value: TFormatSettings);
begin
  FFormatSettings := Value;
end;

procedure TCurrencyDefinition.SetRate(const Value: double);
begin
  FRate := Value;
end;

function TCurrencyDefinition.RoundedValue(aAmount: double): double;
begin
  Result := RoundDecimals(aAmount, FFormatSettings.CurrencyDecimals);
end;


end.
