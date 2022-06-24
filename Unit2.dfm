object Form2: TForm2
  Left = 249
  Top = 150
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Como usar o Game Pense '
  ClientHeight = 203
  ClientWidth = 434
  Color = 11586303
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 73
    Height = 22
    Caption = 'Leia-me'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = -1
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 195
    Top = 169
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 0
  end
  object ListBox1: TListBox
    Left = 16
    Top = 40
    Width = 409
    Height = 113
    ItemHeight = 13
    Items.Strings = (
      '- Voce deve alinhar os noves(9) numeros, de forma crescente,'
      '  ou seja: 1-2-3-4-5-6-#-#-# para Facil,'
      '                    1-2-3-4-5-6-7-#-# para Medio e,'
      
        '                    1-2-3-4-5-6-7-8-9  para Dificil (s'#243' para os ' +
        'corajosos...).'
      ''
      '- use as teclas de navegacao para mover-se, e espaco ou enter '
      '  para girar!.'
      ''
      '- Este app foi desenvolvido para testar seu raciocinio logico,  caso '
      '  haja algum erro.. Sorry!! Os procimos vao ficar melhor!'
      ''
      '- Obrigada por enquanto.. e a : Boa sorte!!'
      
        '                                                                ' +
        '                           Abra'#231'os...')
    TabOrder = 1
  end
end
