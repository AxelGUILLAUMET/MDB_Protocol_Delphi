program MDB_Delphi_Demo;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {FMainForm},
  HWSetting in 'HWSetting.pas' {FHWSetting},
  AboutForm in 'AboutForm.pas' {FAboutForm},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Demostrador bus MDB con Delphi XE';
  Application.CreateForm(TFMainForm, FMainForm);
  Application.CreateForm(TFHWSetting, FHWSetting);
  Application.CreateForm(TFAboutForm, FAboutForm);
  Application.Run;
end.
