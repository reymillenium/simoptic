object frmRegistro: TfrmRegistro
  Left = 387
  Top = 209
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsSingle
  Caption = 'Registro de SimOptic 2008'
  ClientHeight = 244
  ClientWidth = 269
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000800000000000000088000000000000
    0088770000000000000000000000000000080070000000000000000000000000
    0008F07000000000000000000000000000088000000000F00000000000000000
    0000888000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000888800000000000000
    0000000000000000000000000000000000000000000000088000000000000000
    0000000000000008800000000000000000000000000000088000000000000000
    0000000700000008800000000000000000000000000000088000000000000000
    00000000F7000008800000000000000000000008F7000008F700000000000000
    000000000000000880000000000000000000000000000008F700000000000000
    0000000000000008800000000000000000000000000000088000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFC0000007C0000007C0000007C0000007F800C07FF800E0FFFC01FFFFFC00
    003FFC00003FF800003FF80FFFFFF81FF1FFF81FF1FFFC0FC07FFC0FC07FFE07
    C07FFE07E0FFFF03E0FFFF03C0FFFF8180FFFF8000FFFFC000FFFFC000FFFFE0
    00FFFFE000FFFFFFE0FFFFFFE0FFFFFFE0FFFFFFF1FFFFFFE0FFFFFFFFFF}
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 5
    Top = 5
    Width = 260
    Height = 235
    Color = 16048833
    TabOrder = 0
    UseDockManager = True
    Version = '1.7.8.1'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    FullHeight = 0
    object lblMensaje: TLabel
      Left = 8
      Top = 8
      Width = 127
      Height = 16
      Caption = 'Shareware Edition'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblHardwareID: TLabel
      Left = 5
      Top = 32
      Width = 76
      Height = 13
      Caption = 'Hardware ID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtHardwareID: TEdit
      Left = 5
      Top = 48
      Width = 250
      Height = 21
      Color = 16048833
      ReadOnly = True
      TabOrder = 0
    end
    object AdvGroupBoxDatosDeRegistro: TAdvGroupBox
      Left = 5
      Top = 72
      Width = 250
      Height = 121
      BorderStyle = bsDouble
      RoundEdges = True
      Caption = ' Enter the Following Data: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = True
      ParentFont = False
      TabOrder = 1
      object lblUsuario: TLabel
        Left = 5
        Top = 24
        Width = 61
        Height = 13
        Caption = 'Username:'
      end
      object lblNumeroSerie: TLabel
        Left = 5
        Top = 64
        Width = 84
        Height = 13
        Caption = 'Serial Number:'
      end
      object edtUsuario: TEdit
        Left = 5
        Top = 40
        Width = 236
        Height = 21
        TabOrder = 0
      end
      object edtNumeroSerie: TEdit
        Left = 5
        Top = 80
        Width = 195
        Height = 21
        TabOrder = 1
        Text = '2AA42C35-F762CE0C-D34A2922'
      end
    end
    object lblbtnCerrar: TLbButton
      Left = 34
      Top = 203
      Width = 75
      Height = 23
      Hint = 'Cerrar la Aplicaci'#243'n'
      Caption = 'Cerrar'
      Color = 15519380
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
      ModalResult = 0
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style = bsModern
      TabOrder = 2
      UseHotTrackFont = False
      OnClick = lblbtnCerrarClick
    end
    object lblbtnRegistrar: TLbButton
      Left = 134
      Top = 203
      Width = 75
      Height = 23
      Hint = 'Registrar el Sistema'
      Caption = 'Registrar'
      Color = 15519380
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
      ModalResult = 0
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style = bsModern
      TabOrder = 3
      UseHotTrackFont = False
      OnClick = lblbtnRegistrarClick
    end
  end
  object mxProtector: TmxProtector
    CodeKey = 'desfasatornewpasswordprotected'
    ProtectionTypes = [stDayTrial, stRegister]
    Options = [poAutoInit, poCheckSytemTime, poPasswordOnce, poUseHardwareKey]
    RegistryRootKey = rkLocalMachine
    Expiration = 37211.407650462960000000
    MaxStartNumber = 0
    MaxDayNumber = 7
    UserName = 'Reinier'
    Version = '1.32'
    OnInvalidSerialNumber = mxProtectorInvalidSerialNumber
    OnGetSerialNumber = mxProtectorGetSerialNumber
    Left = 197
    Top = 6
    UniqueCodeID = 
      '7A3247463432334C4A27324E4F3A2221205626395426222F342A2B242D2B5919' +
      '63611B16115B'
    UniqueID = 
      '210927026A7765110576781D09576B1D7160646E1D706C0A49046C0D67640067' +
      '021E75547424'
  end
  object FontDialogSimulacionImagenes: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Left = 160
    Top = 8
  end
end
