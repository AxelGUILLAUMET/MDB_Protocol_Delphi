object FHWSetting: TFHWSetting
  Left = 895
  Top = 255
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Hardware settings'
  ClientHeight = 115
  ClientWidth = 192
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 4
    Top = 4
    Width = 185
    Height = 59
    Caption = 'MEI CF7000 COM Port'
    TabOrder = 0
    object MDB_COMPORT_Selector: TComComboBox
      Left = 20
      Top = 22
      Width = 145
      Height = 21
      ComPort = FMainForm.MDB_COMPORT
      ComProperty = cpPort
      Text = ''
      Style = csDropDownList
      ItemIndex = -1
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 4
    Top = 66
    Width = 185
    Height = 43
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 102
      Top = 6
      Width = 75
      Height = 31
      Caption = 'OK'
      Glyph.Data = {
        0E060000424D0E06000000000000360000002800000016000000160000000100
        180000000000D805000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF2D7A3001580403670A0367080364080162
        060149031E5421688C6BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
        FFFF00FFFF00FFFF00FFFF00FF1E7C2204730A0C951F0EAF270CB3230BB21F08
        B01807B01503AE0F01980901680610491276987AFF00FFFF00FFFF00FFFF00FF
        0000FF00FFFF00FFFF00FFFF00FF03740810972718B83B16B73712B53011B52D
        0EB4250CB3220AB21C07B01606AF1302AD0C01980901530459825CFF00FFFF00
        FFFF00FF0000FF00FFFF00FFFF00FF037B091BAE411DBA481CBA4419B83D18B8
        3A15B63412B52F10B42B0CB3230BB32108B11907B01604AF1001A60A01540459
        825CFF00FFFF00FF0000FF00FFFF00FF1085121EAE4624BD5622BD521FBB4B1D
        BA471BB94152CA6DF1FBF3F0FAF23EC3550FB4280CB3220AB21E07B01706B015
        03A80D01580485A489FF00FF0000FF00FF3C9F3E17A1362AC06229C05F26BE59
        23BD5421BC501EBA498EDDA3FFFFFFFFFFFFF0FAF23FC35611B52C0DB3240CB3
        2109B11B07B016059C10105412FF00FF0000FF00FF048B0A2CBE652FC26C2CC1
        6729C06128BF5E24BE5623BD534AC86FF1FBF3FFFFFFFFFFFFF0FAF23FC35712
        B52F0FB4290CB3230BB21F08B01803710A769E7A000076C07A12A22A2FC26C2F
        C26C2FC26C2EC26B2BC16429C06026BF5B23BD554CC974F1FBF4FFFFFFFFFFFF
        F1FBF342C45C12B53011B52D0EB4250CB3220795161E662200003DAC3E21B34B
        2FC26C2FC26C2FC26C2FC26C2FC26C2DC1682AC06228C05F25BE584CC974F1FB
        F4FFFFFFFFFFFFF1FBF343C55F15B63412B52F10B42B0CB3230157040000109E
        1124B7522FC26C2FC26C63D19097E1B597E1B597E1B596E0B494E0B094E0AF92
        DFABBAEAC9FFFFFFFFFFFFFFFFFFF1FBF344C56017B73813B63112B52E05750E
        0000019C022FC26C2FC26C2FC26C97E1B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FBF344C56118B83B15B7
        35067910000001A1022CC0652FC26C2FC26C97E1B5FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5F2DE2BBE531B
        B94318B83C077F1200001FAE202BBC562FC26C2FC26C63D19097E1B597E1B597
        E1B597E1B597E1B597E1B597E1B5D8F4E3FFFFFFFFFFFFFFFFFFD6F3E031C160
        22BC521EBB491DBA4604760C00004CC14E33BE4D4CCA7E34C36F2FC26C2FC26C
        2FC26C2FC26C2FC26C2FC26C2FC26C7DD9A3FFFFFFFFFFFFFFFFFFD8F4E337C4
        6C28C05F25BE5823BD541EB749017204000095D89720B6286ED49256CD8343C8
        782FC26C2FC26C2FC26C2FC26C2FC26C7DD9A3FFFFFFFFFFFFFFFFFFD8F4E33C
        C6752FC26B2CC16529C06027BF5C17A3374B9D4E0000FF00FF10B41067D07B7C
        D89B64D18C4FCB8039C5722FC26C2FC26C56CD87FFFFFFFFFFFFFFFFFFD8F4E3
        3CC6752FC26C2FC26C2FC26C2EC26A2AC06206840FFF00FF0000FF00FF78D379
        1FBA239DE1B085DBA173D5955BCE8645C87A31C36E63D190FFFFFFFFFFFFD8F4
        E33CC6752FC26C2FC26C2FC26C2FC26C2FC26C1BA63E3C9E3EFF00FF0000FF00
        FFFF00FF2EC12E45C649ACE5B996DFAC7ED99D69D38F54CC823BC57497E1B5B1
        E8C83CC6752FC26C2FC26C2FC26C2FC26C2FC26C26B758108E12FF00FFFF00FF
        0000FF00FFFF00FFFF00FF2EC32E4CCB4DB8E8C1A2E2B38CDCA677D79860D089
        4CCA7E34C36F2FC26C2FC26C2FC26C2FC26C2FC26C21B34B04910AFF00FFFF00
        FFFF00FF0000FF00FFFF00FFFF00FFFF00FF2EC42E27C22794DF97AEE5BB98E0
        AD82DAA06ED49256CD8343C8782FC26C2FC26C2CC06515AB30109B11FF00FFFF
        00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FF78D67910BC1027
        C02768D06D7BD6867BD79174D59146C6672FBC4F12AF2A04A1095BBD5DFF00FF
        FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF4CCA4D2EBF2E01B10101AE0110AF113DBC3E87D088FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0000}
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 10
      Top = 6
      Width = 75
      Height = 31
      Caption = 'Cancel'
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        1800000000007806000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
        0000FF00FFFF00FFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECE5FF00
        FFFF00FFFF00FF000000FF00FFFF00FFD0D6EE2844B50D2BA61130AC1231AB14
        32A91230A91332AC1332AD1031AE0D30B10A2EB2082DB4062AB10328B10127B4
        0024AE1F3CACCFD4EAFF00FFFF00FF000000FF00FFFDEDE52849CD1338CC1B3E
        CC2144CF2547CF2647CF2446CF2347D02146D11E45D21B45D51642D51340D60E
        3DD50939D60435D50130D1002AC21F3CABFFFFFFFF00FF000000FF00FFFFFFFF
        0E37D81C43DB284CDD2F52DE3355DF3457E03155E03156E02E56E12A55E22553
        E41F50E4194CE51348E50D43E5073EE40238E0002FD10023AAFFFFFFFF00FF00
        0000FF00FFFFFFFF143CDD254BE03154E1395BE33D5EE43D5FE43B5EE4395EE5
        375EE5325DE62C5BE72557E81F54E91950E9114AE90B44E8053DE40233D60126
        AFFFFFFFFF00FF000000FF00FFFFFFFF1840DE2E51E13A5CE34262E4B5C1F5FF
        FFFF4365E64165E63D64E63862E73260E82A5CE92459EAFFFFFFA1B8F70E48E9
        0940E50536D70227B0FFFFFFFF00FF000000FF00FFFFFFFF1E45DF3658E24262
        E44967E5FFFFFFFFFFFFFFFFFF4568E64167E73B64E73562E82D5EEAFFFFFFFF
        FFFFFFFFFF114AE90D44E60B3BD7062BB1FFFFFFFF00FF000000FF00FFFFFFFF
        254BE03D5EE34867E54E6CE6506DE6FFFFFFFFFFFFFFFFFF4268E73C65E73662
        E8FFFFFFFFFFFFFFFFFF1950E9164CE81347E4103FD80A2DB1FFFFFFFF00FF00
        0000FF00FFFFFFFF2B4FE14463E44E6BE6526FE7536FE7516EE6FFFFFFFFFFFF
        FFFFFF3D65E7FFFFFFFFFFFFF1F5FE2154E81B50E8184DE7184AE41642D70F31
        B2FFFFFFFF00FF000000FF00FFFFFFFF3254E24B69E55470E75671E75570E852
        6FE74D6CE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2655E72152E71C4EE61C4DE6
        1C4CE31C46D61233B0FFFFFFFF00FF000000FF00FFFFFFFF3759E3516DE75772
        E85973E85771E7526EE64D6AE64767E5FFFFFFFFFFFFFFFFFF2C57E52653E522
        50E51E4DE51F4DE5214EE22149D61635AFFFFFFFFF00FF000000FF00FFFFFFFF
        3C5DE35974E85D77E85D76E85972E7536FE64E6BE5FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF2751E4234FE4204CE3224DE3254FE1254AD51937AFFFFFFFFF00FF00
        0000FF00FFFFFFFF4665E5607AE8627CE8607AE85B74E8546EE7FFFFFFFFFFFF
        FFFFFF3A5CE3FFFFFFFFFFFFFFFFFF244DE2224BE2254DE22950E0294CD41B39
        AEFFFFFFFF00FF000000FF00FFFFFFFF4665E56881E96A83EA657EE95E77E8FF
        FFFFFFFFFFFFFFFF4361E43D5DE43658E3FFFFFFFFFFFFFFFFFF274EE22A50E2
        2C51E02A4DD31C39ADFFFFFFFF00FF000000FF00FFFFFFFF4D6AE66E87EB708A
        EB6A83EAFFFFFFFFFFFFFFFFFF4D68E54764E4405FE43A5BE33456E2FFFFFFFF
        FFFFFFFFFF2D52E22E52DF2C4DD31D3AADFFFFFFFF00FF000000FF00FFFFFFFF
        526FE77991EC7C93EC718AEBC2CCF7FFFFFF5972E7536DE74D68E54664E4415F
        E43A5BE33859E3FFFFFFADBBF33155E23053DF2C4ED31D3AADFFFFFFFF00FF00
        0000FF00FFFFFFFF5874E8899DEE8DA1EF7F95ED718AEB6A83EA647DE95E78E8
        5973E7546FE7516DE64B68E54A68E54463E43F60E43A5CE33456E02A4CD21836
        ACFFFFFFFF00FF000000FF00FFFFFFFF657FE997A9F09AACF1899DEE7A91EC72
        8BEB6D85EA6881E9657EE8627CE9617BE95D77E85974E8526FE64C6AE54363E4
        3759E1284AD21533AAFFFFFFFF00FF000000FF00FFFFFFFF768DEC90A3EF94A6
        F0859AEE758DEB6E87EA6881EA667FE9627CE95F79E85E79E85975E85672E750
        6EE64968E53F60E43255E02346D0304BB6FAEAE5FF00FF000000FF00FFFF00FF
        DCE1FA738BEB607BE95571E74D6AE64866E54261E44463E43E5FE43E5FE43B5C
        E33B5CE33356E23356E23053E2284DE01F45DC3453D0D2D8EFFF00FFFF00FF00
        0000FF00FFFF00FFFF00FFFBECE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF000000}
      TabOrder = 0
      OnClick = BitBtn2Click
    end
  end
end
