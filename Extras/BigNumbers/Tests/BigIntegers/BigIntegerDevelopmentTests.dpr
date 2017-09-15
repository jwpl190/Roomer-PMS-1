program BigIntegerDevelopmentTests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

// FastMM4 can slow down testing a lot.
{ $DEFINE USEFASTMM4}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
{$IFDEF USEFASTMM4}
  FastMM4,
{$ENDIF }
  DUnitTestRunner,
  Velthuis.Sizes in '..\..\Source\Velthuis.Sizes.pas',
  Velthuis.RandomNumbers in '..\..\Source\Velthuis.RandomNumbers.pas',
  Velthuis.Loggers in '..\..\Source\Velthuis.Loggers.pas',
  Velthuis.Numerics in '..\..\Source\Velthuis.Numerics.pas',
  Velthuis.ExactFloatStrings in '..\..\Source\Velthuis.ExactFloatStrings.pas',
  Velthuis.FloatUtils in '..\..\Source\Velthuis.FloatUtils.pas',
  Velthuis.BigDecimals in '..\..\Source\Velthuis.BigDecimals.pas',
  TestBigIntegers in 'TestBigIntegers.pas',
  Velthuis.BigRationals in '..\..\Source\Velthuis.BigRationals.pas',
  Velthuis.BigIntegers.Primes in '..\..\Source\Velthuis.BigIntegers.Primes.pas',
  Velthuis.BigIntegers in '..\..\Source\Velthuis.BigIntegers.pas';

{$R *.RES}

begin
  ReportMemoryLeaksOnShutdown := True;
  DoDebug := False;
  DUnitTestRunner.RunRegisteredTests;
end.


