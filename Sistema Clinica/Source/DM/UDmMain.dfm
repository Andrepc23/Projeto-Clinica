object DmMain: TDmMain
  OldCreateOrder = False
  Left = 876
  Top = 201
  Height = 450
  Width = 669
  object IBDatabaseClinica: TIBDatabase
    Connected = True
    DatabaseName = 'LOCALHOST:C:\Sistema Clinica\Source\DB\CLINICA.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 112
    Top = 32
  end
  object IBDSetPaciente: TIBDataSet
    Database = IBDatabaseClinica
    Transaction = IBTransactionPaciente
    AfterInsert = IBDSetPacienteAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PACIENTE'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into PACIENTE'
      '  (ID, CPF, NOME, CELULAR, DATA_CADASTRO)'
      'values'
      '  (:ID, :CPF, :NOME, :CELULAR, :DATA_CADASTRO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  CPF,'
      '  NOME,'
      '  CELULAR,'
      '  DATA_CADASTRO'
      'from PACIENTE '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from PACIENTE')
    ModifySQL.Strings = (
      'update PACIENTE'
      'set'
      '  ID = :ID,'
      '  CPF = :CPF,'
      '  NOME = :NOME,'
      '  CELULAR = :CELULAR,'
      '  DATA_CADASTRO = :DATA_CADASTRO'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_PACIENTE_ID'
    Active = True
    Left = 48
    Top = 152
    object IBDSetPacienteID: TIntegerField
      FieldName = 'ID'
      Origin = 'PACIENTE.ID'
      Required = True
    end
    object IBDSetPacienteCPF: TIBStringField
      FieldName = 'CPF'
      Origin = 'PACIENTE.CPF'
      Required = True
      EditMask = '###.###.###-##;1;_'
      Size = 14
    end
    object IBDSetPacienteNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'PACIENTE.NOME'
      Required = True
      Size = 80
    end
    object IBDSetPacienteCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = 'PACIENTE.CELULAR'
      Required = True
      EditMask = '(##) #####-####;1;_'
      Size = 16
    end
    object IBDSetPacienteDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = 'PACIENTE.DATA_CADASTRO'
      Required = True
    end
  end
  object IBTransactionPaciente: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabaseClinica
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 160
    Top = 152
  end
  object DSPaciente: TDataSource
    DataSet = IBDSetPaciente
    Left = 272
    Top = 152
  end
  object IBDSetAgendamento: TIBDataSet
    Database = IBDatabaseClinica
    Transaction = IBTransactionAgendamento
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from AGENDAMENTOS'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into AGENDAMENTOS'
      '  (ID, ID_PACIENTE, DATA, HORA, ESPECIALIDADE, MEDICO)'
      'values'
      '  (:ID, :ID_PACIENTE, :DATA, :HORA, :ESPECIALIDADE, :MEDICO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ID_PACIENTE,'
      '  DATA,'
      '  HORA,'
      '  ESPECIALIDADE,'
      '  MEDICO'
      'from AGENDAMENTOS '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from AGENDAMENTOS')
    ModifySQL.Strings = (
      'update AGENDAMENTOS'
      'set'
      '  ID = :ID,'
      '  ID_PACIENTE = :ID_PACIENTE,'
      '  DATA = :DATA,'
      '  HORA = :HORA,'
      '  ESPECIALIDADE = :ESPECIALIDADE,'
      '  MEDICO = :MEDICO'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_AGENDAMENTOS_ID'
    Active = True
    Left = 48
    Top = 248
    object IBDSetAgendamentoID: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID'
      Origin = 'AGENDAMENTOS.ID'
      Required = True
    end
    object IBDSetAgendamentoID_PACIENTE: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID_PACIENTE'
      Origin = 'AGENDAMENTOS.ID_PACIENTE'
      Required = True
    end
    object IBDSetAgendamentoDATA: TDateField
      DisplayWidth = 15
      FieldName = 'DATA'
      Origin = 'AGENDAMENTOS.DATA'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object IBDSetAgendamentoHORA: TIBStringField
      DisplayWidth = 18
      FieldName = 'HORA'
      Origin = 'AGENDAMENTOS.HORA'
      Required = True
      EditMask = '##:##;1;_'
      Size = 6
    end
    object IBDSetAgendamentoESPECIALIDADE: TIBStringField
      DisplayWidth = 44
      FieldName = 'ESPECIALIDADE'
      Origin = 'AGENDAMENTOS.ESPECIALIDADE'
      Required = True
      Size = 25
    end
    object IBDSetAgendamentoMEDICO: TIBStringField
      DisplayWidth = 52
      FieldName = 'MEDICO'
      Origin = 'AGENDAMENTOS.MEDICO'
      Required = True
      Size = 30
    end
  end
  object IBTransactionAgendamento: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabaseClinica
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 168
    Top = 248
  end
  object DSAgendamento: TDataSource
    DataSet = IBDSetAgendamento
    Left = 280
    Top = 248
  end
end
