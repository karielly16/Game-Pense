object Form3: TForm3
  Left = 409
  Top = 175
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Teste de Coragem'
  ClientHeight = 148
  ClientWidth = 217
  Color = 6723839
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 185
    Height = 97
    Caption = 'N'#237'vel'
    TabOrder = 0
    object RadioButton1: TRadioButton
      Left = 16
      Top = 20
      Width = 113
      Height = 17
      Caption = 'F'#225'cil'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 16
      Top = 40
      Width = 113
      Height = 17
      Caption = 'M'#233'dio'
      TabOrder = 1
      OnClick = RadioButton2Click
    end
    object RadioButton3: TRadioButton
      Left = 16
      Top = 62
      Width = 153
      Height = 17
      Caption = 'Dif'#237'cil (s'#243' para os bons)'
      TabOrder = 2
      OnClick = RadioButton3Click
    end
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 112
    Width = 75
    Height = 25
    Caption = '&Aplicar'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 120
    Top = 112
    Width = 75
    Height = 25
    Caption = '&Cancela'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
end
