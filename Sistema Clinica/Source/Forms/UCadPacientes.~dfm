object FrmPacientes: TFrmPacientes
  Left = 576
  Top = 295
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 470
  ClientWidth = 841
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
    Left = 16
    Top = 8
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 20
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 88
    Width = 32
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 16
    Top = 128
    Width = 49
    Height = 13
    Caption = 'CELULAR'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 16
    Top = 168
    Width = 94
    Height = 13
    Caption = 'DATA_CADASTRO'
    FocusControl = DBEdit5
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 24
    Width = 134
    Height = 21
    DataField = 'ID'
    DataSource = DmMain.DSPaciente
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 64
    Width = 186
    Height = 21
    DataField = 'CPF'
    DataSource = DmMain.DSPaciente
    MaxLength = 14
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 104
    Width = 300
    Height = 21
    DataField = 'NOME'
    DataSource = DmMain.DSPaciente
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 144
    Width = 212
    Height = 21
    DataField = 'CELULAR'
    DataSource = DmMain.DSPaciente
    MaxLength = 15
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 16
    Top = 184
    Width = 134
    Height = 21
    DataField = 'DATA_CADASTRO'
    DataSource = DmMain.DSPaciente
    ReadOnly = True
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 272
    Width = 809
    Height = 185
    DataSource = DmMain.DSPaciente
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 279
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELULAR'
        Width = 187
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_CADASTRO'
        Width = 122
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 216
    Width = 810
    Height = 49
    DataSource = DmMain.DSPaciente
    TabOrder = 6
  end
end
