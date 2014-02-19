object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = #25105#30340#26381#21153#22120
  ClientHeight = 350
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgcMain: TPageControl
    Left = 0
    Top = 0
    Width = 632
    Height = 350
    ActivePage = tsConfig
    Align = alClient
    TabOrder = 0
    object tsMain: TTabSheet
      Caption = #25805#20316
      object btnService: TButton
        Left = 23
        Top = 16
        Width = 129
        Height = 41
        Action = actStartService
        TabOrder = 0
      end
      object btn1: TButton
        Left = 312
        Top = 232
        Width = 75
        Height = 25
        Caption = 'btn1'
        TabOrder = 1
        OnClick = btn1Click
      end
    end
    object tsConfig: TTabSheet
      Caption = #22522#26412#37197#32622
      ImageIndex = 3
      object lblListenPort: TLabel
        Left = 24
        Top = 37
        Width = 24
        Height = 13
        Caption = #31471#21475
      end
      object Label1: TLabel
        Left = 24
        Top = 71
        Width = 48
        Height = 13
        Caption = #24037#20316#32447#31243
      end
      object Label2: TLabel
        Left = 200
        Top = 71
        Width = 91
        Height = 13
        Caption = '*(0=cpu'#25968#37327'*2-1)'
      end
      object edtPort: TEdit
        Left = 87
        Top = 33
        Width = 98
        Height = 21
        TabStop = False
        TabOrder = 0
        Text = '9983'
      end
      object edtWorkCount: TEdit
        Left = 87
        Top = 67
        Width = 98
        Height = 21
        TabOrder = 1
        Text = '0'
      end
      object btnConfigOK: TButton
        Left = 184
        Top = 104
        Width = 75
        Height = 25
        Action = actConfigOK
        TabOrder = 2
      end
      object btnConfigEdit: TButton
        Left = 80
        Top = 104
        Width = 75
        Height = 25
        Action = actConfigEdit
        TabOrder = 3
      end
    end
    object tsClientINfo: TTabSheet
      Caption = #36830#25509#20449#24687
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lstClientINfo: TListView
        Left = 0
        Top = 41
        Width = 624
        Height = 281
        Align = alClient
        Columns = <
          item
            Caption = 'IP'#22320#22336
            Width = 100
          end
          item
            Caption = #36830#25509#31471#21475
            Width = 80
          end
          item
            Caption = #29366#24577
            Width = 430
          end>
        GridLines = True
        ReadOnly = True
        RowSelect = True
        TabOrder = 0
        ViewStyle = vsReport
      end
      object pnlClientINfoOperator: TPanel
        Left = 0
        Top = 0
        Width = 624
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object btnRefreshClientINfo: TButton
          Left = 0
          Top = 6
          Width = 113
          Height = 25
          Action = actRefreshClientINfo
          TabOrder = 0
        end
      end
    end
    object tsMoniter: TTabSheet
      Caption = 'IOCP'#20449#24687
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object actlstMain: TActionList
    Images = ilMain
    Left = 548
    Top = 1
    object actStartService: TAction
      Caption = #24320#21551#26381#21153
      OnExecute = actStartServiceExecute
    end
    object actStopService: TAction
      Caption = #20572#27490#26381#21153
      OnExecute = actStopServiceExecute
    end
    object actExit: TAction
      Caption = #36864#20986
      OnExecute = actExitExecute
    end
    object actShowMain: TAction
      Caption = #26174#31034#20027#31383#20307
      OnExecute = actShowMainExecute
    end
    object actConfigOK: TAction
      Caption = #24212#29992#37197#32622
      OnExecute = actConfigOKExecute
    end
    object actConfigEdit: TAction
      Caption = #20462#25913#37197#32622
      OnExecute = actConfigEditExecute
    end
    object actRefreshClientINfo: TAction
      Caption = #21047#26032#36830#25509#20449#24687
      OnExecute = actRefreshClientINfoExecute
    end
  end
  object ilMain: TImageList
    Left = 475
    Top = 2
    Bitmap = {
      494C010101000600500110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      00000000000000000000000000000000000000000000000000003E3E3E546868
      6887676767896A6A6AB7818181FF818181FF818181FF818181FF7A7A7AAD6868
      6887686868871818182000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000062626281A3A3
      A3CFA3A3A3CFABABABE3C4C2C1FFC4C1BFFFC4C1BFFFC3C2C2FFB3B3B3DFA3A3
      A3CFA4A4A4CF2626263200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001111112031302E56908F8FD57B7A79B9302F2E561010101A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A00000018656565C7505050A30101011A0000000C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008F908DFBBCBCBBFFD3D3D4FFC9C9D0FFC1C1C0FF91918EFB0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9B97FFC4C4C3FFDADADDFFB1B2CAFFAAABAAFF9D9E9BFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A0A19EFFD3D4D2FFE6E6E6FFBBBBBDFFB0B0AFFFA0A09EFF0202
      0202000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A3A4A1FFD6D7D5FFE7E7E6FFC1C1C1FFDBDBDAFFA6A7A4FF0202
      0202000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4A5A2FFCFD0CFFFE7E7E7FFC1C1C1FFDDDDDCFFA9AAA7FF0202
      0202000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020202ACADAAFFCFCFCEFFE8E8E8FFC1C1C1FFDEDFDEFFACADAAFF0202
      0202000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020202AFB0ADFFD1D1D0FFE9E9E8FFC1C1C1FFE0E0DFFFAFAFADFF0404
      0404000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020202B3B3B1FFD2D2D1FFE9E9E9FFB9B9B8FFE0E1E0FFB1B1AFFF0404
      0404000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020202B6B7B4FFD3D3D2FFEAEAEAFFC1C1C1FFE2E2E1FFB3B3B1FF0404
      0404000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020202BABAB8FFD4D4D3FFEAEAE6FFD0CEB5FFE2E3E2FFB5B5B3FF0404
      0404000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040404BDBEBBFFD6D6D5FFEBEBEAFFC4C3BFFFE3E3E2FFB7B7B5FF0404
      0404000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020202ADADABF9D7D7D6FFE9E9E9FFCACAC9FFE2E3E2FFB3B3B1F90404
      0404000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00E007000000000000C007000000000000
      FE7F000000000000FE7F000000000000F81F000000000000F81F000000000000
      F81F000000000000F81F000000000000F81F000000000000F81F000000000000
      F81F000000000000F81F000000000000F81F000000000000F81F000000000000
      F81F000000000000F81F00000000000000000000000000000000000000000000
      000000000000}
  end
  object pmTryIcon: TPopupMenu
    Left = 509
    Top = 2
    object mniShowMain: TMenuItem
      Action = actShowMain
      Default = True
    end
    object mniStartService: TMenuItem
      Action = actStartService
    end
    object mniStopService: TMenuItem
      Action = actStopService
    end
    object mniRefreshClientINfo: TMenuItem
      Action = actRefreshClientINfo
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object mniExit: TMenuItem
      Action = actExit
    end
  end
end
