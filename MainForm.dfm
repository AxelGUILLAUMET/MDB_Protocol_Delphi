object FMainForm: TFMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Demostrador bus MDB con Delphi XE'
  ClientHeight = 318
  ClientWidth = 823
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 8
    Top = 291
    Width = 401
    Height = 22
    TabOrder = 4
    object Shape_STAT_MDB_COMPORT: TShape
      Left = 3
      Top = 3
      Width = 15
      Height = 15
      Brush.Color = clRed
      Shape = stCircle
    end
    object Label1: TLabel
      Left = 24
      Top = 4
      Width = 86
      Height = 13
      Caption = 'Puerto COM MDB:'
    end
    object Label_MDB_COMPORT: TLabel
      Left = 114
      Top = 4
      Width = 29
      Height = 13
      Caption = 'COM1'
    end
    object Label7: TLabel
      Left = 220
      Top = 4
      Width = 44
      Height = 13
      Caption = 'ESTADO:'
    end
    object Label_MDB_STATUS: TLabel
      Left = 266
      Top = 4
      Width = 4
      Height = 13
      Caption = '-'
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 128
    Width = 401
    Height = 157
    Caption = 'Monedas presentes en tubos'
    TabOrder = 1
    object Label6: TLabel
      Left = 40
      Top = 19
      Width = 75
      Height = 23
      Caption = '$.50MXN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 40
      Top = 40
      Width = 59
      Height = 23
      Caption = '$1MXN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 40
      Top = 61
      Width = 59
      Height = 23
      Caption = '$2MXN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 40
      Top = 83
      Width = 59
      Height = 23
      Caption = '$5MXN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 40
      Top = 105
      Width = 69
      Height = 23
      Caption = '$10MXN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 16
      Top = 19
      Width = 18
      Height = 23
      Caption = 'A:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 16
      Top = 40
      Width = 18
      Height = 23
      Caption = 'B:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 16
      Top = 61
      Width = 20
      Height = 23
      Caption = 'D:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 16
      Top = 83
      Width = 18
      Height = 23
      Caption = 'E:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 16
      Top = 105
      Width = 18
      Height = 23
      Caption = 'C:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label_MDB_tubeA: TLabel
      Left = 132
      Top = 19
      Width = 7
      Height = 23
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label_MDB_tubeB: TLabel
      Left = 132
      Top = 40
      Width = 7
      Height = 23
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label_MDB_tubeD: TLabel
      Left = 132
      Top = 61
      Width = 7
      Height = 23
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label_MDB_tubeE: TLabel
      Left = 132
      Top = 83
      Width = 7
      Height = 23
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label_MDB_tubeC: TLabel
      Left = 132
      Top = 105
      Width = 7
      Height = 23
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 16
      Top = 128
      Width = 62
      Height = 23
      Caption = 'TOTAL:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label_MDB_totalTubes: TLabel
      Left = 84
      Top = 128
      Width = 59
      Height = 23
      Caption = '0$MXN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn5: TBitBtn
      Left = 214
      Top = 28
      Width = 174
      Height = 43
      Caption = 'Cotejar monedas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn5Click
    end
    object BitBtn4: TBitBtn
      Left = 214
      Top = 96
      Width = 174
      Height = 43
      Caption = 'Configurar COM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn4Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 3
    Width = 401
    Height = 119
    Caption = 'Entrada y salida de monedas'
    TabOrder = 0
    object Label5: TLabel
      Left = 8
      Top = 17
      Width = 155
      Height = 33
      Caption = 'Se introdujo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 266
      Top = 12
      Width = 20
      Height = 39
      Alignment = taRightJustify
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 292
      Top = 12
      Width = 96
      Height = 39
      Caption = '$MXN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 292
      Top = 64
      Width = 96
      Height = 39
      Caption = '$MXN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 176
      Top = 61
      Width = 110
      Height = 47
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumbersOnly = True
      ParentFont = False
      TabOrder = 1
      Text = '0'
    end
    object BitBtn2: TBitBtn
      Left = 8
      Top = 64
      Width = 162
      Height = 43
      Caption = 'Pagar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 415
    Top = 236
    Width = 401
    Height = 77
    Caption = 'Otros'
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 14
      Top = 22
      Width = 174
      Height = 43
      Caption = 'Acerca de...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn3: TBitBtn
      Left = 210
      Top = 22
      Width = 174
      Height = 43
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn3Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 415
    Top = 3
    Width = 401
    Height = 227
    Caption = 'Mensaje MDB recibido del monedero'
    TabOrder = 2
    object Memo1: TMemo
      Left = 10
      Top = 20
      Width = 381
      Height = 197
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object MDB_COM_TIMER: TTimer
    OnTimer = MDB_COM_TIMERTimer
    Left = 486
    Top = 14
  end
  object MDB_COMPORT: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnRxChar = MDB_COMPORTRxChar
    Left = 440
    Top = 16
  end
  object MDB_PARSER_TIMER: TTimer
    Interval = 1
    OnTimer = MDB_PARSER_TIMERTimer
    Left = 534
    Top = 14
  end
end
