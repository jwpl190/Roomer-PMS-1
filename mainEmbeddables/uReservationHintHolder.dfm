object FrmReservationHintHolder: TFrmReservationHintHolder
  Left = 0
  Top = 0
  Caption = 'FrmReservationHintHolder'
  ClientHeight = 700
  ClientWidth = 666
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHint: TsPanel
    Left = 200
    Top = 8
    Width = 435
    Height = 578
    AutoSize = True
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentFont = False
    TabOrder = 0
    OnMouseDown = pnlHintMouseDown
    OnMouseEnter = pnlHintMouseEnter
    OnMouseUp = pnlHintMouseUp
    SkinData.SkinSection = 'PANEL_LOW'
    object __hlblTotalInvoice: THTMLabel
      Left = 252
      Top = 260
      Width = 154
      Height = 94
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      HTMLText.Strings = (
        '<B><FONT color="#FF0000">NO PAYMENT GUARANTEE</FONT></B>')
      ParentFont = False
      PopupMenu = PopupMenu1
      Transparent = True
      Version = '1.9.2.7'
    end
    object clbStatus: TsLabel
      Left = 10
      Top = 10
      Width = 121
      Height = 18
      AutoSize = False
      Caption = 'Status'
      ParentFont = False
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object __lbStatus: TsLabel
      Left = 164
      Top = 10
      Width = 67
      Height = 15
      Caption = 'Due to arrive'
      ParentFont = False
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object clbName: TsLabel
      Left = 10
      Top = 25
      Width = 121
      Height = 18
      AutoSize = False
      Caption = 'Name'
      ParentFont = False
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object __lbName: TsLabel
      Left = 142
      Top = 25
      Width = 270
      Height = 21
      AutoSize = False
      Caption = 'John Smith'
      ParentFont = False
      PopupMenu = PopupMenu1
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object clbRoom: TsLabel
      Left = 10
      Top = 59
      Width = 121
      Height = 18
      AutoSize = False
      Caption = 'Room'
      ParentFont = False
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object __lbRoom: TsLabel
      Left = 142
      Top = 59
      Width = 270
      Height = 21
      AutoSize = False
      Caption = '301 / Double Extra'
      ParentFont = False
      PopupMenu = PopupMenu1
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object clbGuests: TsLabel
      Left = 10
      Top = 42
      Width = 121
      Height = 18
      AutoSize = False
      Caption = 'Guests'
      ParentFont = False
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object __lbGuests: TsLabel
      Left = 142
      Top = 42
      Width = 270
      Height = 21
      AutoSize = False
      Caption = '2 adults, 1 child'
      ParentFont = False
      PopupMenu = PopupMenu1
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object clbChannel: TsLabel
      Left = 10
      Top = 110
      Width = 121
      Height = 18
      AutoSize = False
      Caption = 'Channel'
      ParentFont = False
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object __lbChannel: TsLabel
      Left = 142
      Top = 110
      Width = 270
      Height = 21
      AutoSize = False
      Caption = 'Booking.com'
      ParentFont = False
      PopupMenu = PopupMenu1
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object clbRatePlan: TsLabel
      Left = 10
      Top = 160
      Width = 121
      Height = 18
      AutoSize = False
      Caption = 'Rate plan'
      ParentFont = False
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object __lbRatePlan: TsLabel
      Left = 142
      Top = 160
      Width = 49
      Height = 15
      Caption = 'Early bird'
      ParentFont = False
      PopupMenu = PopupMenu1
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object __lbDeparture: TsLabel
      Left = 142
      Top = 93
      Width = 270
      Height = 21
      AutoSize = False
      Caption = 'Tue, Jun 17, 2015 (3 nights)'
      ParentFont = False
      PopupMenu = PopupMenu1
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object clbDeparture: TsLabel
      Left = 10
      Top = 93
      Width = 121
      Height = 18
      AutoSize = False
      Caption = 'Departure'
      ParentFont = False
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object clbArrival: TsLabel
      Left = 10
      Top = 76
      Width = 121
      Height = 18
      AutoSize = False
      Caption = 'Arrival'
      ParentFont = False
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object __lbArrival: TsLabel
      Left = 142
      Top = 76
      Width = 270
      Height = 21
      AutoSize = False
      Caption = 'Sat, Jun 14, 2015'
      ParentFont = False
      PopupMenu = PopupMenu1
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object clbRate: TsLabel
      Left = 10
      Top = 176
      Width = 121
      Height = 18
      AutoSize = False
      Caption = 'Rate'
      ParentFont = False
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object shpStatus: TShape
      Left = 142
      Top = 11
      Width = 15
      Height = 16
      Brush.Color = clRed
      Pen.Color = clRed
      Shape = stCircle
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
    end
    object clbTotal: TsLabel
      Left = 127
      Top = 176
      Width = 119
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total'
      ParentFont = False
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object clblDaily: TsLabel
      Left = 291
      Top = 176
      Width = 115
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Daily avg.'
      ParentFont = False
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object __hlblTotal: THTMLabel
      Left = 100
      Top = 190
      Width = 146
      Height = 64
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      HTMLText.Strings = (
        
          '<P align="right">'#8364' 123.000,00<br><U>(10%) '#8364' -12.300,00</U><br><B' +
          '>'#8364' 11.000,00</B><br></P>')
      ParentFont = False
      PopupMenu = PopupMenu1
      Transparent = True
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Version = '1.9.2.7'
    end
    object __hlblDaily: THTMLabel
      Left = 276
      Top = 190
      Width = 130
      Height = 64
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      HTMLText.Strings = (
        
          '<P align="right">'#8364' 12.300,00<br><U>- (10) '#8364' 1.230,00</U><br><B>'#8364 +
          ' 1.100,00</B></P>')
      ParentFont = False
      PopupMenu = PopupMenu1
      Transparent = True
      Version = '1.9.2.7'
    end
    object Shape1: TShape
      Left = 145
      Top = 190
      Width = 266
      Height = 1
      Pen.Color = clGray
    end
    object sLabel1: TsLabel
      Left = 10
      Top = 127
      Width = 121
      Height = 18
      AutoSize = False
      Caption = 'Booking IDs'
      ParentFont = False
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object __hlbBookingIds: THTMLabel
      Left = 142
      Top = 127
      Width = 270
      Height = 42
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      HTMLText.Strings = (
        
          'Channel: <B>123456789</B><br>Roomer: <B>123456</B> (Room: <B>123' +
          '4567</B>)<br>')
      ParentFont = False
      PopupMenu = PopupMenu1
      Transparent = True
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Version = '1.9.2.7'
    end
    object Shape2: TShape
      Left = 12
      Top = 379
      Width = 399
      Height = 1
      Pen.Color = clGray
    end
    object clbNotes: TsLabel
      Left = 48
      Top = 370
      Width = 121
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Room notes'
      Color = clWhite
      ParentColor = False
      ParentFont = False
      Transparent = False
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2302755
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object sLabel2: TsLabel
      Left = 250
      Top = 370
      Width = 121
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Payment Info'
      Color = clWhite
      ParentColor = False
      ParentFont = False
      Transparent = False
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2302755
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object clbInvoiceStatus: TsLabel
      Left = 10
      Top = 246
      Width = 121
      Height = 18
      AutoSize = False
      Caption = 'Invoice status'
      ParentFont = False
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object HTMLabel1: THTMLabel
      Left = 100
      Top = 260
      Width = 146
      Height = 94
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      HTMLText.Strings = (
        
          '<P align="right">Sales Items :<br>Stay taxes :<br>Room rent :<br' +
          '><U>Payments :</U><br><B>Total :</B><br></P>')
      ParentFont = False
      PopupMenu = PopupMenu1
      Transparent = True
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Version = '1.9.2.7'
    end
    object sLabel5: TsLabel
      Left = 291
      Top = 246
      Width = 115
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total'
      ParentFont = False
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object clbRoomRentInvoice: TsLabel
      Left = 16
      Top = 262
      Width = 103
      Height = 57
      AutoSize = False
      Caption = 'Room rent Invoice: 12345'
      ParentFont = False
      WordWrap = True
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object hlbGuarantee: THTMLabel
      Left = 137
      Top = 352
      Width = 240
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      HTMLText.Strings = (
        '<B><FONT color="#FF0000">NO PAYMENT GUARANTEE</FONT></B>')
      ParentFont = False
      PopupMenu = PopupMenu1
      Transparent = True
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Version = '1.9.2.7'
    end
    object sLabel3: TsLabel
      Left = 10
      Top = 352
      Width = 121
      Height = 18
      AutoSize = False
      Caption = 'Payment guarantee'
      ParentFont = False
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object Shape3: TShape
      Left = 145
      Top = 260
      Width = 266
      Height = 1
      Pen.Color = clGray
    end
    object __labBlockNote: TsLabel
      Left = 48
      Top = 534
      Width = 363
      Height = 34
      AutoSize = False
    end
    object __lbNotes: TsMemo
      Left = 13
      Top = 393
      Width = 209
      Height = 117
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      Lines.Strings = (
        'Will arrive later. Needs a extra bed '
        'for the child.')
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Text = 'Will arrive later. Needs a extra bed for the child.'
      SkinData.SkinSection = 'EDIT'
    end
    object __lbPAymentNotes: TsMemo
      Left = 224
      Top = 393
      Width = 201
      Height = 117
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      Lines.Strings = (
        'Will arrive later. Needs a extra bed '
        'for the child.')
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
      OnMouseDown = pnlHintMouseDown
      OnMouseUp = pnlHintMouseUp
      Text = 'Will arrive later. Needs a extra bed for the child.'
      SkinData.SkinSection = 'EDIT'
    end
    object cbxBlocked: TsCheckBox
      Left = 13
      Top = 511
      Width = 170
      Height = 17
      Caption = 'Room is blocked from move'
      TabOrder = 2
      ImgChecked = 0
      ImgUnchecked = 0
      ReadOnly = True
    end
  end
  object timHide: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = timHideTimer
    Left = 504
    Top = 512
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 72
    Top = 392
    object C1: TMenuItem
      Caption = 'Copy value to clipboard'
      OnClick = C1Click
    end
  end
end
