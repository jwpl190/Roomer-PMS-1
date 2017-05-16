program Roomer;

{$I Roomer.inc}

// first lines of uses clause should read as follows:
//  {$ifdef UseFastMM}
//  FastMM4 in 'FastMM\FastMM4.pas',
//  FastMM4Messages in 'FastMM\FastMM4Messages.pas',
//  {$endif}



uses
  {$ifdef UseFastMM}
  FastMM4 in 'FastMM\FastMM4.pas',
  {$endif}
  Forms,
  SysUtils,
  Windows,
  Messages,
  uMain in 'uMain.pas' {frmMain},
  uReservationObjects in 'uReservationObjects.pas',
  uAppGlobal in 'uAppGlobal.pas',
  uPriceOBJ in 'uPriceOBJ.pas',
  uProvideARoom2 in 'uProvideARoom2.pas' {frmProvideARoom2},
  uInvoice in 'Invoice\uInvoice.pas' {frmInvoice},
  uReservationProfile in 'uReservationProfile.pas' {frmReservationProfile},
  uInvoicePayment in 'uInvoicePayment.pas' {frmInvoicePayment},
  uControlData in 'uControlData.pas' {frmControlData},
  uAvailability in 'uAvailability.pas',
  uFinishedInvoices2 in 'uFinishedInvoices2.pas' {frmFinishedInvoices2},
  uCreditPrompt in 'uCreditPrompt.pas' {frmCreditPrompt},
  uInvoiceList in 'uInvoiceList.pas' {frmInvoiceList},
  uDReportData in 'uDReportData.pas' {DReportData: TDataModule},
  uD in 'uD.pas' {d: TDataModule},
  uG in 'uG.pas',
  uConverts in 'uConverts.pas' {frmConverts},
  ufrmSelLang in 'ufrmSelLang.pas' {frmSelLang},
  uMaidActions in 'uMaidActions.pas' {frmMaidActions},
  uMaidActionsEdit in 'uMaidActionsEdit.pas' {frmMaidActionsEdit},
  uInvoiceSummeryOBJ in 'uInvoiceSummeryOBJ.pas',
  uRoomDatesOBJ in 'uRoomDatesOBJ.pas',
  uRoomReservationOBJ in 'uRoomReservationOBJ.pas',
  uRoomDateProblem in 'uRoomDateProblem.pas' {frmRoomDateProblem},
  uResProblem in 'uResProblem.pas' {frmResProblem},
  uDayFinical in 'uDayFinical.pas' {frmDayFinical},
  uConvertGroups in 'uConvertGroups.pas' {frmConvertGroups},
  uInvoiceList2 in 'uInvoiceList2.pas' {frmInvoiceList2},
  uDayNotes in 'uDayNotes.pas' {frmDayNotes},
  uChangeRRdates in 'uChangeRRdates.pas' {frmChangeRRdates},
  uChangeRate in 'uChangeRate.pas' {frmChangeRate},
  uOpenInvoicesNew in 'uOpenInvoicesNew.pas' {frmOpenInvoicesNew},
  uResMemos in 'uResMemos.pas' {frmResMemos},
  uHomeDate in 'uHomeDate.pas' {frmHomedate},
  uGoToRoomAndDate in 'uGoToRoomAndDate.pas' {frmGoToRoomandDate},
  uHiddenInfo in 'uHiddenInfo.pas' {frmHiddenInfo},
  objPosSale in 'objPosSale.pas',
  uDownPayment in 'uDownPayment.pas' {frmDownPayment},
  uLodgingTaxReport2 in 'uLodgingTaxReport2.pas' {frmLodgingTaxReport2},
  uCancelReservation3 in 'uCancelReservation3.pas' {frmCancelReservation3},
  uCancelReservation2 in 'uCancelReservation2.pas' {frmCancelReservation2},
  uAddAccommodation in 'uAddAccommodation.pas' {frmAddAccommodation},
  objRoomList2 in 'objRoomList2.pas',
  objDayFreeRooms in 'objDayFreeRooms.pas',
  uCountries in 'uCountries.pas' {frmCountries},
  uPayGroups in 'uPayGroups.pas' {frmPayGroups},
  uPriceCodes in 'uPriceCodes.pas' {frmPriceCodes},
  uGuestProfile2 in 'uGuestProfile2.pas' {frmGuestProfile2},
  uPayTypes in 'uPayTypes.pas' {frmPayTypes},
  uCountryGroups in 'uCountryGroups.pas' {frmCountryGroups},
  Vcl.Themes,
  Vcl.Styles,
  uChannelPlanCodes in 'uChannelPlanCodes.pas' {frmChannelPlanCodes},
  objRoomTypeRoomCount in 'objRoomTypeRoomCount.pas',
  uRebuildReservationStats in 'uRebuildReservationStats.pas' {frmRebuildReservationStats},
  uMakeReservationQuick in 'uMakeReservationQuick.pas' {frmMakeReservationQuick},
  objNewReservation in 'objNewReservation.pas',
  objHomeCustomer in 'objHomeCustomer.pas',
  objRoomRates in 'objRoomRates.pas',
  uSplashRoomer in 'uSplashRoomer.pas' {frmRoomerSplash},
  RoomerLoginForm in 'RoomerLoginForm.pas' {frmRoomerLoginForm},
  uAboutRoomer in 'uAboutRoomer.pas' {frmAboutRoomer},
  uChannelAvailabilityManager in 'uChannelAvailabilityManager.pas' {frmChannelAvailabilityManager},
  ueditRoomPrice in 'ueditRoomPrice.pas' {frmEditRoomPrice},
  uRoomCleanMaintenanceStatus in 'uRoomCleanMaintenanceStatus.pas' {frmRoomCleanMaintenanceStatus},
  uRunWithElevatedOption in 'uRunWithElevatedOption.pas',
  uRates in 'uRates.pas' {frmRates},
  uSeasons2 in 'uSeasons2.pas' {frmSeasons2},
  uRoomRates in 'uRoomRates.pas' {frmRoomRates},
  uRoomTypesGroups2 in 'uRoomTypesGroups2.pas' {frmRoomTypesGroups2},
  uRoomTypes2 in 'uRoomTypes2.pas' {frmRoomTypes2},
  uRooms3 in 'uRooms3.pas' {frmRooms3},
  uCustomers2 in 'uCustomers2.pas' {frmCustomers2},
  uStaffEdit2 in 'uStaffEdit2.pas' {frmStaffEdit2},
  uStaffMembers2 in 'uStaffMembers2.pas' {frmStaffMembers2},
  uCustomerEdit2 in 'uCustomerEdit2.pas' {frmCustomerEdit2},
  uChannels in 'uChannels.pas' {frmChannels},
  uStaffTypes2 in 'uStaffTypes2.pas' {frmStaffTypes2},
  uItems2 in 'uItems2.pas' {frmItems2},
  uItemTypes2 in 'uItemTypes2.pas' {frmItemTypes2},
  uFileSystemUtils in 'uFileSystemUtils.pas',
  uFileDependencyManager in 'uFileDependencyManager.pas',
  uLocations2 in 'uLocations2.pas' {frmLocations},
  uRegistryServices in 'uRegistryServices.pas',
  uUtils in 'RoomerUtils\uUtils.pas',
  uPersonContactType in 'uPersonContactType.pas' {frmPersonContactType},
  uChannelManager in 'uChannelManager.pas' {frmChannelManager},
  uCommunicationTest in 'uCommunicationTest.pas' {frmCommunicationTest},
  uHouseKeeping in 'uHouseKeeping.pas' {frmHouseKeeping},
  uRubbishCollectors in 'uRubbishCollectors.pas',
  uRptResStatsRooms in 'uRptResStatsRooms.pas' {frmRptResStatsRooms},
  uGuestSearch in 'uGuestSearch.pas' {frmGuestSearch},
  PrjConst in 'PrjConst.pas',
  uRptResStats in 'uRptResStats.pas' {frmRptResStats},
  uMultiSelection in 'uMultiSelection.pas' {frmMultiSelection},
  uVatCodes in 'uVatCodes.pas' {frmVatCodes},
  uNationalReport3 in 'uNationalReport3.pas' {frmNationalReport3},
  urptReservationsCust in 'urptReservationsCust.pas' {frmRptReservationsCust},
  uTestData in 'uTestData.pas' {frmTestData},
  uDImages in 'uDImages.pas' {DImages: TDataModule},
  uAllotmentToRes in 'uAllotmentToRes.pas' {frmAllotmentToRes},
  uColorSelector in 'uColorSelector.pas' {frmColorSelector},
  uFrmCntStatistics in 'uFrmCntStatistics.pas' {frmCntStatistics},
  uFrmCntToday in 'uFrmCntToday.pas' {frmCntToday},
  uFrmChannelTogglingRules in 'uFrmChannelTogglingRules.pas' {frmChannelTogglingRules},
  uFrmKeyPairSelector in 'uFrmKeyPairSelector.pas' {frmKeyPairSelector},
  uCurrencies in 'uCurrencies.pas' {frmCurrencies},
  uPersonviptypes in 'uPersonviptypes.pas' {frmPersonviptypes},
  uFrmDaysStatistics in 'uFrmDaysStatistics.pas' {frmDaysStatistics},
  performance in 'Roomer\XML\performance.pas',
  uRptTurnoverAndPayments2 in 'uRptTurnoverAndPayments2.pas' {frmRptTurnoverAndPayments2},
  uTaxes in 'uTaxes.pas' {frmTaxes},
  ufDownPayments in 'ufDownPayments.pas' {frmRptDownPayments},
  uAssignPayment in 'uAssignPayment.pas' {frmAssignPayment},
  uFrmResources in 'uFrmResources.pas' {FrmResources},
  uFrmMessagesTemplates in 'Embeddables\uFrmMessagesTemplates.pas' {FrmMessagesTemplates},
  uFrmNotepad in 'uFrmNotepad.pas' {FrmNotepad},
  uFrmGuestReviews in 'uFrmGuestReviews.pas' {Form6},
  uRptConfirms in 'uRptConfirms.pas' {frmrptConfirms},
  u2DMatrix in 'u2DMatrix.pas' {frm2DMatrix},
  uTaxCalc in 'uTaxCalc.pas',
  uRptResInvoices in 'uRptResInvoices.pas' {frmRptResInvoices},
  uRptManagment in 'uRptManagment.pas' {frmRptManagment},
  uRptCustInvoices in 'uRptCustInvoices.pas' {frmRptCustInvoices},
  uFrmRBEContainer in 'uFrmRBEContainer.pas' {FrmRBEContainer},
  uFrmRbePreferences in 'uFrmRbePreferences.pas' {frmRbePreferences},
  uRptTotallist in 'uRptTotallist.pas' {frmRptTotallist},
  uFrmRateQuery in 'uFrmRateQuery.pas' {FrmRateQuery},
  uChart in 'uChart.pas' {frmChart},
  uCustomerTypes2 in 'uCustomerTypes2.pas' {frmCustomerTypes2},
  uRptbViewer in 'uRptbViewer.pas' {frmRptbViewer},
  uFrmHandleBookKeepingException in 'uFrmHandleBookKeepingException.pas' {FrmHandleBookKeepingException},
  uFrmEmbeddedHtmlEditor in 'uFrmEmbeddedHtmlEditor.pas' {FrmEmbeddedHtmlEditor},
  uFrmChannelCopyFrom in 'uFrmChannelCopyFrom.pas' {FrmChannelCopyFrom},
  uRoomerExceptions in 'RoomerVCLs\Source\uRoomerExceptions.pas',
  uFrmBackupInvoice in 'uFrmBackupInvoice.pas' {FrmBackupInvoice},
  uPackages in 'uPackages.pas' {frmPackages},
  uPackageItems in 'uPackageItems.pas' {frmPackageItems},
  uFrmPostInvoices in 'uFrmPostInvoices.pas' {FrmPostInvoices},
  uRoomClassEdit in 'uRoomClassEdit.pas' {FrmRoomClassEdit},
  urptReservations in 'urptReservations.pas' {frmRptReservations},
  uRoomerMessageDialog in 'uRoomerMessageDialog.pas',
  uRptBreakfastGuests in 'uRptBreakfastGuests.pas' {frmRptBreakfastGuests},
  uGuestCheckInForm in 'uGuestCheckInForm.pas' {FrmGuestCheckInForm},
  uLostAndFound in 'uLostAndFound.pas' {frmLostAndFound},
  uRptGuests in 'uRptGuests.pas' {frmRptGuests},
  uRptNotes in 'uRptNotes.pas' {frmRptNotes},
  uReservationHintHolder in 'uReservationHintHolder.pas' {FrmReservationHintHolder},
  uEmbPeriodView in 'Embeddables\uEmbPeriodView.pas' {embPeriodView},
  uEmbOccupancyView in 'Embeddables\uEmbOccupancyView.pas' {embOccupancyView},
  uEmailingDialog in 'uEmailingDialog.pas' {FrmEmailingDialog},
  uMakeKreditInvoice in 'uMakeKreditInvoice.pas' {frmMakeKreditInvoice},
  uGuestPortfolioEdit in 'uGuestPortfolioEdit.pas' {frmGuestPortfolio},
  uGuestProfiles in 'uGuestProfiles.pas' {frmGuestProfiles},
  uBookKeepingCodes in 'uBookKeepingCodes.pas' {frmBookKeepingCodes},
  uRptBookkeeping in 'uRptBookkeeping.pas' {frmRptBookkeeping},
  uReservationEmailingDialog in 'uReservationEmailingDialog.pas' {FrmReservationEmailingDialog},
  uTemplateFiller in 'uTemplateFiller.pas',
  uFrmEditResourceProperties in 'Resources\uFrmEditResourceProperties.pas' {FrmEditResourceProperties},
  uFrmReservationCancellationDialog in 'uFrmReservationCancellationDialog.pas' {FrmReservationCancellationDialog},
  uGridUtils in 'uGridUtils.pas',
  uRptCashier in 'uRptCashier.pas' {frmRptCashier},
  uRoomerThreadedRequest in 'uRoomerThreadedRequest.pas',
  uGroupGuests in 'uGroupGuests.pas' {frmGroupGuests},
  uRoomerDefinitions in 'uRoomerDefinitions.pas',
  uPhoneRates in 'uPhoneRates.pas' {frmPhoneRates},
  uEditGuest in 'uEditGuest.pas' {frmEditGuest},
  uExcelProcessors in 'RoomerVCLs\Source\uExcelProcessors.pas',
  uEmailExcelSheet in 'uEmailExcelSheet.pas' {FrmEmailExcelSheet},
  uRptTurnoverAndPayments in 'uRptTurnoverAndPayments.pas' {frmRptTurnoverAndPayments},
  uActivityLogs in 'Activitylogs\uActivityLogs.pas',
  uInvoiceContainer in 'uInvoiceContainer.pas',
  XmlUtils in 'RoomerUtils\XmlUtils.pas',
  uFrmMergePortfolios in 'uFrmMergePortfolios.pas' {frmMergePortfolios},
  uStaffCommunication in 'StaffCommunication\uStaffCommunication.pas',
  uStaffComm in 'StaffCommunication\uStaffComm.pas' {frmStaffComm},
  uDynamicRates in 'uDynamicRates.pas',
  uFrmCheckOut in 'uFrmCheckOut.pas' {FrmCheckOut},
  uFrmStaffNote in 'StaffCommunication\uFrmStaffNote.pas' {FrmStaffNote},
  uFrmMessageViewer in 'uFrmMessageViewer.pas' {FrmMessageViewer},
  uInvoiceCompare in 'uInvoiceCompare.pas' {frmInvoiceCompare},
  uAlerts in 'Alerts\uAlerts.pas',
  uFrmAlertEdit in 'Alerts\uFrmAlertEdit.pas' {FrmAlertEdit},
  uFrmAlertDialog in 'Alerts\uFrmAlertDialog.pas' {FrmAlertDialog},
  uAlertEditPanel in 'Alerts\uAlertEditPanel.pas' {FrmAlertPanel},
  uFrmCustomerDepartmentEdit in 'Customer\uFrmCustomerDepartmentEdit.pas' {FrmCustomerDepartmentEdit},
  uCustomerDepartments in 'Customer\uCustomerDepartments.pas',
  uPersons in 'Persons\uPersons.pas',
  uRoomerContainerClasses in 'uRoomerContainerClasses.pas',
  uAvailabilityPerDay in 'AvailabilityManagement\uAvailabilityPerDay.pas',
  uInvoiceController in 'Invoice\uInvoiceController.pas',
  uOfflineReportGenerator in 'OfflineReports\uOfflineReportGenerator.pas',
  uOffLineReport in 'OfflineReports\uOffLineReport.pas',
  uHotelStatusOfflineReport in 'OfflineReports\uHotelStatusOfflineReport.pas',
  uOfflineReportDesign in 'OfflineReports\uOfflineReportDesign.pas' {BaseOfflineReportDesign: TDataModule},
  uHotelStatusOfflineReportDesign in 'OfflineReports\uHotelStatusOfflineReportDesign.pas',
  uOfflineReportGrid in 'OfflineReports\uOfflineReportGrid.pas' {frmOfflineReports},
  uResourceManagement in 'Resources\uResourceManagement.pas',
  uFrmSelectCloudConfiguration in 'Configs\uFrmSelectCloudConfiguration.pas' {FrmSelectCloudConfiguration},
  uDynamicPricing in 'Rates\uDynamicPricing.pas' {frmDynamicPricing},
  uViewDailyRates in 'uViewDailyRates.pas' {FrmViewDailyRates},
  uHotelArrivalsOfflineReport in 'OfflineReports\uHotelArrivalsOfflineReport.pas',
  uHotelArrivalsOfflineReportDesign in 'OfflineReports\uHotelArrivalsOfflineReportDesign.pas',
  uRptArrivals in 'uRptArrivals.pas' {frmArrivalsReport},
  ufrmReservationExtras in 'StockItems\ufrmReservationExtras.pas',
  uRptDepartures in 'uRptDepartures.pas' {frmDeparturesReport},
  uCurrencyHandler in 'uCurrencyHandler.pas',
  uFloatUtils in 'RoomerVCLs\Source\uFloatUtils.pas',
  uRptStockItems in 'uRptStockItems.pas' {frmRptStockItems},
  uOpenAPICaller in 'OpenAPI\uOpenAPICaller.pas',
  uDateTimeHelper in 'RoomerVCLs\Source\uDateTimeHelper.pas',
  uDayClosingTimes in 'uDayClosingTimes.pas',
  uDayClosingTimesAPICaller in 'OpenAPI\uDayClosingTimesAPICaller.pas',
  uRoomerHttpClient in 'RoomerVCLs\Source\uRoomerHttpClient.pas',
  uReservationStateDefinitions in 'Definitions\uReservationStateDefinitions.pas',
  ufrmPaymentReqRoomtypeGroup in 'ufrmPaymentReqRoomtypeGroup.pas' {frmPaymentReqRoomtypeGroup},
  uRptHouseKeeping in 'uRptHouseKeeping.pas',
  uReservationStateChangeHandler in 'uReservationStateChangeHandler.pas',
  uRoomerForm in 'RoomerForm\uRoomerForm.pas' {frmBaseRoomerForm},
  uBreakfastStateDefinitions in 'Definitions\uBreakfastStateDefinitions.pas',
  uAccountTypeDefinitions in 'Definitions\uAccountTypeDefinitions.pas',
  uFinancialReportsAPICaller in 'OpenAPI\uFinancialReportsAPICaller.pas',
  uRptDailyRevenues in 'Financials\uRptDailyRevenues.pas' {frmRptDailyRevenues},
  uCleaningNotes in 'uCleaningNotes.pas' {frmCleaningNotes},
  uCleaningNotesEdit in 'uCleaningNotesEdit.pas' {frmCleaningNotesEdit},
  uMandatoryFieldDefinitions in 'Definitions\uMandatoryFieldDefinitions.pas',
  uInvoiceEntities in 'Invoice\uInvoiceEntities.pas',
  uVatCalculator in 'VAT\uVatCalculator.pas',
  uPMSSettings in 'PMSSettings\uPMSSettings.pas',
  uTableEntityList in 'TableCache\uTableEntityList.pas',
  uMessageList in 'uMessageList.pas',
  uCleaningNotesDefinitions in 'Definitions\uCleaningNotesDefinitions.pas',
  uRoomerDialogForm in 'RoomerForm\uRoomerDialogForm.pas' {frmBaseRoomerDialogForm},
  uSQLUtils in 'RoomerUtils\uSQLUtils.pas',
  uStringUtils in 'RoomerVCLs\Source\uStringUtils.pas',
  uInvoiceDefinitions in 'Definitions\uInvoiceDefinitions.pas',
  uFraCountryPanel in 'Embeddables\uFraCountryPanel.pas' {fraCountryPanel: TFrame},
  ufrmRoomPrices in 'ufrmRoomPrices.pas' {frmRoomPrices},
  uRoomerConfirmationDialogs in 'uRoomerConfirmationDialogs.pas',
  uEmbDateStatistics in 'Embeddables\uEmbDateStatistics.pas' {frmEmbDateStatistics},
  uMasterRateDefaults in 'Rates\uMasterRateDefaults.pas' {frmMasterRateDefaults},
  uTopClassAvailabilityOrder in 'uTopClassAvailabilityOrder.pas' {FrmTopClassAvailabilityOrder},
  uCurrencyHandlersMap in 'uCurrencyHandlersMap.pas',
  uHotelServicesAPICaller in 'OpenAPI\uHotelServicesAPICaller.pas',
  uRoomerHotelServicesCommunicationModel_RequestsResponses in 'OpenAPI\schema\uRoomerHotelServicesCommunicationModel_RequestsResponses.pas',
  uRptUserActivity in 'ActivityLogs\uRptUserActivity.pas' {frmUserActivityReport},
  uCredentialsAPICaller in 'OpenAPI\uCredentialsAPICaller.pas',
  RoomerExceptionHandling in 'RoomerExceptionHandling.pas',
  uPMSSettingsAccessor in 'PMSSettings\uPMSSettingsAccessor.pas',
  _Glob in 'Data\_Glob.pas',
  hData in 'Data\hData.pas',
  uSqlDefinitions in 'Data\uSqlDefinitions.pas',
  uRoomerVersionInfo in 'RoomerUtils\uRoomerVersionInfo.pas',
  uFrmBusyMessage in 'Dialogs\uFrmBusyMessage.pas' {frmBusyMessage},
  uRoomerSchema in 'OpenAPI\schema\uRoomerSchema.pas',
  RoomerConfigurationItemsCommunicationModel_RequestsResponses in 'OpenAPI\schema\RoomerConfigurationItemsCommunicationModel_RequestsResponses.pas',
  uConfigurationItemsAPICaller in 'OpenAPI\uConfigurationItemsAPICaller.pas',
  uRoomerIDList in 'RoomerVCLs\Source\uRoomerIDList.pas',
  uEditFinanceExportProperties in 'uEditFinanceExportProperties.pas' {frmEditFinanceExportProperties},
  uResourceTypeDefinitions in 'Resources\uResourceTypeDefinitions.pas',
  uHotelServicesSettings in 'PMSSettings\uHotelServicesSettings.pas',
  uRoomerGridForm in 'RoomerForm\uRoomerGridForm.pas' {frmBaseRoomerGridForm},
  uStaffCommunicationDefinitions in 'Definitions\uStaffCommunicationDefinitions.pas',
  uRptReservationStatusPerDay in 'Reporting\uRptReservationStatusPerDay.pas' {FrmRptReservationStatusPerDay},
  uVersionManagement in 'VersionManagement\uVersionManagement.pas',
  uInvoiceRentPerDay in 'Invoice\uInvoiceRentPerDay.pas' {frmInvoiceRentPerDay},
  RoomerFinancialDataModel_ModelObjects in 'OpenAPI\schema\RoomerFinancialDataModel_ModelObjects.pas',
  uRoomerCanonicalDataModel_BaseTypes in 'OpenAPI\schema\uRoomerCanonicalDataModel_BaseTypes.pas',
  uRoomerCanonicalDataModel_SimpleTypes in 'OpenAPI\schema\uRoomerCanonicalDataModel_SimpleTypes.pas',
  uRoomerHotelServicesCommunicationModel_RunningTabs in 'OpenAPI\schema\uRoomerHotelServicesCommunicationModel_RunningTabs.pas',
  RoomerBookingCommunicationModel_RequestsResponses in 'OpenAPI\schema\RoomerBookingCommunicationModel_RequestsResponses.pas',
  uExceptionUtils in 'RoomerUtils\uExceptionUtils.pas',
  uBookingsRunningTabAPICaller in 'OpenAPI\uBookingsRunningTabAPICaller.pas',
  uRoomerLogger in 'Logging\uRoomerLogger.pas',
  uRoomerInstanceManagement in 'RoomerInstanceManagement\uRoomerInstanceManagement.pas';

{$R *.RES}

var
  RoomerExceptionHandler: TRoomerExceptionHandler;

begin
  SWindowClassName := 'TWIN86FC02AB-D85A-4529-B732-C3D890A0C422';
  if NOT InstanceAlreadyRunning then
  begin
    {$IFDEF rmMONITOR_LEAKAGE}
      ReportMemoryLeaksOnShutdown := DebugHook <> 0;
    {$ENDIF rmMONITOR_LEAKAGE}
    Application.MainformOnTaskbar := True;
    Application.Initialize;
    Application.Title := 'ROOMER - Next Generation Hotel Management System';

    RoomerExceptionHandler := TRoomerExceptionHandler.Create;
    try
      RoomerExceptionHandler.ExceptionsLoggingActive := true;
      Application.OnException := RoomerExceptionHandler.ExceptionHandler;

      // reduce number of times that TAction.OnUpdate events are called
      Application.ActionUpdateDelay := 10;

      Application.ShowHint := true;
      Application.HintHidePause := 15000;
      Application.HintPause := 500;

      TSplashFormManager.Show;

      Application.CreateForm(TD, D);
  D.ApplicationId := cOpenAPIApplicationID;

      Application.CreateForm(TDReportData, DReportData);
      TSplashFormManager.UpdateProgress('Loading forms...');

      Application.CreateForm(TDImages, DImages);
      Application.CreateForm(TfrmMain, frmMain);

      if D.roomerMainDataSet.IsConnectedToInternet then
      begin
        Application.CreateForm(TfrmDaysStatistics, frmDaysStatistics);
        Application.CreateForm(TfrmRateQuery, frmRateQuery);
        Application.CreateForm(TfrmHomedate, frmHomedate);
        Application.CreateForm(TfrmDayNotes, frmDayNotes);
        Application.CreateForm(TfrmGoToRoomandDate, frmGoToRoomandDate);
        Application.CreateForm(TFrmReservationHintHolder, FrmReservationHintHolder);
        Application.CreateForm(TembPeriodView, embPeriodView);
        Application.CreateForm(TembOccupancyView, embOccupancyView);
      end;

      Application.Run;
    finally
      Application.OnException := nil;
      RoomerExceptionHandler.Free;
    end;
  end;
end.

