object JKFormDialog: TJKFormDialog
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 192
  ClientWidth = 440
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pTexto: TPanel
    Left = 0
    Top = 49
    Width = 440
    Height = 94
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object lTexto: TLabel
      AlignWithMargins = True
      Left = 81
      Top = 4
      Width = 341
      Height = 48
      Margins.Left = 10
      Margins.Right = 10
      Align = alClient
      Caption = 
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi e' +
        'leifend aliquam dui eget consequat. In pellentesque laoreet just' +
        'o, id ullamcorper velit ultrices sed.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14397732
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      WordWrap = True
    end
    object imgDialog: TImage
      Left = 1
      Top = 1
      Width = 70
      Height = 92
      Cursor = crHandPoint
      Align = alLeft
      Center = True
      Transparent = True
    end
  end
  object pTopo: TPanel
    Left = 0
    Top = 0
    Width = 440
    Height = 49
    Align = alTop
    Caption = 'Mensagem do Topo'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object pBotton: TPanel
    Left = 0
    Top = 143
    Width = 440
    Height = 49
    Align = alBottom
    ParentColor = True
    TabOrder = 2
    object pYes: TPanel
      Left = 340
      Top = 3
      Width = 96
      Height = 41
      BevelOuter = bvNone
      Caption = 'pYes'
      TabOrder = 0
      object shYes: TShape
        Left = 0
        Top = 0
        Width = 96
        Height = 41
        Align = alClient
        Brush.Color = 14397732
        Pen.Color = 14397732
        Shape = stRoundRect
        ExplicitLeft = 112
        ExplicitTop = 6
        ExplicitWidth = 73
        ExplicitHeight = 35
      end
      object lYes: TLabel
        Left = 0
        Top = 0
        Width = 96
        Height = 41
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'Sim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        OnClick = lYesClick
        ExplicitLeft = -8
        ExplicitTop = 3
      end
    end
    object pNo: TPanel
      Left = 230
      Top = 3
      Width = 96
      Height = 41
      BevelOuter = bvNone
      Caption = 'pYes'
      TabOrder = 1
      object shNo: TShape
        Left = 0
        Top = 0
        Width = 96
        Height = 41
        Align = alClient
        Pen.Color = 14397732
        Shape = stRoundRect
        ExplicitLeft = 112
        ExplicitTop = 6
        ExplicitWidth = 73
        ExplicitHeight = 35
      end
      object lNo: TLabel
        Left = 0
        Top = 0
        Width = 96
        Height = 41
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'N'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 14397732
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        OnClick = lNoClick
        ExplicitLeft = 1
        ExplicitWidth = 94
        ExplicitHeight = 39
      end
    end
  end
end
