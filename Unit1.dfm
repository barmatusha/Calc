object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 394
  ClientWidth = 279
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object val_1B: TButton
    Left = 8
    Top = 136
    Width = 49
    Height = 49
    Caption = '1'
    TabOrder = 0
    OnClick = valueButtonClick
  end
  object val_2B: TButton
    Left = 80
    Top = 136
    Width = 49
    Height = 49
    Caption = '2'
    TabOrder = 1
    OnClick = valueButtonClick
  end
  object val_3B: TButton
    Left = 152
    Top = 136
    Width = 49
    Height = 49
    Caption = '3'
    TabOrder = 2
    OnClick = valueButtonClick
  end
  object val_4B: TButton
    Left = 8
    Top = 200
    Width = 49
    Height = 49
    Caption = '4'
    TabOrder = 3
    OnClick = valueButtonClick
  end
  object val_5B: TButton
    Left = 80
    Top = 200
    Width = 49
    Height = 49
    Caption = '5'
    TabOrder = 4
    OnClick = valueButtonClick
  end
  object val_6B: TButton
    Left = 152
    Top = 200
    Width = 49
    Height = 49
    Caption = '6'
    TabOrder = 5
    OnClick = valueButtonClick
  end
  object val_7B: TButton
    Left = 8
    Top = 264
    Width = 49
    Height = 49
    Caption = '7'
    TabOrder = 6
    OnClick = valueButtonClick
  end
  object val_8B: TButton
    Left = 80
    Top = 264
    Width = 49
    Height = 49
    Caption = '8'
    TabOrder = 7
    OnClick = valueButtonClick
  end
  object val_9B: TButton
    Left = 152
    Top = 264
    Width = 49
    Height = 49
    Caption = '9'
    TabOrder = 8
    OnClick = valueButtonClick
  end
  object val_0B: TButton
    Left = 80
    Top = 328
    Width = 49
    Height = 49
    Caption = '0'
    TabOrder = 9
    OnClick = valueButtonClick
  end
  object point: TButton
    Left = 8
    Top = 328
    Width = 49
    Height = 49
    Caption = ','
    TabOrder = 10
    OnClick = pointClick
  end
  object equals: TButton
    Left = 152
    Top = 328
    Width = 49
    Height = 49
    Caption = '='
    TabOrder = 11
    OnClick = equalsClick
  end
  object Sum: TButton
    Left = 216
    Top = 136
    Width = 49
    Height = 49
    Caption = '+'
    TabOrder = 12
    OnClick = OperationClick
  end
  object Sub: TButton
    Left = 222
    Top = 200
    Width = 49
    Height = 49
    Caption = '-'
    TabOrder = 13
    OnClick = SubClick
  end
  object Multiply: TButton
    Left = 216
    Top = 264
    Width = 49
    Height = 49
    Caption = '*'
    TabOrder = 14
    OnClick = OperationClick
  end
  object Divide: TButton
    Left = 216
    Top = 328
    Width = 49
    Height = 49
    Caption = '/'
    TabOrder = 15
    OnClick = OperationClick
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 257
    Height = 23
    ReadOnly = True
    TabOrder = 16
  end
  object ClearB: TButton
    Left = 216
    Top = 81
    Width = 49
    Height = 49
    Caption = 'C'
    TabOrder = 17
    OnClick = ClearBClick
  end
end
