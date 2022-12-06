object Form1: TForm1
  Left = 0
  Top = 0
  Cursor = crHandPoint
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 218
  ClientWidth = 348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 0
    Top = 203
    Width = 348
    Height = 15
    Cursor = crHandPoint
    Align = alBottom
    Alignment = taCenter
    Caption = 'https://github.com/joemilc/jkdialog'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = Label1Click
    ExplicitWidth = 198
  end
  object Button1: TButton
    Left = 0
    Top = 0
    Width = 348
    Height = 50
    Cursor = crHandPoint
    Align = alTop
    Caption = 'Message'
    TabOrder = 0
    OnClick = Button1Click
    ExplicitWidth = 267
  end
  object Button2: TButton
    Left = 0
    Top = 50
    Width = 348
    Height = 50
    Cursor = crHandPoint
    Align = alTop
    Caption = 'Alert'
    TabOrder = 1
    OnClick = Button2Click
    ExplicitWidth = 267
  end
  object Button3: TButton
    Left = 0
    Top = 100
    Width = 348
    Height = 50
    Cursor = crHandPoint
    Align = alTop
    Caption = 'Error'
    TabOrder = 2
    OnClick = Button3Click
    ExplicitWidth = 267
  end
  object Button4: TButton
    Left = 0
    Top = 150
    Width = 348
    Height = 50
    Cursor = crHandPoint
    Align = alTop
    Caption = 'Success'
    TabOrder = 3
    OnClick = Button4Click
    ExplicitWidth = 267
  end
end
