object frmSorting: TfrmSorting
  Left = 0
  Top = 0
  Caption = 'frmSorting'
  ClientHeight = 68
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnSort: TButton
    Left = 552
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Sort'
    TabOrder = 0
    OnClick = btnSortClick
  end
  object edSort: TEdit
    Left = 8
    Top = 8
    Width = 619
    Height = 21
    TabOrder = 1
    Text = 'SORTEXAMPLE'
  end
end
