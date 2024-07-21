object FrmAgendamentos: TFrmAgendamentos
  Left = 500
  Top = 347
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Agendamentos'
  ClientHeight = 472
  ClientWidth = 845
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 24
    Top = 104
    Width = 29
    Height = 13
    Caption = 'DATA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 24
    Top = 144
    Width = 31
    Height = 13
    Caption = 'HORA'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 24
    Top = 184
    Width = 84
    Height = 13
    Caption = 'ESPECIALIDADE'
  end
  object Label6: TLabel
    Left = 24
    Top = 224
    Width = 42
    Height = 13
    Caption = 'MEDICO'
    FocusControl = DBEdit6
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 107
    Height = 13
    Caption = 'NOME DO PACIENTE'
    FocusControl = DBEdit1
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 32
    Width = 134
    Height = 21
    DataField = 'ID'
    DataSource = DmMain.DSAgendamento
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 120
    Width = 134
    Height = 21
    DataField = 'DATA'
    DataSource = DmMain.DSAgendamento
    MaxLength = 10
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 160
    Width = 82
    Height = 21
    DataField = 'HORA'
    DataSource = DmMain.DSAgendamento
    MaxLength = 5
    TabOrder = 2
  end
  object DBEdit6: TDBEdit
    Left = 24
    Top = 240
    Width = 394
    Height = 21
    DataField = 'MEDICO'
    DataSource = DmMain.DSAgendamento
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 320
    Width = 809
    Height = 145
    DataSource = DmMain.DSAgendamento
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 272
    Width = 800
    Height = 41
    DataSource = DmMain.DSAgendamento
    TabOrder = 5
  end
  object DBComboBox1: TDBComboBox
    Left = 24
    Top = 200
    Width = 217
    Height = 21
    DataField = 'ESPECIALIDADE'
    DataSource = DmMain.DSAgendamento
    ItemHeight = 13
    Items.Strings = (
      'Cardiologista'
      'Nutricionista'
      'Ortopedista'
      'Fisioterapia')
    TabOrder = 6
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 24
    Top = 80
    Width = 305
    Height = 21
    DataField = 'ID_PACIENTE'
    DataSource = DmMain.DSAgendamento
    KeyField = 'ID'
    ListField = 'NOME'
    ListSource = DmMain.DSPaciente
    TabOrder = 7
  end
end
