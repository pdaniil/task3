object KeyForm: TKeyForm
  Left = 825
  Top = 375
  Width = 274
  Height = 274
  Caption = #1056#1072#1073#1086#1090#1085#1080#1082
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbNumber: TLabel
    Left = 8
    Top = 11
    Width = 101
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1089#1090#1091#1076'. '#1073#1080#1083#1077#1090#1072
  end
  object lbSalary: TLabel
    Left = 8
    Top = 94
    Width = 138
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086' '#1085#1077#1089#1076#1072#1085#1085#1099#1093' '#1079#1072#1095#1077#1090#1086#1074
  end
  object lbFIO: TLabel
    Left = 8
    Top = 49
    Width = 23
    Height = 13
    Caption = #1060#1048#1054
  end
  object Label1: TLabel
    Left = 8
    Top = 134
    Width = 149
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086' '#1085#1077#1089#1076#1072#1085#1085#1099#1093' '#1101#1082#1079#1072#1084#1077#1085#1086#1074
  end
  object edNumber: TEdit
    Left = 8
    Top = 24
    Width = 241
    Height = 21
    TabOrder = 0
  end
  object edFIO: TEdit
    Left = 8
    Top = 62
    Width = 241
    Height = 21
    TabOrder = 1
  end
  object edZachets: TEdit
    Left = 8
    Top = 107
    Width = 241
    Height = 21
    TabOrder = 2
  end
  object bOk: TButton
    Left = 8
    Top = 176
    Width = 121
    Height = 49
    Caption = #1042#1074#1086#1076
    TabOrder = 3
    OnClick = bOkClick
  end
  object bCancel: TButton
    Left = 128
    Top = 176
    Width = 121
    Height = 49
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 4
  end
  object edExams: TEdit
    Left = 8
    Top = 147
    Width = 241
    Height = 21
    TabOrder = 5
  end
end
