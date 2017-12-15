unit uFrmFinanceConnect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.Generics.Collections,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, sPageControl, Vcl.ExtCtrls, sPanel, sTabControl, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid,
  cmpRoomerDataSet, uRoomerDialogForm, uD, uFinanceConnectService,
  uDImages, cxButtonEdit, dxmdaset, Vcl.StdCtrls, sComboBox, sLabel, sEdit, sCheckBox, sMemo, sButton, sGroupBox,
   dxPScxCommon, dxPScxGridLnk, cxPropertiesStore, sStatusBar;

type

  TFinanceConnectPageIndex = Integer;

  TFrmFinanceConnect = class(TfrmBaseRoomerDialogForm)
    pgMain: TsPageControl;
    tsSettings: TsTabSheet;
    tsMappings: TsTabSheet;
    tabsMappings: TsTabControl;
    pnl0: TsPanel;
    tvCustomers: TcxGridDBTableView;
    glCustomers: TcxGridLevel;
    grCustomers: TcxGrid;
    memCustomers: TdxMemData;
    dsCustomers: TDataSource;
    tvCustomersCode: TcxGridDBColumn;
    tvCustomersName: TcxGridDBColumn;
    tvCustomersExternalCode: TcxGridDBColumn;
    pnl1: TsPanel;
    grItems: TcxGrid;
    tvItems: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    glItems: TcxGridLevel;
    pnl2: TsPanel;
    grVats: TcxGrid;
    tvVats: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    glVats: TcxGridLevel;
    memItems: TdxMemData;
    dsItems: TDataSource;
    memVats: TdxMemData;
    dsVats: TDataSource;
    memCustomersCode: TWideStringField;
    memCustomersName: TWideStringField;
    memCustomersExternalCode: TWideStringField;
    memItemsCode: TWideStringField;
    memItemsName: TWideStringField;
    memItemsExternalCode: TWideStringField;
    memVatsCode: TWideStringField;
    memVatsName: TWideStringField;
    memVatsExternalCode: TWideStringField;
    sPanel1: TsPanel;
    edtSearch: TButtonedEdit;
    memPayGroups: TdxMemData;
    memPayGroupsCode: TWideStringField;
    memPayGroupsName: TWideStringField;
    dsPayGroups: TDataSource;
    pnl3: TsPanel;
    grdPaygroups: TcxGrid;
    tvPayGroups: TcxGridDBTableView;
    glPayGroups: TcxGridLevel;
    memPayGroupsCashBook: TStringField;
    memPayGroupsBalanceAccount: TStringField;
    tvPayGroupsRecId: TcxGridDBColumn;
    tvPayGroupsCode: TcxGridDBColumn;
    tvPayGroupsName: TcxGridDBColumn;
    tvPayGroupsBalanceAccount: TcxGridDBColumn;
    tvPayGroupsCashBook: TcxGridDBColumn;
    gbxConnectionSettings: TsGroupBox;
    gbxBookkeeping: TsGroupBox;
    sLabel8: TsLabel;
    sLabel12: TsLabel;
    sLabel13: TsLabel;
    sLabel14: TsLabel;
    sLabel15: TsLabel;
    edSalesCode: TsEdit;
    edReceivableAccount: TsEdit;
    edPreInvoiceNumber: TsEdit;
    edSuccInvoiceNumber: TsEdit;
    edCurrency: TsEdit;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    sLabel7: TsLabel;
    cbxSystemSelection: TsComboBox;
    cbxActive: TsCheckBox;
    __edServiceUrl: TsEdit;
    edUsername: TsEdit;
    edPassword: TsEdit;
    edOrg: TsEdit;
    edOffice: TsEdit;
    edCompany: TsEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tabsMappingsChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tvListExternalCodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure HandleChange(Sender: TObject);
    procedure cbxActiveClick(Sender: TObject);
    procedure cbxSystemSelectionCloseUp(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
    procedure edtSearchRightButtonClick(Sender: TObject);
    procedure tvPayGroupsBalanceAccountPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tvPayGroupsCashBookPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure memPayGroupsBeforePost(DataSet: TDataSet);
    procedure memVatsBeforePost(DataSet: TDataSet);
    procedure memItemsBeforePost(DataSet: TDataSet);
    procedure memCustomersBeforePost(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure pgMainChange(Sender: TObject);
  private
    FinanceConnectService : TFinanceConnectService;
    procedure PrepareTabs;
    procedure LoadSet(rSet: TRoomerDataSet; KeyPairType : TKeyPairType; mem: TdxMemData; CodeField, NameField, MappedField : String);
    function CurrentTableView: TcxGridDBTableView;
    procedure ClearAllTableViewFilters;
    procedure ReStartDataPreparation;
    function CheckEnableSaveButton: Boolean;
    procedure NewTypeSelection;
    { Private declarations }
  protected
    procedure DoUpdateControls; override;
    procedure DoLoadData; override;
  public
    { Public declarations }
    InitialPage : TFinanceConnectPageIndex;
    InitialWorkingTab : TFinanceConnectPageIndex;
  end;

const PAGE_CONFIG = 0;
      PAGE_MAPPING = 1;

      TAB_CUSTOMERS = 0;
      TAB_ITEMS = 1;
      TAB_VATS = 2;
      TAB_PAYGROUPS = 3;

procedure ManageFinanceConnect(page : TFinanceConnectPageIndex = PAGE_CONFIG; workingTab : TFinanceConnectPageIndex = TAB_CUSTOMERS);

implementation

{$R *.dfm}

uses uAppGlobal,
     uFrmKeyPairSelector,
     uMain,
     PrjConst
    ;

procedure ManageFinanceConnect(page : TFinanceConnectPageIndex = PAGE_CONFIG; workingTab : TFinanceConnectPageIndex = TAB_CUSTOMERS);
var _FrmFinanceConnect : TFrmFinanceConnect;
begin
  _FrmFinanceConnect := TFrmFinanceConnect.Create(nil);
  try
    _FrmFinanceConnect.InitialPage := page;
    _FrmFinanceConnect.InitialWorkingTab := workingTab;
    _FrmFinanceConnect.ShowModal;
  finally
    FreeAndNil(_FrmFinanceConnect);
  end;
end;

procedure TFrmFinanceConnect.cbxActiveClick(Sender: TObject);
begin
  UpdateControls;
end;

procedure TFrmFinanceConnect.cbxSystemSelectionCloseUp(Sender: TObject);
begin
  NewTypeSelection;
  UpdateControls;
end;

procedure TFrmFinanceConnect.NewTypeSelection;
begin
  if __edServiceUrl.Text='' then
    if cbxSystemSelection.ItemIndex > 0 then
      if SystemsLookupList[cbxSystemSelection.ItemIndex - 1].Value = 'TWINFIELD' then
      begin
        __edServiceUrl.Text := '{cluster}/webservices/';
        __edServiceUrl.ReadOnly := True;
      end;
end;

function TFrmFinanceConnect.CheckEnableSaveButton : Boolean;
begin
  result := (cbxSystemSelection.ItemIndex > 0) AND
    (Length(__edServiceUrl.Text) > 5) AND
    (Length(edUsername.Text) > 0) AND
    (Length(edPassword.Text) > 0) AND
    (Length(edOrg.Text) > 0) AND
    (Length(edOffice.Text) > 0) AND
//    (Length(edCompany.Text) > 0) AND
    (Length(edSalesCode.Text) > 0) AND
//    (Length(edCashCode.Text) > 0) AND
    (Length(edCurrency.Text) > 0) AND
//    (Length(edCashAccount.Text) > 0) AND
    (Length(edReceivableAccount.Text) > 0);
//    (Length(edPreInvoiceNumber.Text) > 0) AND
//    (Length(edSuccInvoiceNumber.Text) > 0);
end;

procedure TFrmFinanceConnect.HandleChange(Sender: TObject);
begin
  UpdateControls;
end;

procedure TFrmFinanceConnect.edtSearchChange(Sender: TObject);
var currentView : TcxGridDBTableView;
    i : Integer;
begin
  edtSearch.RightButton.Visible := edtSearch.Text <> '';
  currentView := CurrentTableView;

  currentView.DataController.Filter.Active := False;
  currentView.DataController.Filter.Root.Clear;
  currentView.DataController.Filter.Options := [fcoCaseInsensitive];
  currentView.DataController.Filter.Root.BoolOperatorKind := fboOr;
  for i := 0 to currentView.ColumnCount - 1 do
    if (currentView.Columns[i].DataBinding.ValueType = 'String') OR
       (currentView.Columns[i].DataBinding.ValueType = 'Integer') then
      currentView.DataController.Filter.Root.AddItem(currentView.Columns[i], foLike, '%'+edtSearch.Text+'%', '%'+edtSearch.Text+'%');
  currentView.DataController.Filter.Active := True;
end;

procedure TFrmFinanceConnect.edtSearchRightButtonClick(Sender: TObject);
begin
  edtSearch.Text := '';
  CurrentTableView.DataController.Filter.Root.Clear;
  CurrentTableView.DataController.Filter.Active := false;
end;

function TFrmFinanceConnect.CurrentTableView : TcxGridDBTableView;
begin
  result := tvCustomers;
  case tabsMappings.TabIndex of
    TAB_CUSTOMERS : result := tvCustomers;
    TAB_ITEMS     : result := tvItems;
    TAB_VATS      : result := tvVats;
    TAB_PAYGROUPS : result := tvPayGroups;
  end;
end;

procedure TFrmFinanceConnect.DoUpdateControls;
begin
  inherited;
  btnOK.Enabled := CheckEnableSaveButton;
end;

procedure TFrmFinanceConnect.ClearAllTableViewFilters;
begin
  edtSearch.Text := '';

  tvCustomers.DataController.Filter.Root.Clear;
  tvItems.DataController.Filter.Root.Clear;
  tvVats.DataController.Filter.Root.Clear;

  tvCustomers.DataController.Filter.Active := false;
  tvItems.DataController.Filter.Active := false;
  tvVats.DataController.Filter.Active := false;
end;

procedure TFrmFinanceConnect.FormCreate(Sender: TObject);
begin
  inherited;
  pgMain.ActivePageIndex := 0;
end;

procedure TFrmFinanceConnect.FormDestroy(Sender: TObject);
begin
  inherited;
  FinanceConnectService.Free;
end;

procedure TFrmFinanceConnect.FormShow(Sender: TObject);
begin
  inherited;
  ReStartDataPreparation;
end;

procedure TFrmFinanceConnect.ReStartDataPreparation;
begin
  inherited;
  FinanceConnectService := TFinanceConnectService.Create;
  FinanceConnectService.PrepareForMapping;

  PrepareTabs;
end;

procedure TFrmFinanceConnect.tabsMappingsChange(Sender: TObject);
begin
  pnl0.Visible := tabsMappings.TabIndex = TAB_CUSTOMERS;
  pnl1.Visible := tabsMappings.TabIndex = TAB_ITEMS;
  pnl2.Visible := tabsMappings.TabIndex = TAB_VATS;
  pnl3.Visible := tabsMappings.TabIndex = TAB_PAYGROUPS;
  ClearAllTableViewFilters;
end;

procedure TFrmFinanceConnect.tvListExternalCodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  keyValue : TKeyAndValue;
  financeLookupList : TKeyPairList;
  memTable : TdxMemData;
  ExternalCode: TWideStringField;
  Caption : String;
  keyPairType: TKeyPairType;
begin
  //
  keyPairType := FinanceConnectService.keyPairTypeByIndex(tabsMappings.TabIndex);
  Caption := FinanceConnectService.MappingCaptionByIndex(KeyPairType);


  case tabsMappings.TabIndex of
    TAB_CUSTOMERS : begin
                      financeLookupList := CustomersLookupList;
                      memTable := memCustomers;
                      ExternalCode := memCustomersExternalCode;
                    end;
    TAB_ITEMS     : begin
                      financeLookupList := ItemsLookupList;
                      memTable := memItems;
                      ExternalCode := memItemsExternalCode;
                    end;
    TAB_VATS      : begin
                      financeLookupList := VatsLookupList;
                      memTable := memVats;
                      ExternalCode := memVatsExternalCode;
                    end;
  else
    Exit;
  end;

  keyValue := selectFromKeyValuePairs(Caption, ExternalCode.AsString, financeLookupList);
  if Assigned(keyValue) then
  begin
    memTable.Edit;
    try
      ExternalCode.AsString := keyValue.Key;
      memTable.Post;
    except
      memTable.Cancel;
      raise;
    end;
  end;
end;

procedure TFrmFinanceConnect.tvPayGroupsBalanceAccountPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  keyValue : TKeyAndValue;
  financeLookupList : TKeyPairList;
  memTable : TdxMemData;
  RoomerCode: String;
  ExternalCode: String;
  Caption : String;
  keyPairType: TKeyPairType;
begin
  //
  keyPairType := FinanceConnectService.keyPairTypeByIndex(tabsMappings.TabIndex);
  Caption := FinanceConnectService.MappingCaptionByIndex(KeyPairType);

  memTable := memPayGroups;

  financeLookupList := PayGroupsBalanceAccountLookupList;
  ExternalCode := memPayGroupsBalanceAccount.AsString;
  RoomerCode := 'BAL_' + memPayGroupsCode.AsString;

  keyValue := selectFromKeyValuePairs(Caption, ExternalCode, financeLookupList);
  if Assigned(keyValue) then
  begin
    memTable.Edit;
    try
      memPayGroupsBalanceAccount.AsString := keyValue.Key;
      memTable.Post;
    except
      memTable.Cancel;
      raise;
    end;
  end;
end;

procedure TFrmFinanceConnect.tvPayGroupsCashBookPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  keyValue : TKeyAndValue;
  financeLookupList : TKeyPairList;
  memTable : TdxMemData;
  RoomerCode: String;
  ExternalCode: String;
  Caption : String;
  keyPairType: TKeyPairType;
begin
  //
  keyPairType := FinanceConnectService.keyPairTypeByIndex(tabsMappings.TabIndex);
  Caption := FinanceConnectService.MappingCaptionByIndex(KeyPairType);

  memTable := memPayGroups;

  financeLookupList := PayGroupsCashBookLookupList;
  ExternalCode := memPayGroupsCashBook.AsString;
  RoomerCode := 'BOOK_' + memPayGroupsCode.AsString;

  keyValue := selectFromKeyValuePairs(Caption, ExternalCode, financeLookupList);
  if Assigned(keyValue) then
  begin
    memTable.Edit;
    try
      memPayGroupsCashBook.AsString := keyValue.Key;
      memTable.Post;
    except
      memTable.Cancel;
      raise;
    end;
  end;
end;


procedure TFrmFinanceConnect.DoLoadData;
var
  KeyAndValue : TKeyAndValue;
  i, index : Integer;
begin
 //
  memCustomers.BeforePost := nil;
  LoadSet(glb.CustomersSet, FKP_CUSTOMERS, memCustomers, 'Customer', 'Surname', 'PID');
  memCustomers.BeforePost := memCustomersBeforePost;

  memItems.BeforePost := nil;
  LoadSet(glb.Items, FKP_PRODUCTS, memItems, 'Item', 'Description', 'BookKeepCode');
  memItems.BeforePost := memItemsBeforePost;

  memVats.BeforePost := nil;
  LoadSet(glb.VAT, FKP_VAT, memVats, 'VATCode', 'Description', 'BookKeepCode');
  memVats.BeforePost := memVatsBeforePost;

  memPayGroups.BeforePost := nil;
  LoadSet(glb.PaygroupsSet, FKP_PAYGROUPS, memPayGroups, 'PayGroup', 'Description', 'BalanceAccount');
  memPayGroups.BeforePost := memPayGroupsBeforePost;

  index := 0;
  cbxSystemSelection.Items.Clear;
  cbxSystemSelection.Items.Add('<None>');
  for KeyAndValue IN SystemsLookupList do
  begin
    i := cbxSystemSelection.Items.Add(format('%s (%s)', [KeyAndValue.Value, KeyAndValue.Key]));
    if KeyAndValue.Key = ActiveFinanceConnectSystemCode then index := i;
  end;
  cbxSystemSelection.ItemIndex := index;
end;

procedure TFrmFinanceConnect.LoadSet(rSet : TRoomerDataSet; KeyPairType : TKeyPairType; mem : TdxMemData; CodeField, NameField, MappedField : String);
var
  ExternalCode : String;
begin
 //
  if ActiveFinanceConnectSystemCode = '' then exit;

  mem.DisableControls;
  try
    mem.Close;
    mem.Open;
    rSet.First;
    while Not rSet.Eof do
    begin
      if rSet['Active'] then
      begin
        mem.Insert;
        mem['Code'] := rSet[CodeField];
        mem['Name'] := rSet[NameField];

        if KeyPairType = FKP_PAYGROUPS then
        begin
          if NOT MappingsLookupMap.TryGetValue(format('%s_%s', [MAPPING_ENTITIES[KeyPairType], 'BAL_' + rSet.FieldByName(CodeField).AsString]), ExternalCode) then
            ExternalCode := '';
          mem['BalanceAccount'] := ExternalCode;
          if NOT MappingsLookupMap.TryGetValue(format('%s_%s', [MAPPING_ENTITIES[KeyPairType], 'BOOK_' + rSet.FieldByName(CodeField).AsString]), ExternalCode) then
            ExternalCode := '';
          mem['CashBook'] := ExternalCode;
        end else
        begin
          if NOT MappingsLookupMap.TryGetValue(format('%s_%s', [MAPPING_ENTITIES[KeyPairType], rSet.FieldByName(CodeField).AsString]), ExternalCode) then
            ExternalCode := '';
          mem['ExternalCode'] := ExternalCode;
        end;
        mem.Post;
      end;
      rSet.Next;
    end;
  finally
    mem.EnableControls;
  end;
end;

procedure TFrmFinanceConnect.memCustomersBeforePost(DataSet: TDataSet);
var RoomerCode : String;
    keyPairType: TKeyPairType;
    NewValue : String;
begin
  keyPairType := FinanceConnectService.keyPairTypeByIndex(tabsMappings.TabIndex);
  RoomerCode := memCustomersCode.AsString;
  NewValue := memCustomersExternalCode.AsString;
  FinanceConnectService.MapForFinanceConnect(keyPairType, RoomerCode, NewValue);
  MappingsLookupMap.AddOrSetValue(format('%s_%s', [MAPPING_ENTITIES[keyPairType], RoomerCode]), NewValue);
end;

procedure TFrmFinanceConnect.memItemsBeforePost(DataSet: TDataSet);
var RoomerCode : String;
    keyPairType: TKeyPairType;
    NewValue : String;
begin
  keyPairType := FinanceConnectService.keyPairTypeByIndex(tabsMappings.TabIndex);
  RoomerCode := memItemsCode.AsString;
  NewValue := memItemsExternalCode.AsString;
  FinanceConnectService.MapForFinanceConnect(keyPairType, RoomerCode, NewValue);
  MappingsLookupMap.AddOrSetValue(format('%s_%s', [MAPPING_ENTITIES[keyPairType], RoomerCode]), NewValue);
end;

procedure TFrmFinanceConnect.memPayGroupsBeforePost(DataSet: TDataSet);
var RoomerCode : String;
    keyPairType: TKeyPairType;
    NewValue : String;
begin
  keyPairType := FinanceConnectService.keyPairTypeByIndex(tabsMappings.TabIndex);
  if memPayGroupsBalanceAccount.OldValue <> memPayGroupsBalanceAccount.AsString then
  begin
    RoomerCode := 'BAL_' + memPayGroupsCode.AsString;
    NewValue := memPayGroupsBalanceAccount.AsString;
  end else
  begin
    RoomerCode := 'BOOK_' + memPayGroupsCode.AsString;
    NewValue := memPayGroupsCashBook.AsString;
  end;
  FinanceConnectService.MapForFinanceConnect(keyPairType, RoomerCode, NewValue);
  MappingsLookupMap.AddOrSetValue(format('%s_%s', [MAPPING_ENTITIES[keyPairType], RoomerCode]), NewValue);
end;

procedure TFrmFinanceConnect.memVatsBeforePost(DataSet: TDataSet);
var RoomerCode : String;
    keyPairType: TKeyPairType;
    NewValue : String;
begin
  keyPairType := FinanceConnectService.keyPairTypeByIndex(tabsMappings.TabIndex);
  RoomerCode := memVatsCode.AsString;
  NewValue := memVatsExternalCode.AsString;
  FinanceConnectService.MapForFinanceConnect(keyPairType, RoomerCode, NewValue);
  MappingsLookupMap.AddOrSetValue(format('%s_%s', [MAPPING_ENTITIES[keyPairType], RoomerCode]), NewValue);
end;

procedure TFrmFinanceConnect.pgMainChange(Sender: TObject);
begin
  inherited;
  case pgMain.ActivePageIndex of
    0:  DialogButtons := mbOkCancel;
    1:  DialogButtons := [mbClose];
  end;
end;

procedure TFrmFinanceConnect.PrepareTabs;
begin
 //
  pnl0.Align := alClient;
  pnl1.Align := alClient;
  pnl2.Align := alClient;
  pnl3.Align := alClient;

  pnl0.Visible := False;
  pnl1.Visible := False;
  pnl2.Visible := False;
  pnl3.Visible := False;

  with FinanceConnectService.FinanceConnectConfiguration do
  begin
    cbxActive.Checked := systemActive;
    __edServiceUrl.Text := serviceUri;
    edUsername.Text := username;
    edPassword.Text := password;
    edOrg.Text := organizationId;
    edOffice.Text := officeCode;
    edCompany.Text := companyGuid;
    edSalesCode.Text := invoiceCode;
    edReceivableAccount.Text := receivableBalanceAccount;
    edPreInvoiceNumber.Text := preceedingInvoiceNumber;
    edSuccInvoiceNumber.Text := succeedingInvoiceNumber;
    edCurrency.Text := usedCurrency;
  end;

  pgMain.ActivePageIndex := InitialPage;
  tabsMappings.TabIndex := InitialWorkingTab;
  tabsMappingsChange(tabsMappings);

end;

procedure TFrmFinanceConnect.btnOKClick(Sender: TObject);
var FinanceConnectSettings : TFinanceConnectSettings;
    KeyAndValue : TKeyAndValue;
begin
  inherited;
  FinanceConnectSettings := FinanceConnectService.FinanceConnectConfiguration;
  with FinanceConnectSettings do
  begin
    systemActive := cbxActive.Checked;

    KeyAndValue := SystemsLookupList[cbxSystemSelection.ItemIndex - 1];
    systemCode := KeyAndValue.Key;

    hotelId := d.roomerMainDataSet.hotelId;
    serviceUri := __edServiceUrl.Text;
    username := edUsername.Text;
    password := edPassword.Text;
    organizationId := edOrg.Text;
    officeCode := edOffice.Text;
    companyGuid := edCompany.Text;
    invoiceCode := edSalesCode.Text;
    usedCurrency := edCurrency.Text;
    receivableBalanceAccount := edReceivableAccount.Text;
    preceedingInvoiceNumber := edPreInvoiceNumber.Text;
    succeedingInvoiceNumber := edSuccInvoiceNumber.Text;
  end;

  FinanceConnectService.SaveFinanceConnectSettings(FinanceConnectSettings);
  glb.PMSSettings.FinanceConnect.FinanceConnectSystemCode := FinanceConnectSettings.systemCode;

  ClearFinanceConnectServices;
  ReStartDataPreparation;

  if ActiveFinanceConnectSystemCode <> '' then
  begin
    frmMain.btnFinanceConnectManager.Caption := FinanceConnectService.SystemName;
  end else
    frmMain.btnFinanceConnectManager.Caption := GetTranslatedText('FinanceConnect_TabName');

end;

end.
