unit UDmMain;

interface

uses
  SysUtils, Classes, DB, IBDatabase, IBCustomDataSet;

type
  TDmMain = class(TDataModule)
    IBDatabaseClinica: TIBDatabase;
    IBDSetPaciente: TIBDataSet;
    IBTransactionPaciente: TIBTransaction;
    DSPaciente: TDataSource;
    IBDSetAgendamento: TIBDataSet;
    IBTransactionAgendamento: TIBTransaction;
    DSAgendamento: TDataSource;
    IBDSetPacienteID: TIntegerField;
    IBDSetPacienteCPF: TIBStringField;
    IBDSetPacienteNOME: TIBStringField;
    IBDSetPacienteCELULAR: TIBStringField;
    IBDSetPacienteDATA_CADASTRO: TDateField;
    IBDSetAgendamentoID: TIntegerField;
    IBDSetAgendamentoID_PACIENTE: TIntegerField;
    IBDSetAgendamentoDATA: TDateField;
    IBDSetAgendamentoHORA: TIBStringField;
    IBDSetAgendamentoESPECIALIDADE: TIBStringField;
    IBDSetAgendamentoMEDICO: TIBStringField;
    procedure IBDSetPacienteAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmMain: TDmMain;

implementation

{$R *.dfm}

procedure TDmMain.IBDSetPacienteAfterInsert(DataSet: TDataSet);
begin
  IBDSetPacienteDATA_CADASTRO.Value := Date();
end;

end.
