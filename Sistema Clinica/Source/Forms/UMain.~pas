unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Menus;

type
  TFrmMain = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Cadastros1: TMenuItem;
    CadastrodePacientes1: TMenuItem;
    Cadastrodeagendamentos1: TMenuItem;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Sair1Click(Sender: TObject);
    procedure CadastrodePacientes1Click(Sender: TObject);
    procedure Cadastrodeagendamentos1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses UCadPacientes, UCadAgendamentos;

{$R *.dfm}

procedure TFrmMain.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmMain.CadastrodePacientes1Click(Sender: TObject);
begin
    FrmPacientes.ShowModal;
end;

procedure TFrmMain.Cadastrodeagendamentos1Click(Sender: TObject);
begin
    FrmAgendamentos.ShowModal;
end;

procedure TFrmMain.BitBtn1Click(Sender: TObject);
begin
    FrmPacientes.ShowModal;
end;

procedure TFrmMain.BitBtn2Click(Sender: TObject);
begin
    FrmAgendamentos.ShowModal;
end;

end.
