program ProjetoClinica;

uses
  Forms,
  UMain in 'Source\Forms\UMain.pas' {FrmMain},
  UCadPacientes in 'Source\Forms\UCadPacientes.pas' {FrmPacientes},
  UCadAgendamentos in 'Source\Forms\UCadAgendamentos.pas' {FrmAgendamentos},
  UDmMain in 'Source\DM\UDmMain.pas' {DmMain: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmPacientes, FrmPacientes);
  Application.CreateForm(TFrmAgendamentos, FrmAgendamentos);
  Application.CreateForm(TDmMain, DmMain);
  Application.Run;
end.
