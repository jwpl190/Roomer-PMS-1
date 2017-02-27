program TeeChartReportLink;

uses
  Forms,
  TeeChartRLMain in 'TeeChartRLMain.pas' {TeeChartRLMainForm},
  DemoBasicMain in '..\Common\DemoBasicMain.pas' {DemoBasicMainForm},
  AboutDemoForm in '..\Common\AboutDemoForm.pas' {formAboutDemo};

  {$R *.res}
  {$R WindowsXP.res}

begin
  Application.Initialize;
  Application.Title := 'Report Links Demo - TeeChart & DBTeeChart';
  Application.CreateForm(TTeeChartRLMainForm, TeeChartRLMainForm);
  Application.Run;
end.
