inherited FrmPayCardView: TFrmPayCardView
  BorderStyle = bsSizeable
  Caption = 'View pay-card information'
  ClientHeight = 442
  ClientWidth = 832
  ParentFont = False
  Font.Height = -13
  Font.Name = 'Calibri'
  ExplicitWidth = 848
  ExplicitHeight = 481
  PixelsPerInch = 96
  TextHeight = 15
  inherited sbStatusBar: TsStatusBar
    Top = 422
    Width = 832
    ExplicitTop = 422
    ExplicitWidth = 832
  end
  object pnlHead: TsPanel [1]
    Left = 0
    Top = 0
    Width = 832
    Height = 169
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lblPleaseRead: THTMLabel
      AlignWithMargins = True
      Left = 97
      Top = 15
      Width = 760
      Height = 124
      Margins.Left = 15
      Margins.Top = 15
      Margins.Bottom = 30
      Align = alLeft
      HTMLText.Strings = (
        
          '<B><FONT size="12">{PLEASE_NOTE}</FONT></B><FONT size="11"><BR><' +
          'BR><UL>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<LI>{CHARGE_PER_VIEW}' +
          '<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<LI>{SECURITY_CODE_ONCE_' +
          'VISIBLE}</UL><BR><BR>{NUMBER_OF_VIEWS}.</FONT>')
      Images = DImages.cxLargeImagesFlat
      Transparent = True
      Version = '1.9.2.8'
      ExplicitHeight = 121
    end
    object imgWarning: TsImage
      Left = 0
      Top = 0
      Width = 82
      Height = 169
      Align = alLeft
      Center = True
      Picture.Data = {
        0B54504E474772617068696336240000424D3624000000000000360000002800
        0000300000003000000001002000000000000024000000000000000000000000
        000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C9899FF404A4BFF353535FF3232
        32FF323232FF303030FF2F2F2FFF2F2F2FFF2C2D2DFF2C2D2DFF2A2A2AFF2A2A
        2AFF2A2A2AFF282929FF282929FF272727FF272727FF252525FF252525FF2222
        22FF222222FF202121FF202121FF1F1F1FFF1F1F1FFF1C1C1CFF1C1C1CFF1C1C
        1CFF1C1C1CFF1A1A1AFF191919FF191919FF171717FF171717FF171717FF1515
        15FF151515FF131313FF131313FF101010FF172527FF6F898CFFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00808D8EFF5B5B5BFF686868FF6D6D6DFF6D6D
        6DFF6D6D6DFF6A6A6AFF6A6A6AFF686868FF686868FF656565FF656565FF6262
        62FF626262FF606060FF5F5F5FFF5C5C5CFF5C5C5CFF5B5B5BFF595959FF5757
        57FF545454FF545454FF525252FF515151FF4F4F4FFF4F4F4FFF4D4D4DFF4B4B
        4BFF494949FF494949FF464646FF454545FF434343FF404141FF3F3F3FFF3F3F
        3FFF3C3C3CFF3B3B3BFF383838FF323232FF1A1A1AFF0F0F0FFF5D6F74FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF0070797BFF828282FF787878FF808080FF8787
        87FF878787FF878787FF858585FF828282FF828282FF808080FF808080FF7B7B
        7BFF7B7B7BFF7B7B7BFF787878FF787878FF767676FF757575FF757575FF7272
        72FF717171FF6F6F6FFF6D6D6DFF6D6D6DFF6A6A6AFF686868FF666666FF6565
        65FF626262FF626262FF606060FF5F5F5FFF5C5C5CFF5B5B5BFF595959FF5757
        57FF545454FF525454FF525252FF575757FF4F4F4FFF1F1F1FFF172527FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00919191FF8A8A8AFF525252FF536B6DFF74BC
        C2FF74BCC2FF74BCC2FF74BCC2FF70BAC0FF70BAC0FF70BAC0FF6DB6BDFF68B5
        BFFF68B5BFFF68B5BFFF64B3BEFF62B2BEFF62B2BEFF5FB0BDFF5BAEBBFF5BAE
        BBFF5BAEBBFF55ABB9FF55ABB9FF55ABB9FF4FA8B8FF4FA8B8FF4FA8B8FF4AA5
        B5FF4AA5B5FF4AA5B5FF44A2B3FF44A2B3FF44A2B3FF44A2B3FF3B9CB0FF3B9C
        B0FF3B9CB0FF3B9CB0FF3B9CB0FF496C73FF5B5B5BFF323232FF121616FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00939B9CFF999999FF595959FF2B3738FF7AEA
        F4FF7DF2FCFF7BF2FCFF78F1FCFF77F0FCFF74EFFCFF73EFFCFF70EEFCFF6FED
        FCFF6CECFCFF6AECFCFF67EBFCFF67EBFCFF64EAFCFF63E9FCFF5FE8FCFF5BE2
        F6FF51B7C5FF47AEBFFF55D9EDFF55E4FCFF53E4FCFF50E4FCFF4FE3FCFF4DE2
        FCFF4BE2FCFF49E1FCFF47E0FCFF44DFFCFF42DFFCFF40DEFCFF3EDDFCFF3CDD
        FCFF3ADCFCFF38DBFCFF36D2F3FF364649FF4D4D4DFF2F2F2FFF1C2B2EFFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF0095A2A3FFACACACFF787878FF3B3B3BFF4C7C
        81FF7EF3FCFF7DF2FCFF7AF1FCFF78F1FCFF75F0FCFF74EFFCFF73EFFCFF70EE
        FCFF6FEDFCFF6CECFCFF69EBFCFF67EBFCFF64EAFCFF63E9FCFF51B7C5FF1A28
        2AFF131313FF101010FF141B1CFF3A96A6FF55E4FCFF53E4FCFF50E4FCFF4FE3
        FCFF4DE2FCFF4AE1FCFF49E1FCFF45E0FCFF44DFFCFF42DFFCFF3FDEFCFF3CDD
        FCFF3CDDFCFF3ADCFCFF297686FF404141FF454545FF202121FF465A5DFFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00C5C5C5FFAEB1B1FF999999FF5C5C5CFF2829
        29FF78DDE4FF7EF3FCFF7BF2FCFF7AF1FCFF77F0FCFF75F0FCFF74EFFCFF73EF
        FCFF6FEDFCFF6CECFCFF6AECFCFF69EBFCFF67EBFCFF64EAFCFF24393CFF1717
        17FF151515FF131313FF101010FF141B1CFF55E2F7FF53E4FCFF53E4FCFF4FE3
        FCFF4FE3FCFF4BE2FCFF4AE1FCFF47E0FCFF45E0FCFF42DFFCFF40DEFCFF3FDE
        FCFF3CDDFCFF3AC8E4FF363B3CFF4B4B4BFF3B3B3BFF141B1CFFBABABAFFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009FADADFFB5B5B5FF828282FF4343
        43FF416567FF80F3FCFF7DF2FCFF7BF2FCFF78F1FCFF77F0FCFF74EFFCFF73EF
        FCFF70EEFCFF6FEDFCFF6CECFCFF6AECFCFF67EBFCFF67EBFCFF233133FF1919
        19FF171717FF171717FF151515FF121616FF55D9EDFF55E4FCFF53E4FCFF50E4
        FCFF4FE3FCFF4DE2FCFF4BE2FCFF49E1FCFF47E0FCFF45E0FCFF42DFFCFF40DE
        FCFF3EDDFCFF33666FFF494949FF464646FF222222FF435356FFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A1A9AAFFA1A2A3FF6868
        68FF2A2A2AFF64BFC6FF7EF3FCFF7DF2FCFF7AF1FCFF78F1FCFF75F0FCFF74EF
        FCFF73EFFCFF70EEFCFF6FEDFCFF6CECFCFF6AECFCFF67EBFCFF3F848FFF1C1C
        1CFF1A1A1AFF191919FF171717FF33666FFF59E6FCFF57E5FCFF55E4FCFF53E4
        FCFF50E4FCFF4FE3FCFF4DE2FCFF4AE1FCFF49E1FCFF45E0FCFF44DFFCFF42DF
        FCFF39B1C9FF3F3F3FFF4F4F4FFF383838FF1C2B2EFFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADB5B6FFB5B5B5FF8A8A
        8AFF4B4B4BFF2E4144FF80EFF8FF7EF3FCFF7BF2FCFF7AF1FCFF77F0FCFF75F0
        FCFF74EFFCFF73EFFCFF70EEFCFF6CECFCFF6AECFCFF69EBFCFF67EBFCFF4BA0
        ACFF325C62FF325C62FF4A939DFF5BE2F6FF5BE6FCFF58E5FCFF57E5FCFF53E4
        FCFF53E4FCFF4FE3FCFF4FE3FCFF4BE2FCFF4AE1FCFF49E1FCFF45E0FCFF43DD
        F9FF375458FF4F4F4FFF464646FF1F1F1FFF70797BFFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099A6A6FFAAAA
        AAFF727272FF323232FF56969BFF80F3FCFF7DF2FCFF7BF2FCFF78F1FCFF77F0
        FCFF74EFFCFF73EFFCFF70EEFCFF6FEDFCFF6CECFCFF6AECFCFF67EBFCFF67EB
        FCFF64EAFCFF63E9FCFF61E8FCFF5EE7FCFF5CE7FCFF59E6FCFF58E5FCFF55E4
        FCFF53E4FCFF50E4FCFF4FE3FCFF4DE2FCFF4BE2FCFF49E1FCFF47E0FCFF3A96
        A6FF464646FF515151FF363636FF24393CFFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBFBFFFB5B5
        B5FF919191FF545454FF292F2FFF7BE6EEFF7EF3FCFF7DF2FCFF7AF1FCFF78F1
        FCFF75F0FCFF74EFFCFF73EFFCFF70EEFCFF6FEDFCFF6CECFCFF6AECFCFF67EB
        FCFF64EAFCFF63E9FCFF63E9FCFF5FE8FCFF5EE7FCFF5BE6FCFF59E6FCFF57E5
        FCFF55E4FCFF53E4FCFF50E4FCFF4FE3FCFF4DE2FCFF4BE2FCFF47D4EEFF3B46
        47FF545454FF464646FF202121FF929596FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099A6
        A6FFAFAFAFFF7B7B7BFF3C3C3CFF4C7C81FF80F3FCFF7EF3FCFF7BF2FCFF7AF1
        FCFF77F0FCFF75F0FCFF74EFFCFF73EFFCFF70EEFCFF6CECFCFF6AECFCFF69EB
        FCFF5CCDDBFF5CCDDBFF63E9FCFF61E8FCFF5FE8FCFF5CE7FCFF5BE6FCFF58E5
        FCFF57E5FCFF53E4FCFF53E4FCFF50E4FCFF4FE3FCFF4BE2FCFF3F848FFF4F4F
        4FFF525454FF323232FF2E4144FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C5C5
        C5FFA9AFAFFF999999FF606060FF292B2BFF75D6DDFF80F3FCFF7DF2FCFF7BF2
        FCFF78F1FCFF77F0FCFF75F0FCFF73EFFCFF70EEFCFF6FEDFCFF6CECFCFF4A93
        9DFF282929FF272727FF4B9BA7FF63E9FCFF61E8FCFF5EE7FCFF5CE7FCFF59E6
        FCFF58E5FCFF55E4FCFF53E4FCFF50E4FCFF4FE3FCFF4CCBE2FF434546FF5959
        59FF454545FF222B2CFFB7B8B8FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00A1A9AAFFB2B2B2FF858585FF454545FF375458FF81F4FCFF7EF3FCFF7DF2
        FCFF7AF1FCFF78F1FCFF75F0FCFF74EFFCFF73EFFCFF70EEFCFF6FEDFCFF3646
        49FF2A2A2AFF2A2A2AFF334446FF63E9FCFF63E9FCFF5FE8FCFF5EE7FCFF5BE6
        FCFF59E6FCFF57E5FCFF55E4FCFF53E4FCFF50E4FCFF33666FFF575757FF5454
        54FF2F2F2FFF526062FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF009AA2A3FFA1A2A3FF6A6A6AFF2C2D2DFF62B1B7FF80F3FCFF7EF3
        FCFF7BF2FCFF7AF1FCFF78F1FCFF75F0FCFF74EFFCFF73EFFCFF6CDEEBFF3030
        30FF2F2F2FFF2C2D2DFF2A2A2AFF62E1F3FF63E9FCFF61E8FCFF5FE8FCFF5CE7
        FCFF5BE6FCFF58E5FCFF57E5FCFF53E4FCFF47AEBFFF4D4D4DFF5B5B5BFF4343
        43FF263639FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00B0B7B7FFB5B5B5FF8E8E8EFF4F4F4FFF2C3C3DFF80EFF8FF80F3
        FCFF7EF3FCFF7BF2FCFF78F1FCFF77F0FCFF75F0FCFF73EFFCFF68CAD5FF3232
        32FF323232FF2F2F2FFF2C2D2DFF5CCDDBFF64EAFCFF63E9FCFF61E8FCFF5EE7
        FCFF5CE7FCFF59E6FCFF58E5FCFF55E2F7FF465A5DFF5F5F5FFF545454FF2A2A
        2AFF788082FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF009AA2A3FFAAAAAAFF757575FF363636FF56969BFF81F4
        FCFF7EF3FCFF7DF2FCFF7BF2FCFF78F1FCFF75F0FCFF74EFFCFF64BFC6FF3636
        36FF353535FF323232FF303030FF51B7C5FF67EBFCFF63E9FCFF63E9FCFF5FE8
        FCFF5EE7FCFF5CE7FCFF59E6FCFF4B9BA7FF525454FF5F5F5FFF3F3F3FFF2C3C
        3DFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00BDC0C0FFB1B2B2FF969696FF595959FF2C3333FF7BE6
        EEFF81F4FCFF7EF3FCFF7BF2FCFF7AF1FCFF78F1FCFF75F0FCFF61B1BAFF3838
        38FF383838FF353535FF323232FF5AA3ABFF67EBFCFF64EAFCFF63E9FCFF61E8
        FCFF5FE8FCFF5CE7FCFF55D9EDFF4A5555FF626262FF515151FF292F2FFFA1A2
        A3FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0099A6A6FFAFAFAFFF808080FF3F3F3FFF4773
        76FF81F4FCFF80F3FCFF7EF3FCFF7BF2FCFF78F1FCFF77F0FCFF5AA3ABFF3C3C
        3CFF3B3B3BFF383838FF363636FF4A939DFF69EBFCFF67EBFCFF64EAFCFF63E9
        FCFF61E8FCFF5FE8FCFF518C91FF5C5C5CFF5F5F5FFF3B3B3BFF3A4F51FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00C5C5C5FFA4AAAAFF9E9E9EFF656565FF2C2D
        2DFF75CDD3FF81F4FCFF7EF3FCFF7DF2FCFF7BF2FCFF78F1FCFF56969BFF3F3F
        3FFF3C3C3CFF3B3B3BFF383838FF4D8489FF6AECFCFF67EBFCFF67EBFCFF63E9
        FCFF63E9FCFF5CCDDBFF525454FF666666FF4F4F4FFF2B3738FFC2C2C2FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A1A9AAFFB2B2B2FF878787FF4949
        49FF3A4F51FF83F4FCFF81F4FCFF7EF3FCFF7BF2FCFF7AF1FCFF5A898EFF4041
        41FF3F3F3FFF3C3C3CFF3C3C3CFF477376FF6CECFCFF69EBFCFF67EBFCFF64EA
        FCFF63E9FCFF496C73FF656565FF606060FF383838FF636E70FFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009EA6A6FFA5A5A5FF7171
        71FF323232FF5FABB0FF81F4FCFF80F3FCFF7EF3FCFF7BF2FCFF4C7C81FF4545
        45FF434343FF404141FF3F3F3FFF416567FF6CECFCFF6AECFCFF69EBFCFF67EB
        FCFF55ABB9FF5B5B5BFF686868FF4D4D4DFF2B3738FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AEB1B1FFB1B2B2FF9191
        91FF515151FF323E3FFF80EFF8FF81F4FCFF7EF3FCFF7DF2FCFF567477FF4646
        46FF454545FF434343FF404141FF444F50FF6FEDFCFF6CECFCFF6AECFCFF67E7
        F8FF546769FF6A6A6AFF5F5F5FFF353737FF828787FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0095A2A3FFAAAA
        AAFF7B7B7BFF3B3B3BFF518C91FF83F4FCFF81F4FCFF7EF3FCFF536B6DFF4B4B
        4BFF494949FF464646FF454545FF434343FF70EEFCFF6FEDFCFF6CECFCFF5AA3
        ABFF626262FF6A6A6AFF464646FF364649FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C2C2C2FFAEB1
        B1FF999999FF5F5F5FFF2C3333FF78DDE4FF81F4FCFF80F3FCFF526062FF4D4D
        4DFF4B4B4BFF494949FF464646FF454545FF71E6F3FF6FEDFCFF6CDEEBFF5B62
        62FF6F6F6FFF5C5C5CFF363B3CFFAFAFAFFFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0095A2
        A3FFACACACFF878787FF454545FF416567FF85F5FCFF81F4FCFF545C5DFF4F4F
        4FFF4F4F4FFF4D4D4DFF4B4B4BFF494949FF6CDEEBFF70EEFCFF5A898EFF6A6A
        6AFF6A6A6AFF434343FF4D5D5FFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00A4ACACFF9E9E9EFF6A6A6AFF303030FF6EC2C8FF83F4FCFF545C5DFF5252
        52FF515151FF4F4F4FFF4D4D4DFF4B4B4BFF71E6F3FF68CAD5FF626262FF7171
        71FF595959FF323E3FFFC2C2C2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00A1A9AAFFB1B2B2FF8E8E8EFF4D4D4DFF375458FF85F5FCFF627678FF5454
        54FF525454FF515151FF4F4F4FFF526062FF75F0FCFF627678FF727272FF6A6A
        6AFF3F3F3FFF636E70FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF009AA2A3FFA5A5A5FF757575FF383838FF5AA3ABFF75CDD3FF5B62
        62FF575757FF545454FF525252FF66A7ADFF68B5BFFF6A6A6AFF727272FF5454
        54FF334446FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00B7B8B8FFAEB1B1FF969696FF595959FF323E3FFF80EAF2FF80EA
        F2FF70BAC0FF6DB6BDFF75CDD3FF7AEAF4FF627678FF767676FF666666FF4041
        41FF939798FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0099A6A6FFACACACFF828282FF404141FF4D8489FF85F5
        FCFF83F4FCFF80F3FCFF7EF3FCFF679FA4FF717171FF757575FF4D4D4DFF4353
        56FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00C5C5C5FFA9AFAFFF9E9E9EFF656565FF323535FF75D6
        DDFF85F5FCFF81F4FCFF78DDE4FF696C6DFF787878FF656565FF3C4344FFBABA
        BAFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF009EA6A6FFACACACFF8A8A8AFF4B4B4BFF4165
        67FF85F5FCFF83F4FCFF6F898CFF787878FF727272FF4B4B4BFF545C5DFFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009DA8A8FFA5A5A5FF727272FF3838
        38FF72C7CCFF75CDD3FF717171FF7B7B7BFF5F5F5FFF3B4647FFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A8B0B0FFAFAFAFFF969696FF5454
        54FF444F50FF525F60FF7B7B7BFF727272FF494949FF788082FFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009DA8A8FFACACACFF8787
        87FF686868FF6F6F6FFF7B7B7BFF5C5C5CFF4A5555FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C2C2C2FFA4ACACFFACAC
        ACFF999999FF878787FF717171FF4A5555FFBABABAFFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBFBFFF8C98
        99FF919191FF757575FF636E70FFB7B8B8FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00}
      Transparent = True
      ImageIndex = 0
      SkinData.SkinSection = 'CHECKBOX'
    end
  end
  object pnlClient: TsPanel [2]
    Left = 0
    Top = 169
    Width = 832
    Height = 210
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object browser: TsWebBrowser
      Left = 0
      Top = 0
      Width = 832
      Height = 210
      Align = alClient
      TabOrder = 0
      ExplicitTop = -2
      ExplicitWidth = 869
      ExplicitHeight = 342
      ControlData = {
        4C000000FD550000B41500000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
  inherited pnlButtons: TsPanel
    Top = 379
    Width = 832
    ParentColor = True
    ExplicitTop = 379
    ExplicitWidth = 832
    inherited btnOK: TsButton
      Left = 516
      OnClick = btnOKClick
      ExplicitLeft = 516
    end
    inherited btnCancel: TsButton
      Left = 622
      ExplicitLeft = 622
    end
    inherited btnClose: TsButton
      Left = 728
      ExplicitLeft = 728
    end
  end
  inherited psRoomerBase: TcxPropertiesStore
    Left = 768
  end
  inherited cxsrRoomerStyleRepository: TcxStyleRepository
    Left = 696
    PixelsPerInch = 96
    inherited dxssRoomerGridReportLink: TdxGridReportLinkStyleSheet
      BuiltIn = True
    end
    inherited cxssRoomerGridTableView: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
  end
end
