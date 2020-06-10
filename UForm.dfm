object MainForm: TMainForm
  Left = 572
  Top = 256
  Width = 778
  Height = 455
  Caption = #1057#1090#1091#1076#1077#1085#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 377
    Width = 762
    Height = 19
    Panels = <>
  end
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 762
    Height = 29
    ButtonWidth = 30
    Caption = 'ToolBar'
    Images = ImageList
    TabOrder = 1
    object TBNew: TToolButton
      Left = 0
      Top = 2
      Action = aNew
    end
    object TBSave: TToolButton
      Left = 30
      Top = 2
      Action = aSave
    end
    object TBOpen: TToolButton
      Left = 60
      Top = 2
      Action = aOpen
    end
    object ToolButton1: TToolButton
      Left = 90
      Top = 2
      Action = aAdd
    end
    object TBDelete: TToolButton
      Left = 120
      Top = 2
      Action = aDelete
    end
    object TBSearch: TToolButton
      Left = 150
      Top = 2
      Action = aSearch
    end
  end
  object sgMain: TStringGrid
    Left = 0
    Top = 35
    Width = 761
    Height = 342
    ColCount = 4
    DefaultColWidth = 150
    FixedCols = 0
    TabOrder = 2
    ColWidths = (
      125
      169
      279
      150)
  end
  object MainMenu: TMainMenu
    Left = 408
    object NFile: TMenuItem
      Caption = #1060#1072#1081#1083
      object NNew: TMenuItem
        Action = aNew
      end
      object NOpen: TMenuItem
        Action = aOpen
      end
      object NSave: TMenuItem
        Action = aSave
      end
      object NSaveAs: TMenuItem
        Action = aSaveAs
      end
      object NClose: TMenuItem
        Action = aClose
      end
      object NExit: TMenuItem
        Action = aExit
      end
    end
    object NChange: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      object NAdd: TMenuItem
        Action = aAdd
      end
      object NDelete: TMenuItem
        Action = aDelete
      end
      object NSearch: TMenuItem
        Action = aSearch
      end
      object NClear: TMenuItem
        Action = aClear
      end
    end
    object NTask: TMenuItem
      Action = aSearch
    end
  end
  object ActionList: TActionList
    Left = 376
    object aNew: TAction
      Caption = #1057#1086#1079#1076#1072#1090#1100
      ImageIndex = 6
    end
    object aOpen: TAction
      Caption = #1054#1090#1082#1088#1099#1090#1100
      ImageIndex = 2
      OnExecute = actOpenExecute
    end
    object aSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 1
      OnExecute = actSaveExecute
    end
    object aSaveAs: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082'...'
      ImageIndex = 1
      OnExecute = actSaveAsExecute
    end
    object aClose: TAction
      Caption = #1047#1072#1082#1088#1099#1090#1100
      OnExecute = actCloseExecute
    end
    object aExit: TAction
      Caption = #1042#1099#1093#1086#1076
      OnExecute = actExitExecute
    end
    object aAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 4
      OnExecute = actAddExecute
    end
    object aDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 3
      OnExecute = actDeleteExecute
    end
    object aSearch: TAction
      Caption = #1053#1072#1081#1090#1080
      ImageIndex = 0
      OnExecute = actFindExecute
    end
    object aClear: TAction
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      OnExecute = actClearExecute
    end
    object aTask: TAction
      Caption = #1053#1072#1081#1090#1080' '#1072#1073#1086#1085#1077#1085#1090#1072
      ImageIndex = 5
    end
  end
  object SaveDialog: TSaveDialog
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1077' '#1092#1072#1081#1083#1099'|*.txt|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*'
    Left = 344
  end
  object OpenDialog: TOpenDialog
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1077' '#1092#1072#1081#1083#1099'|*.txt|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*'
    Options = [ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 312
  end
  object ImageList: TImageList
    Left = 280
    Bitmap = {
      494C0101070018001C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      000000000000000000000000000000000000F2E3C938C58005FFC58005FFC580
      05FFC58005FFC58005FFC58005FFC58005FFC58005FFC58005FFC58005FFC580
      05FFC58005FFC58005FFC58005FFF2E3C9380000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF7E7E7E810000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7830AFFE8B963FFF1C87CFFF1C8
      7CFFF1C87CFFF1C87CFFF1C87CFFF1C87CFFF1C87CFFF1C87CFFF1C87CFFF1C8
      7CFFF1C87CFFF1C87CFFE8B963FFC7830AFF0000000000000000000000000000
      000000000000000000009F5A00FF9F5A00FF9F5A00FF00000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF7E7E7E81CFCF
      CF30404040BF7070708F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C98710FFF1CB83FFF1CA82FFF2CB
      82FFF2CB83FFF1CA82FFF1CB82FFF2CA82FFF2CB82FFF1CB82FFF1CB82FFF1CB
      82FFF2CA82FFF2CA82FFF2CA82FFCA8711FF0000000000000000000000000000
      000000000000000000009F5A00FFF3CC87FFDDAD5CFF9F5A00FF000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF40000000FF404040BF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC8C17FFF3CE8AFFF3CE8BFFF2CE
      8BFFF3CE8AFFF2CE8BFF3F9200FF3F9200FF3F9200FF3F9200FFF2CE8AFFF2CE
      8AFFF2CE8BFFF3CE8BFFF3CE8AFFCD8C17FF0000000000000000000000000000
      00000000000000000000A35D00FFF3D08EFFF3CF8EFFA35D00FF000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000FF0000
      00FF000000FF000000FF000000FF7E7E7E810000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D09120FFF4D294FFF3D294FFF4D2
      94FFF3D294FFF4D294FF3F9200FF3F9200FF3F9200FF3F9200FFF3D294FFF3D2
      94FFF4D294FFF4D294FFF4D294FFD09120FF0000000000000000000000000000
      00000000000000000000A76100FFF5D396FFF5D396FFA76000FF000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000FF0000
      00FF000000FF000000FF000000FF7E7E7E810000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D39629FFF5D79FFFF5D79FFFF4D7
      9EFFF4D69FFFF4D79FFF3F9200FF3F9200FF3F9200FF3F9200FFF5D79FFFF5D6
      9FFFF5D79FFFF4D69FFFF5D69FFFD39729FF0000000000000000000000000000
      00000000000000000000AD6600FFF5D7A0FFF5D7A0FFAD6600FF000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF40000000FF404040BF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D69C33FFF6DCABFFF6DBABFF3F92
      00FF3F9200FF3F9200FF3F9200FF3F9200FF3F9200FF3F9200FF3F9200FF3F92
      00FF3F9200FFF6DCAAFFF6DBABFFD69D33FF0000000000000000000000000000
      00000000000000000000B36B00FFF6DBABFFF6DCAAFFB36B00FF000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF40000000FF404040BF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBA33DFFF8E1B7FFF7E1B7FF3F92
      00FF3F9200FF3F9200FF3F9200FF3F9200FF3F9200FF3F9200FF3F9200FF3F92
      00FF3F9200FFF8E1B8FFF8E1B8FFDAA23DFF0000000000000000000000000000
      00000000000000000000B97000FFF8E0B5FFC9850FFFB97100FF000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEA847FFF9E6C3FFF9E6C4FF3F92
      00FF3F9200FF3F9200FF3F9200FF3F9200FF3F9200FF3F9200FF3F9200FF3F92
      00FF3F9200FFF9E6C4FFF8E6C4FFDEA847FF0000000000000000000000000000
      000000000000F5E4C738C07600FFF8E5C0FFD09021FFC07600FFF5E4C7380000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF40000000FF404040BF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2AF51FFFAEBD1FFFAECD0FF3F92
      00FF3F9200FF3F9200FF3F9200FF3F9200FF3F9200FF3F9200FF3F9200FF3F92
      00FF3F9200FFFAEBD0FFFAECD0FFE2AE51FF0000000000000000000000000000
      0000F5E4C738C77B00FFF7DFB4FFF9E9CAFFDAA13BFFDAA13BFFC67C00FFF5E4
      C7380000000000000000000000000000000000000000000000FF000000FF0000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF40000000FF404040BF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6B45AFFFBF1DCFFFBF0DCFFFBF0
      DCFFFBF0DCFFFBF0DCFF3F9200FF3F9200FF3F9200FF3F9200FFFBF0DCFFFBF0
      DCFFFBF1DCFFFBF1DCFFFCF0DCFFE6B45AFF000000000000000000000000F5E4
      C738CC8000FFF7E2BCFFFBEDD3FFFBEDD4FFE5B255FFE4B155FFF7E2BCFFCE82
      00FFF5E4C73800000000000000000000000000000000000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000003030
      30CF000000FF404040BF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9BA63FFFDF5E7FFFCF5E7FFFCF5
      E7FFFDF5E7FFFCF5E7FF3F9200FF3F9200FF3F9200FF3F9200FFFCF5E7FFFDF5
      E7FFFCF5E7FFFCF5E7FFFDF5E7FFE9B963FF0000000000000000F5E4C738D184
      00FFF8E6C3FFFCF0DCFFFCF1DCFFFCF1DCFFEBBD67FFEBBD67FFFCF0DDFFF8E6
      C3FFD18400FFF5E4C738000000000000000000000000000000FF000000FF0000
      0000000000000000000000000000000000007E7E7E81000000FF000000FF0000
      00FF000000FF9F9F9F6000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBBE6AFFFEF9F1FFFEF9F1FFFDF9
      F1FFFDF9F0FFFEF9F1FF3F9200FF3F9200FF3F9200FF3F9200FFFDF9F1FFFEF9
      F0FFFEF9F0FFFEF9F1FFFEF9F0FFECBE6AFF00000000F5E4C738D48700FFF9E8
      C9FFFDF4E4FFFCF3E4FFFDF3E4FFFCF4E4FFEBBD67FFEBBD67FFFCF3E3FFFCF4
      E4FFF8E8C9FFD48600FFF5E4C7380000000000000000000000FF000000FF0000
      0000000000000000000000000000000000007E7E7E81000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEC270FFFEFDF9FFFFFCF9FFFFFC
      F9FFFEFDF9FFFEFDF9FFFEFCF9FFFEFCF9FFFEFDF9FFFFFCF9FFFFFCF8FFFFFD
      F9FFFEFCF9FFFFFDF9FFFEFCF8FFEEC271FFF5E4C738D48700FFF9E9CCFFFDF6
      E9FFFDF6E9FFFDF6E9FFFDF6E9FFFDF6E9FFFDF6E9FFFDF6E9FFFDF6E9FFFDF6
      E9FFFDF6E9FFF9E9CCFFD48700FFF5E4C73800000000000000FF000000FF0000
      000000000000000000000000000000000000303030CF000000FF000000FF9F9F
      9F60000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0C575FFFCF2E1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFCF2E1FFF0C575FFD48700FFD48700FFD48700FFD487
      00FFD48700FFD48700FFD48700FFD48700FFD48600FFD48600FFD48600FFD487
      00FFD48700FFD48700FFD48700FFD48700FF00000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2E3C938F0C575FFF0C575FFF0C5
      75FFF0C575FFF0C575FFF0C576FFF0C575FFF0C575FFF0C575FFF0C575FFF0C5
      75FFF0C575FFF0C575FFF0C575FFF2E3C9380000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF9F9F9F60000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007E7E7E817070708F0000000000000000FBF8F236C1965EC9A463
      0EF59F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A
      00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2E3C938C58005FFC58005FFC580
      05FFC58005FFC58005FFC58005FFC58005FFC58005FFC58005FFC58005FFC580
      05FFC58005FFC58005FFC58005FFF2E3C9380000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000303030CF000000FF000000FF7070708FFCFAF730AD7023EF9F5A00FFDCB4
      74FFDCB474FFA35B03FFA35B03FFEED19BFFEBCC94FFEBCC94FFEBCC94FFECCD
      97FFEBCC94FFC37F0BFFBC7602FF9F5A00FF288FC1FF288FC1FF288FC1FF288F
      C1FF288FC1FF288FC1FF288FC1FF288FC1FF288FC1FF288FC1FF288FC1FF288F
      C1FF288FC1FF288FC1FF288FC1FF288FC1FFC7830AFFE8B963FFF1C87CFFF1C8
      7CFFF1C87CFFF1C87CFFF1C87CFFF1C87CFFF1C87CFFF1C87CFFF1C87CFFF1C8
      7CFFF1C87CFFF1C87CFFE8B963FFC7830AFF0000000000000000000000000000
      000000000000BFBFBF407E7E7E817E7E7E810000000000000000000000003030
      30CF000000FF000000FF000000FF7070708FC89F69C39F5A00FFC58005FFEBCD
      9AFFEBCD9AFFA95E00FFA95E00FFFFEDCAFFFAE7C0FFFAE7C0FFFAE7C0FFFCE9
      C4FFFCE9C4FFC48009FFC48009FF9F5A00FF2592C5FF19B9EAFF1AD0FCFF1AD0
      FCFF1AD0FCFF1ACFFCFF1BCFFDFF1ACFFCFF1BCFFCFF1AD0FCFF1AD0FCFF1AD0
      FCFF1AD0FCFF1AD0FCFF20C2EFFF2592C4FFC98710FFF1CB83FFF1CA82FFF2CB
      82FFF2CB83FFF1CA82FFF1CB82FFF2CA82FFF2CB82FFF1CB82FFF1CB82FFF1CB
      82FFF2CA82FFF2CA82FFF2CA82FFCA8711FF000000000000000000000000DFDF
      DF20000000FF000000FF000000FF000000FF000000FF000000FF6060609F0000
      00FF000000FF000000FF101010EF00000000AA6A13F3BD790AFFCC8910FFECD0
      A1FFECD0A1FFB06200FFA95E00FFFDF0D7FFFAEACCFFFAEACCFFFAEACCFFFBEC
      D1FFFBECD1FFCC8910FFC78411FFA45F00FF2296CAFF2296CAFF2296CAFF2296
      CAFF2296CAFF2296CAFF2296CAFF2296CAFF24C8F4FF27D2FCFF27D2FDFF27D3
      FCFF27D3FCFF27D3FCFF27D3FCFF2297C9FFCC8C17FFF3CE8AFFF3CE8BFFF2CE
      8BFFF3CE8AFFF2CE8BFFF3CE8BFFF2CE8AFFF3CE8AFFF2CE8AFFF2CE8AFFF2CE
      8AFFF2CE8BFFF3CE8BFFF3CE8AFFCD8C17FF0000000000000000000000FF0000
      00FF000000FF000000FF7070708F404040BF000000FF000000FF000000FF0000
      00FF000000FF101010EF00000000000000009F5A00FFC78618FFCA8A18FFF2DE
      BAFFF2DEBAFFC78829FFC78829FFFEF6E6FFFCF2DDFFFCF2DDFFFCF2DDFFFDF3
      E2FFFDF3E2FFCA8A18FFCA8A18FFA45F00FF1E9CCFFF36D7FCFF36D6FCFF37D6
      FDFF36D7FCFF37D7FCFF36D6FDFF2BC3EEFF1E9CCFFF2BC3EEFF36D7FDFF36D7
      FCFF36D6FDFF37D7FDFF36D7FDFF1E9DCFFFD09120FFF4D294FFF3D294FFF4D2
      94FFF3D294FFF4D294FFF4D294FFF4D294FFF3D294FFF3D394FFF3D294FFF3D2
      94FFF4D294FFF4D294FFF4D294FFD09120FF00000000CFCFCF30000000FF0000
      00FFBFBFBF4000000000000000000000000000000000303030CF000000FF0000
      00FF101010EF0000000000000000000000009F5A00FFC98B1EFFC98B1EFFFCF2
      DFFFFCF2DFFFFCF2DFFFFCF2DFFFFCF2DFFFFCF2DFFFFCF2DFFFFCF2DFFFFCF2
      DFFFFCF2DFFFCD8E20FFCD8E20FFAB6500FF19A2D5FF47DBFCFF47DBFDFF47DB
      FDFF47DBFDFF47DBFDFF48DBFDFF48DBFDFF3DCFF5FF19A3D6FF19A3D6FF19A3
      D6FF19A3D6FF19A3D6FF19A3D6FF19A3D6FFD39629FFF5D79FFFF5D79FFFF4D7
      9EFFF4D69FFFF4D79FFFF5D69FFFF5D79FFFF4D79FFFF5D69FFFF5D79FFFF5D6
      9FFFF5D79FFFF4D69FFFF5D69FFFD39729FF00000000000000FF000000FFCFCF
      CF30000000000000000000000000000000000000000000000000101010EF0000
      00FF404040BF000000000000000000000000AB6500FFCD8F25FFC98B1EFFFFFE
      F8FFFFFEF8FFFFFEF8FFFFFEF8FFFFFEF8FFFFFEF8FFFFFEF8FFFFFEF8FFFFFE
      F8FFFFFEF8FFD19429FFD19429FFAB6500FF14A9DCFF5AE0FEFF59E0FDFF5ADF
      FEFF5AE0FEFF5AE0FDFF59E0FEFF59DFFDFF5AE0FDFF59E0FDFF59E0FDFF5ADF
      FDFF5AE0FDFF5ADFFDFF59E0FDFF14A9DDFFD69C33FFF6DCABFFF6DBABFF1D25
      DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25
      DAFF1D25DAFFF6DCAAFFF6DBABFFD69D33FFAFAFAF50000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000EFEFEF100000
      00FF000000FF000000000000000000000000AB6500FFD0942DFFD0942DFFD094
      2DFFD0942DFFD0942DFFD0942DFFD0942DFFD0942DFFD0942DFFD0942DFFD094
      2DFFD0942DFFD0942DFFD0942DFFAB6500FF0FB0E4FF6CE5FDFF6DE4FEFF6CE4
      FDFF6DE5FDFF6CE4FDFF6CE5FDFF6DE5FDFF6CE5FEFF6DE5FEFF6DE4FDFF6CE4
      FDFF6CE4FDFF6DE4FDFF6CE5FDFF0FAFE3FFDBA33DFFF8E1B7FFF7E1B7FF1D25
      DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25
      DAFF1D25DAFFF8E1B8FFF8E1B8FFDAA23DFF404040BF000000FFAFAFAF500000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000000000000000000000B36D00FFD39833FFD39833FFD398
      33FFD39833FFD39833FFD39833FFD39833FFD39833FFD39833FFD39833FFD398
      33FFD39833FFD39833FFD39833FFB36D00FF0AB5EAFF80EAFEFF7FE9FDFF7FEA
      FDFF80E9FEFF80EAFEFF7FE9FEFF7FEAFEFF80E9FEFF7FE9FEFF7FE9FEFF7FE9
      FEFF80EAFEFF7FE9FEFF80E9FDFF0AB5EAFFDEA847FFF9E6C3FFF9E6C4FF1D25
      DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25
      DAFF1D25DAFFF9E6C4FFF8E6C4FFDEA847FF404040BF000000FFBFBFBF400000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000000000000000000000B36D00FFDAA039FFDAA039FFDAA0
      39FFDAA039FFDAA039FFDAA039FFDAA039FFDAA039FFDAA039FFDAA039FFDAA0
      39FFDAA039FFDAA039FFDAA039FFB36D00FF06BBF0FF92EEFFFF92EEFEFF92EE
      FEFF92EEFEFF91EEFEFF92EEFEFF92EEFEFF92EEFEFF92EEFEFF92EEFEFF92EE
      FEFF92EEFEFF92EFFEFF91EEFEFF06BBF0FFE2AF51FFFAEBD1FFFAECD0FF1D25
      DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25
      DAFF1D25DAFFFAEBD0FFFAECD0FFE2AE51FF9F9F9F60000000FF101010EF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000000000000000000000B36D00FFD8A13EFFD8A13EFFD8A1
      3EFFFAE6C0FFF9E5BEFFF9E5BEFFF9E5BEFFF9E5BEFFF9E5BEFFF9E5BEFFF9E6
      C0FFDDA746FFDDA746FFDDA746FFB36D00FF02BFF5FFA3F3FFFFA3F2FEFFA3F3
      FEFFA3F2FFFFA3F2FEFFA3F3FFFFA3F3FFFFA3F2FEFFA3F2FFFFA3F3FEFFA3F3
      FFFFA3F2FEFFA3F2FEFFA2F3FEFF02C0F4FFE6B45AFFFBF1DCFFFBF0DCFFFBF0
      DCFFFBF0DCFFFBF0DCFFFCF0DCFFFBF0DCFFFCF0DCFFFBF0DCFFFBF0DCFFFBF0
      DCFFFBF1DCFFFBF1DCFFFCF0DCFFE6B45AFF00000000000000FF000000FFEFEF
      EF10000000000000000000000000000000000000000000000000202020DF0000
      00FF202020DF000000000000000000000000BA7300FFDBA443FFDBA443FFF9E6
      C4FFF9E8C6FFF9E7C5FFF9E7C5FFF9E7C5FFF9E7C5FFF9E7C5FFF9E7C5FFF9E7
      C5FFFBE9CAFFE0AB4BFFE0AB4BFFBA7300FF00C3F8FFB2F6FEFFB2F6FFFFB2F7
      FFFFB2F6FEFFB2F6FFFFB2F7FEFFB2F6FEFFB2F6FEFFB2F6FFFFB2F6FFFFB2F6
      FFFFB2F6FEFFB2F6FFFFB2F6FEFF00C3F8FFE9BA63FFFDF5E7FFFCF5E7FFFCF5
      E7FFFDF5E7FFFCF5E7FFFDF5E7FFFDF4E7FFFCF5E7FFFCF5E8FFFCF5E7FFFDF5
      E7FFFCF5E7FFFCF5E7FFFDF5E7FFE9B963FF00000000BFBFBF40000000FF0000
      00FFEFEFEF1000000000000000000000000000000000505050AF000000FF0000
      00FF00000000000000000000000000000000BA7300FFDEA94AFFDEA94AFFFAEB
      CEFFFAEED4FFFAEDD2FFFAEDD2FFFAEDD2FFFAEDD2FFFAEDD2FFFAEDD2FFFAED
      D2FFFBEED5FFE3B053FFE3B053FFBA7300FF00C3F8FF88EAFDFFBFFAFFFFBEFA
      FFFFBFF9FFFFBEFAFFFFBFF9FFFFBEFAFFFFBFFAFFFFBEFAFFFFBFFAFFFFBFFA
      FFFFBEFAFEFFBEF9FEFF89EAFDFF00C3F8FFEBBE6AFFFEF9F1FFFEF9F1FFFDF9
      F1FFFDF9F0FFFEF9F1FFFEF9F1FFFEF9F0FFFDF9F1FFFDF9F0FFFDF9F1FFFEF9
      F0FFFEF9F0FFFEF9F1FFFEF9F0FFECBE6AFF0000000000000000000000FF0000
      00FF000000FF000000FF7E7E7E817E7E7E81000000FF000000FF000000FF3030
      30CF00000000000000000000000000000000C07900FFE3B054FFE3B054FFFCF0
      DBFFFCF3E1FFFCF2DFFFFCF2DFFFFCF2DFFFFCF2DFFFFCF2DFFFFCF2DFFFFCF2
      DFFFFCF3E2FFE8B85EFFE8B85EFFC07900FF00C3F8FF00C3F8FF00C3F8FF9AEF
      FDFFC8FCFFFFC8FCFFFF9AEFFDFF00C3F8FF00C3F8FF00C3F8FF00C3F8FF00C3
      F8FF00C3F8FF00C3F8FF00C3F8FF00C3F8FFEEC270FFFEFDF9FFFFFCF9FFFFFC
      F9FFFEFDF9FFFEFDF9FFFEFCF9FFFEFCF9FFFEFDF9FFFFFCF9FFFFFCF8FFFFFD
      F9FFFEFCF9FFFFFDF9FFFEFCF8FFEEC271FF000000000000000000000000AFAF
      AF50000000FF000000FF000000FF000000FF000000FF000000FF000000000000
      000000000000000000000000000000000000C07900FFF2CC83FFF2CC83FFFDF5
      E7FFFEF9EEFFFEF8ECFFFEF8ECFFFEF8ECFFFEF8ECFFFEF8ECFFFEF8ECFFFEF8
      ECFFFEF9F0FFEDC782FFEDC782FFC07900FF00000000000000009FE8FC6000C3
      F8FF00C3F8FF00C3F8FF00C3F8FF9FE8FC600000000000000000000000000000
      000000000000000000000000000000000000F0C575FFFCF2E1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFCF2E1FFF0C575FF0000000000000000000000000000
      0000000000008F8F8F70404040BF404040BFCFCFCF3000000000000000000000
      000000000000000000000000000000000000C07900FFC07900FFC07900FFC079
      00FFC07900FFC07900FFC07900FFC07900FFC07900FFC07900FFC07900FFC079
      00FFC07900FFC07900FFC07900FFC07900FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2E3C938F0C575FFF0C575FFF0C5
      75FFF0C575FFF0C575FFF0C576FFF0C575FFF0C575FFF0C575FFF0C575FFF0C5
      75FFF0C575FFF0C575FFF0C575FFF2E3C938424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF000000FFFF801F00000000FC7F80030000
      0000FC3F9FE300000000FC3F9FC000000000FC3F9FC000000000FC3F9FE30000
      0000FC3F9FE300000000FC3F9FFF00000000F81F9FE300000000F00F9FE30000
      0000E0079FE300000000C0039F030000000080019F0F0000000000009F0F0000
      00000000803F00000000FFFF803F0000FFF98000FFFF0000FFF0000000000000
      F8E0000000000000E001000000000000C0030000000000008787000000000000
      8FC70000000000001FC70000000000001FE70000000000001FE7000000000000
      1FE70000000000008FC7000000000000878F000000000000C00F000000000000
      E03F0000C0FF0000F87F0000FFFF000000000000000000000000000000000000
      000000000000}
  end
end
