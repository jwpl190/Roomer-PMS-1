object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'TAdvTrackBar demo application'
  ClientHeight = 355
  ClientWidth = 565
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 565
    Height = 355
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Office trackbar'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 3
        Width = 454
        Height = 190
        Caption = 'Office 2003 && Office 2007 trackbars'
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 56
          Height = 13
          Caption = 'Office 2003'
        end
        object Label2: TLabel
          Left = 215
          Top = 24
          Width = 56
          Height = 13
          Caption = 'Office 2007'
        end
        object AdvTrackBar1: TAdvTrackBar
          Left = 16
          Top = 37
          Width = 177
          Height = 36
          BorderColor = clNone
          BorderColorDisabled = clBlack
          Buttons.BorderColor = 9262895
          Buttons.BorderColorHot = 10079963
          Buttons.BorderColorDown = 4548219
          Buttons.Color = 16644855
          Buttons.ColorTo = 16178633
          Buttons.ColorHot = 15465983
          Buttons.ColorHotTo = 11332863
          Buttons.ColorDown = 7778289
          Buttons.ColorDownTo = 4296947
          Buttons.ColorMirror = clWhite
          Buttons.ColorMirrorTo = 14727318
          Buttons.ColorMirrorHot = 5888767
          Buttons.ColorMirrorHotTo = 10807807
          Buttons.ColorMirrorDown = 946929
          Buttons.ColorMirrorDownTo = 5021693
          Buttons.GradientMirror = ggVertical
          Buttons.Visible = True
          Buttons.Spacing = 5
          ColorTo = clNone
          ColorDisabled = clBlack
          ColorDisabledTo = clBlack
          Direction = gdHorizontal
          Color = clNone
          Slider.BorderColor = 12752500
          Slider.BorderColorDisabled = clBlack
          Slider.Color = clWhite
          Slider.ColorTo = clBlack
          Slider.ColorDisabled = clBlack
          Slider.ColorDisabledTo = clBlack
          Slider.ColorCompleted = clNone
          Slider.ColorCompletedTo = clNone
          Slider.ColorCompletedDisabled = clNone
          Slider.ColorCompletedDisabledTo = clNone
          Slider.Direction = gdHorizontal
          Slider.Offset = 13
          TabOrder = 0
          Thumb.BorderColor = 10317632
          Thumb.BorderColorHot = 10079963
          Thumb.BorderColorDown = 4548219
          Thumb.BorderColorDisabled = clGray
          Thumb.Color = 15916488
          Thumb.ColorTo = 16044731
          Thumb.ColorDown = 7778289
          Thumb.ColorDownTo = 4296947
          Thumb.ColorHot = 15465983
          Thumb.ColorHotTo = 11332863
          Thumb.ColorDisabled = clBlack
          Thumb.ColorDisabledTo = clBlack
          Thumb.ColorMirror = clWhite
          Thumb.ColorMirrorTo = 14462601
          Thumb.ColorMirrorHot = 5888767
          Thumb.ColorMirrorHotTo = 10807807
          Thumb.ColorMirrorDown = 946929
          Thumb.ColorMirrorDownTo = 5021693
          Thumb.ColorMirrorDisabled = clBlack
          Thumb.ColorMirrorDisabledTo = clBlack
          Thumb.Gradient = ggRadial
          Thumb.GradientMirror = ggRadial
          Thumb.Shape = tsPointer
          TickMark.Color = clBlack
          TickMark.ColorDisabled = clBlack
          TickMark.Font.Charset = DEFAULT_CHARSET
          TickMark.Font.Color = clWindowText
          TickMark.Font.Height = -11
          TickMark.Font.Name = 'MS Sans Serif'
          TickMark.Font.Style = []
          TrackHint = False
          TrackLabel.Font.Charset = DEFAULT_CHARSET
          TrackLabel.Font.Color = clWindowText
          TrackLabel.Font.Height = -11
          TrackLabel.Font.Name = 'Tahoma'
          TrackLabel.Font.Style = []
          TrackLabel.Format = 'Pos: %d'
          Version = '1.6.3.3'
        end
        object AdvTrackBar23: TAdvTrackBar
          Left = 16
          Top = 85
          Width = 177
          Height = 26
          BorderColor = clNone
          BorderColorDisabled = clBlack
          Buttons.BorderColor = 9224369
          Buttons.BorderColorHot = 10079963
          Buttons.BorderColorDown = 4548219
          Buttons.Color = 13627626
          Buttons.ColorTo = 13627626
          Buttons.ColorHot = 13432063
          Buttons.ColorHotTo = 11332863
          Buttons.ColorDown = 7778289
          Buttons.ColorDownTo = 4296947
          Buttons.ColorMirror = 13627626
          Buttons.ColorMirrorTo = 9224369
          Buttons.ColorMirrorHot = 5888767
          Buttons.ColorMirrorHotTo = 9556223
          Buttons.ColorMirrorDown = 946929
          Buttons.ColorMirrorDownTo = 5021693
          Buttons.GradientMirror = ggVertical
          Buttons.Visible = True
          ColorTo = clNone
          ColorDisabled = clBlack
          ColorDisabledTo = clBlack
          Direction = gdHorizontal
          Color = clNone
          Slider.BorderColor = 9224369
          Slider.BorderColorDisabled = clBlack
          Slider.Color = clWhite
          Slider.ColorTo = clBlack
          Slider.ColorDisabled = clBlack
          Slider.ColorDisabledTo = clBlack
          Slider.ColorCompleted = clNone
          Slider.ColorCompletedTo = clNone
          Slider.ColorCompletedDisabled = clNone
          Slider.ColorCompletedDisabledTo = clNone
          Slider.Direction = gdHorizontal
          TabOrder = 1
          Thumb.BorderColor = 9224369
          Thumb.BorderColorHot = 10079963
          Thumb.BorderColorDown = 4548219
          Thumb.BorderColorDisabled = clGray
          Thumb.Color = 13627626
          Thumb.ColorTo = 13627626
          Thumb.ColorDown = 7778289
          Thumb.ColorDownTo = 4296947
          Thumb.ColorHot = 13432063
          Thumb.ColorHotTo = 11332863
          Thumb.ColorDisabled = clBlack
          Thumb.ColorDisabledTo = clBlack
          Thumb.ColorMirror = 13627626
          Thumb.ColorMirrorTo = 9224369
          Thumb.ColorMirrorHot = 5888767
          Thumb.ColorMirrorHotTo = 9556223
          Thumb.ColorMirrorDown = 946929
          Thumb.ColorMirrorDownTo = 5021693
          Thumb.ColorMirrorDisabled = clBlack
          Thumb.ColorMirrorDisabledTo = clBlack
          Thumb.Gradient = ggVertical
          Thumb.GradientMirror = ggVertical
          Thumb.Shape = tsPointer
          TickMark.Color = 9224369
          TickMark.ColorDisabled = clBlack
          TickMark.Font.Charset = DEFAULT_CHARSET
          TickMark.Font.Color = clWindowText
          TickMark.Font.Height = -11
          TickMark.Font.Name = 'MS Sans Serif'
          TickMark.Font.Style = []
          TrackHint = False
          TrackLabel.Font.Charset = DEFAULT_CHARSET
          TrackLabel.Font.Color = clWindowText
          TrackLabel.Font.Height = -11
          TrackLabel.Font.Name = 'Tahoma'
          TrackLabel.Font.Style = []
          TrackLabel.Format = 'Pos: %d'
          Version = '1.6.3.3'
        end
        object AdvTrackBar24: TAdvTrackBar
          Left = 16
          Top = 124
          Width = 177
          Height = 26
          BorderColor = clNone
          BorderColorDisabled = clBlack
          Buttons.BorderColor = 9598070
          Buttons.BorderColorHot = 10079963
          Buttons.BorderColorDown = 4548219
          Buttons.Color = 15586496
          Buttons.ColorTo = 15128792
          Buttons.ColorHot = 13432063
          Buttons.ColorHotTo = 11332863
          Buttons.ColorDown = 7778289
          Buttons.ColorDownTo = 4296947
          Buttons.ColorMirror = 15586496
          Buttons.ColorMirrorTo = 13152947
          Buttons.ColorMirrorHot = 5888767
          Buttons.ColorMirrorHotTo = 9556223
          Buttons.ColorMirrorDown = 946929
          Buttons.ColorMirrorDownTo = 5021693
          Buttons.GradientMirror = ggVertical
          Buttons.Visible = True
          ColorTo = clNone
          ColorDisabled = clBlack
          ColorDisabledTo = clBlack
          Direction = gdHorizontal
          Color = clNone
          Slider.BorderColor = 9598070
          Slider.BorderColorDisabled = clBlack
          Slider.Color = clWhite
          Slider.ColorTo = clBlack
          Slider.ColorDisabled = clBlack
          Slider.ColorDisabledTo = clBlack
          Slider.ColorCompleted = clNone
          Slider.ColorCompletedTo = clNone
          Slider.ColorCompletedDisabled = clNone
          Slider.ColorCompletedDisabledTo = clNone
          Slider.Direction = gdHorizontal
          TabOrder = 2
          Thumb.BorderColor = 9598070
          Thumb.BorderColorHot = 10079963
          Thumb.BorderColorDown = 4548219
          Thumb.BorderColorDisabled = clGray
          Thumb.Color = 15586496
          Thumb.ColorTo = 15128792
          Thumb.ColorDown = 7778289
          Thumb.ColorDownTo = 4296947
          Thumb.ColorHot = 13432063
          Thumb.ColorHotTo = 11332863
          Thumb.ColorDisabled = clBlack
          Thumb.ColorDisabledTo = clBlack
          Thumb.ColorMirror = 15586496
          Thumb.ColorMirrorTo = 13152947
          Thumb.ColorMirrorHot = 5888767
          Thumb.ColorMirrorHotTo = 9556223
          Thumb.ColorMirrorDown = 946929
          Thumb.ColorMirrorDownTo = 5021693
          Thumb.ColorMirrorDisabled = clBlack
          Thumb.ColorMirrorDisabledTo = clBlack
          Thumb.Gradient = ggVertical
          Thumb.GradientMirror = ggVertical
          Thumb.Shape = tsPointer
          TickMark.Color = 9598070
          TickMark.ColorDisabled = clBlack
          TickMark.Font.Charset = DEFAULT_CHARSET
          TickMark.Font.Color = clWindowText
          TickMark.Font.Height = -11
          TickMark.Font.Name = 'MS Sans Serif'
          TickMark.Font.Style = []
          TrackHint = False
          TrackLabel.Font.Charset = DEFAULT_CHARSET
          TrackLabel.Font.Color = clWindowText
          TrackLabel.Font.Height = -11
          TrackLabel.Font.Name = 'Tahoma'
          TrackLabel.Font.Style = []
          TrackLabel.Format = 'Pos: %d'
          Version = '1.6.3.3'
        end
        object AdvTrackBar27: TAdvTrackBar
          Left = 215
          Top = 124
          Width = 177
          Height = 26
          BorderColor = clNone
          BorderColorDisabled = clBlack
          Buttons.BorderColor = 13421257
          Buttons.BorderColorHot = 10079963
          Buttons.BorderColorDown = 4548219
          Buttons.Color = 15987697
          Buttons.ColorTo = 16119283
          Buttons.ColorHot = 15465983
          Buttons.ColorHotTo = 11332863
          Buttons.ColorDown = 7778289
          Buttons.ColorDownTo = 4296947
          Buttons.ColorMirror = 15657703
          Buttons.ColorMirrorTo = 16316406
          Buttons.ColorMirrorHot = 5888767
          Buttons.ColorMirrorHotTo = 10807807
          Buttons.ColorMirrorDown = 946929
          Buttons.ColorMirrorDownTo = 5021693
          Buttons.GradientMirror = ggVertical
          Buttons.Visible = True
          ColorTo = clNone
          ColorDisabled = clBlack
          ColorDisabledTo = clBlack
          Direction = gdHorizontal
          Color = clNone
          Slider.BorderColor = 13421257
          Slider.BorderColorDisabled = clBlack
          Slider.Color = clWhite
          Slider.ColorTo = clBlack
          Slider.ColorDisabled = clBlack
          Slider.ColorDisabledTo = clBlack
          Slider.ColorCompleted = clNone
          Slider.ColorCompletedTo = clNone
          Slider.ColorCompletedDisabled = clNone
          Slider.ColorCompletedDisabledTo = clNone
          Slider.Direction = gdHorizontal
          TabOrder = 3
          Thumb.BorderColor = 13421257
          Thumb.BorderColorHot = 10079963
          Thumb.BorderColorDown = 4548219
          Thumb.BorderColorDisabled = clGray
          Thumb.Color = 15987697
          Thumb.ColorTo = 16119283
          Thumb.ColorDown = 7778289
          Thumb.ColorDownTo = 4296947
          Thumb.ColorHot = 15465983
          Thumb.ColorHotTo = 11332863
          Thumb.ColorDisabled = clBlack
          Thumb.ColorDisabledTo = clBlack
          Thumb.ColorMirror = 15657703
          Thumb.ColorMirrorTo = 16316406
          Thumb.ColorMirrorHot = 5888767
          Thumb.ColorMirrorHotTo = 10807807
          Thumb.ColorMirrorDown = 946929
          Thumb.ColorMirrorDownTo = 5021693
          Thumb.ColorMirrorDisabled = clBlack
          Thumb.ColorMirrorDisabledTo = clBlack
          Thumb.Gradient = ggVertical
          Thumb.GradientMirror = ggVertical
          Thumb.Shape = tsPointer
          TickMark.Color = 13421257
          TickMark.ColorDisabled = clBlack
          TickMark.Font.Charset = DEFAULT_CHARSET
          TickMark.Font.Color = clWindowText
          TickMark.Font.Height = -11
          TickMark.Font.Name = 'MS Sans Serif'
          TickMark.Font.Style = []
          TrackHint = False
          TrackLabel.Font.Charset = DEFAULT_CHARSET
          TrackLabel.Font.Color = clWindowText
          TrackLabel.Font.Height = -11
          TrackLabel.Font.Name = 'Tahoma'
          TrackLabel.Font.Style = []
          TrackLabel.Format = 'Pos: %d'
          Version = '1.6.3.3'
        end
        object AdvTrackBar26: TAdvTrackBar
          Left = 215
          Top = 87
          Width = 177
          Height = 26
          BorderColor = clNone
          BorderColorDisabled = clBlack
          Buttons.BorderColor = 12631218
          Buttons.BorderColorHot = 10079963
          Buttons.BorderColorDown = 4548219
          Buttons.Color = 14671574
          Buttons.ColorTo = 15000283
          Buttons.ColorHot = 15465983
          Buttons.ColorHotTo = 11332863
          Buttons.ColorDown = 7778289
          Buttons.ColorDownTo = 4296947
          Buttons.ColorMirror = 14144974
          Buttons.ColorMirrorTo = 15197664
          Buttons.ColorMirrorHot = 5888767
          Buttons.ColorMirrorHotTo = 10807807
          Buttons.ColorMirrorDown = 946929
          Buttons.ColorMirrorDownTo = 5021693
          Buttons.GradientMirror = ggVertical
          Buttons.Visible = True
          ColorTo = clNone
          ColorDisabled = clBlack
          ColorDisabledTo = clBlack
          Direction = gdHorizontal
          Color = clNone
          Slider.BorderColor = 12631218
          Slider.BorderColorDisabled = clBlack
          Slider.Color = clWhite
          Slider.ColorTo = clBlack
          Slider.ColorDisabled = clBlack
          Slider.ColorDisabledTo = clBlack
          Slider.ColorCompleted = clNone
          Slider.ColorCompletedTo = clNone
          Slider.ColorCompletedDisabled = clNone
          Slider.ColorCompletedDisabledTo = clNone
          Slider.Direction = gdHorizontal
          TabOrder = 4
          Thumb.BorderColor = 12631218
          Thumb.BorderColorHot = 10079963
          Thumb.BorderColorDown = 4548219
          Thumb.BorderColorDisabled = clGray
          Thumb.Color = 14671574
          Thumb.ColorTo = 15000283
          Thumb.ColorDown = 7778289
          Thumb.ColorDownTo = 4296947
          Thumb.ColorHot = 15465983
          Thumb.ColorHotTo = 11332863
          Thumb.ColorDisabled = clBlack
          Thumb.ColorDisabledTo = clBlack
          Thumb.ColorMirror = 14144974
          Thumb.ColorMirrorTo = 15197664
          Thumb.ColorMirrorHot = 5888767
          Thumb.ColorMirrorHotTo = 10807807
          Thumb.ColorMirrorDown = 946929
          Thumb.ColorMirrorDownTo = 5021693
          Thumb.ColorMirrorDisabled = clBlack
          Thumb.ColorMirrorDisabledTo = clBlack
          Thumb.Gradient = ggVertical
          Thumb.GradientMirror = ggVertical
          Thumb.Shape = tsPointer
          TickMark.Color = 12631218
          TickMark.ColorDisabled = clBlack
          TickMark.Font.Charset = DEFAULT_CHARSET
          TickMark.Font.Color = clWindowText
          TickMark.Font.Height = -11
          TickMark.Font.Name = 'MS Sans Serif'
          TickMark.Font.Style = []
          TrackHint = False
          TrackLabel.Font.Charset = DEFAULT_CHARSET
          TrackLabel.Font.Color = clWindowText
          TrackLabel.Font.Height = -11
          TrackLabel.Font.Name = 'Tahoma'
          TrackLabel.Font.Style = []
          TrackLabel.Format = 'Pos: %d'
          Version = '1.6.3.3'
        end
        object AdvTrackBar25: TAdvTrackBar
          Left = 215
          Top = 42
          Width = 177
          Height = 26
          BorderColor = clNone
          BorderColorDisabled = clBlack
          Buttons.BorderColor = 14727579
          Buttons.BorderColorHot = 10079963
          Buttons.BorderColorDown = 4548219
          Buttons.Color = 15653832
          Buttons.ColorTo = 16178633
          Buttons.ColorHot = 15465983
          Buttons.ColorHotTo = 11332863
          Buttons.ColorDown = 7778289
          Buttons.ColorDownTo = 4296947
          Buttons.ColorMirror = 15586496
          Buttons.ColorMirrorTo = 16245200
          Buttons.ColorMirrorHot = 5888767
          Buttons.ColorMirrorHotTo = 10807807
          Buttons.ColorMirrorDown = 946929
          Buttons.ColorMirrorDownTo = 5021693
          Buttons.GradientMirror = ggVertical
          Buttons.Visible = True
          ColorTo = clNone
          ColorDisabled = clBlack
          ColorDisabledTo = clBlack
          Direction = gdHorizontal
          Color = clNone
          Slider.BorderColor = 12752500
          Slider.BorderColorDisabled = clBlack
          Slider.Color = clWhite
          Slider.ColorTo = clBlack
          Slider.ColorDisabled = clBlack
          Slider.ColorDisabledTo = clBlack
          Slider.ColorCompleted = clNone
          Slider.ColorCompletedTo = clNone
          Slider.ColorCompletedDisabled = clNone
          Slider.ColorCompletedDisabledTo = clNone
          Slider.Direction = gdHorizontal
          TabOrder = 5
          Thumb.BorderColor = 14727579
          Thumb.BorderColorHot = 10079963
          Thumb.BorderColorDown = 4548219
          Thumb.BorderColorDisabled = clGray
          Thumb.Color = 15653832
          Thumb.ColorTo = 16178633
          Thumb.ColorDown = 7778289
          Thumb.ColorDownTo = 4296947
          Thumb.ColorHot = 15465983
          Thumb.ColorHotTo = 11332863
          Thumb.ColorDisabled = clBlack
          Thumb.ColorDisabledTo = clBlack
          Thumb.ColorMirror = 15586496
          Thumb.ColorMirrorTo = 16245200
          Thumb.ColorMirrorHot = 5888767
          Thumb.ColorMirrorHotTo = 10807807
          Thumb.ColorMirrorDown = 946929
          Thumb.ColorMirrorDownTo = 5021693
          Thumb.ColorMirrorDisabled = clBlack
          Thumb.ColorMirrorDisabledTo = clBlack
          Thumb.Gradient = ggVertical
          Thumb.GradientMirror = ggVertical
          Thumb.Shape = tsPointer
          TickMark.Color = 12752500
          TickMark.ColorDisabled = clBlack
          TickMark.Font.Charset = DEFAULT_CHARSET
          TickMark.Font.Color = clWindowText
          TickMark.Font.Height = -11
          TickMark.Font.Name = 'MS Sans Serif'
          TickMark.Font.Style = []
          TrackHint = False
          TrackLabel.Font.Charset = DEFAULT_CHARSET
          TrackLabel.Font.Color = clWindowText
          TrackLabel.Font.Height = -11
          TrackLabel.Font.Name = 'Tahoma'
          TrackLabel.Font.Style = []
          TrackLabel.Format = 'Pos: %d'
          Version = '1.6.3.3'
        end
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 199
        Width = 454
        Height = 105
        Caption = 'Office trackbar button variation'
        TabOrder = 1
        object AdvTrackBar17: TAdvTrackBar
          Left = 13
          Top = 35
          Width = 177
          Height = 30
          BorderColor = clNone
          BorderColorDisabled = clBlack
          Buttons.BorderColor = 9262895
          Buttons.BorderColorHot = 10079963
          Buttons.BorderColorDown = 4548219
          Buttons.Color = 16644855
          Buttons.ColorTo = 16178633
          Buttons.ColorHot = 15465983
          Buttons.ColorHotTo = 11332863
          Buttons.ColorDown = 7778289
          Buttons.ColorDownTo = 4296947
          Buttons.ColorMirror = clWhite
          Buttons.ColorMirrorTo = 14727318
          Buttons.ColorMirrorHot = 5888767
          Buttons.ColorMirrorHotTo = 10807807
          Buttons.ColorMirrorDown = 946929
          Buttons.ColorMirrorDownTo = 5021693
          Buttons.GradientMirror = ggVertical
          Buttons.Visible = True
          Buttons.Shape = bsRectangle
          Buttons.Spacing = 5
          ColorTo = clNone
          ColorDisabled = clBlack
          ColorDisabledTo = clBlack
          Direction = gdHorizontal
          Color = clNone
          Slider.BorderColor = 12752500
          Slider.BorderColorDisabled = clBlack
          Slider.Color = clWhite
          Slider.ColorTo = clBlack
          Slider.ColorDisabled = clBlack
          Slider.ColorDisabledTo = clBlack
          Slider.ColorCompleted = clNone
          Slider.ColorCompletedTo = clNone
          Slider.ColorCompletedDisabled = clNone
          Slider.ColorCompletedDisabledTo = clNone
          Slider.Direction = gdHorizontal
          Slider.Offset = 12
          TabOrder = 0
          Thumb.BorderColor = 10317632
          Thumb.BorderColorHot = 10079963
          Thumb.BorderColorDown = 4548219
          Thumb.BorderColorDisabled = clGray
          Thumb.Color = 15916488
          Thumb.ColorTo = 16044731
          Thumb.ColorDown = 7778289
          Thumb.ColorDownTo = 4296947
          Thumb.ColorHot = 15465983
          Thumb.ColorHotTo = 11332863
          Thumb.ColorDisabled = clBlack
          Thumb.ColorDisabledTo = clBlack
          Thumb.ColorMirror = clWhite
          Thumb.ColorMirrorTo = 14462601
          Thumb.ColorMirrorHot = 5888767
          Thumb.ColorMirrorHotTo = 10807807
          Thumb.ColorMirrorDown = 946929
          Thumb.ColorMirrorDownTo = 5021693
          Thumb.ColorMirrorDisabled = clBlack
          Thumb.ColorMirrorDisabledTo = clBlack
          Thumb.Gradient = ggRadial
          Thumb.GradientMirror = ggRadial
          Thumb.Shape = tsPointer
          TickMark.Color = clBlack
          TickMark.ColorDisabled = clBlack
          TickMark.Font.Charset = DEFAULT_CHARSET
          TickMark.Font.Color = clWindowText
          TickMark.Font.Height = -11
          TickMark.Font.Name = 'MS Sans Serif'
          TickMark.Font.Style = []
          TrackHint = False
          TrackLabel.Font.Charset = DEFAULT_CHARSET
          TrackLabel.Font.Color = clWindowText
          TrackLabel.Font.Height = -11
          TrackLabel.Font.Name = 'Tahoma'
          TrackLabel.Font.Style = []
          TrackLabel.Format = 'Pos: %d'
          Version = '1.6.3.3'
        end
        object AdvTrackBar2: TAdvTrackBar
          Left = 212
          Top = 35
          Width = 177
          Height = 29
          BorderColor = clNone
          BorderColorDisabled = clBlack
          Buttons.BorderColor = 14727579
          Buttons.BorderColorHot = 10079963
          Buttons.BorderColorDown = 4548219
          Buttons.Color = 15653832
          Buttons.ColorTo = 16178633
          Buttons.ColorHot = 15465983
          Buttons.ColorHotTo = 11332863
          Buttons.ColorDown = 7778289
          Buttons.ColorDownTo = 4296947
          Buttons.ColorMirror = 15586496
          Buttons.ColorMirrorTo = 16245200
          Buttons.ColorMirrorHot = 5888767
          Buttons.ColorMirrorHotTo = 10807807
          Buttons.ColorMirrorDown = 946929
          Buttons.ColorMirrorDownTo = 5021693
          Buttons.GradientMirror = ggVertical
          Buttons.Visible = True
          Buttons.Shape = bsRectangle
          ColorTo = clNone
          ColorDisabled = clBlack
          ColorDisabledTo = clBlack
          Direction = gdHorizontal
          Color = clNone
          Slider.BorderColor = 12752500
          Slider.BorderColorDisabled = clBlack
          Slider.Color = clWhite
          Slider.ColorTo = clBlack
          Slider.ColorDisabled = clBlack
          Slider.ColorDisabledTo = clBlack
          Slider.ColorCompleted = clNone
          Slider.ColorCompletedTo = clNone
          Slider.ColorCompletedDisabled = clNone
          Slider.ColorCompletedDisabledTo = clNone
          Slider.Direction = gdHorizontal
          Slider.Offset = 12
          TabOrder = 1
          Thumb.BorderColor = 14727579
          Thumb.BorderColorHot = 10079963
          Thumb.BorderColorDown = 4548219
          Thumb.BorderColorDisabled = clGray
          Thumb.Color = 15653832
          Thumb.ColorTo = 16178633
          Thumb.ColorDown = 7778289
          Thumb.ColorDownTo = 4296947
          Thumb.ColorHot = 15465983
          Thumb.ColorHotTo = 11332863
          Thumb.ColorDisabled = clBlack
          Thumb.ColorDisabledTo = clBlack
          Thumb.ColorMirror = 15586496
          Thumb.ColorMirrorTo = 16245200
          Thumb.ColorMirrorHot = 5888767
          Thumb.ColorMirrorHotTo = 10807807
          Thumb.ColorMirrorDown = 946929
          Thumb.ColorMirrorDownTo = 5021693
          Thumb.ColorMirrorDisabled = clBlack
          Thumb.ColorMirrorDisabledTo = clBlack
          Thumb.Gradient = ggVertical
          Thumb.GradientMirror = ggVertical
          Thumb.Shape = tsPointer
          TickMark.Color = 12752500
          TickMark.ColorDisabled = clBlack
          TickMark.Font.Charset = DEFAULT_CHARSET
          TickMark.Font.Color = clWindowText
          TickMark.Font.Height = -11
          TickMark.Font.Name = 'MS Sans Serif'
          TickMark.Font.Style = []
          TrackHint = False
          TrackLabel.Font.Charset = DEFAULT_CHARSET
          TrackLabel.Font.Color = clWindowText
          TrackLabel.Font.Height = -11
          TrackLabel.Font.Name = 'Tahoma'
          TrackLabel.Font.Style = []
          TrackLabel.Format = 'Pos: %d'
          Version = '1.6.3.3'
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Custom colors'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object AdvTrackBar9: TAdvTrackBar
        Left = 248
        Top = 32
        Width = 45
        Height = 177
        BorderColor = clNone
        BorderColorDisabled = clBlack
        Buttons.BorderColor = 14727579
        Buttons.BorderColorHot = 14727579
        Buttons.BorderColorDown = clBlack
        Buttons.Color = clWhite
        Buttons.ColorTo = clWhite
        Buttons.ColorHot = 16117985
        Buttons.ColorHotTo = 16372402
        Buttons.ColorDown = 16111818
        Buttons.ColorDownTo = 16367008
        Buttons.ColorMirror = clWhite
        Buttons.ColorMirrorTo = 14727318
        Buttons.ColorMirrorHot = 16107693
        Buttons.ColorMirrorHotTo = 16775412
        Buttons.ColorMirrorDown = 16102556
        Buttons.ColorMirrorDownTo = 16768988
        Buttons.GradientMirror = ggVertical
        ColorTo = clNone
        ColorDisabled = clBlack
        ColorDisabledTo = clBlack
        Direction = gdHorizontal
        Color = clNone
        Orientation = trVertical
        Position = 5
        Slider.BorderColor = 14117632
        Slider.BorderColorDisabled = clBlack
        Slider.Color = 16752705
        Slider.ColorTo = 16767927
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdHorizontalInOut
        Slider.Size = 12
        Slider.Border3D = False
        Slider.Rounded = True
        TabOrder = 0
        Thumb.BorderColor = 14117632
        Thumb.BorderColorHot = 16747287
        Thumb.BorderColorDown = 13264128
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = 16768443
        Thumb.ColorTo = 16756318
        Thumb.ColorDown = 16762250
        Thumb.ColorDownTo = 16747029
        Thumb.ColorHot = 16770764
        Thumb.ColorHotTo = 16760704
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = clNone
        Thumb.ColorMirrorTo = clNone
        Thumb.ColorMirrorHot = clNone
        Thumb.ColorMirrorHotTo = clNone
        Thumb.ColorMirrorDown = clNone
        Thumb.ColorMirrorDownTo = clNone
        Thumb.ColorMirrorDisabled = clNone
        Thumb.ColorMirrorDisabledTo = clNone
        Thumb.Gradient = ggVertical
        Thumb.GradientMirror = ggVertical
        Thumb.Size = 24
        Thumb.Width = 12
        Thumb.Shape = tsRoundRect
        TickMark.Color = 16752705
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'MS Sans Serif'
        TickMark.Font.Style = []
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
      end
      object AdvTrackBar3: TAdvTrackBar
        Left = 32
        Top = 64
        Width = 177
        Height = 45
        Hint = 'TrackBar'
        BorderColor = clNone
        BorderColorDisabled = clBlack
        Buttons.BorderColor = 14727579
        Buttons.BorderColorHot = 14727579
        Buttons.BorderColorDown = clBlack
        Buttons.Color = clWhite
        Buttons.ColorTo = clWhite
        Buttons.ColorHot = 16117985
        Buttons.ColorHotTo = 16372402
        Buttons.ColorDown = 16111818
        Buttons.ColorDownTo = 16367008
        Buttons.ColorMirror = clWhite
        Buttons.ColorMirrorTo = 14727318
        Buttons.ColorMirrorHot = 16107693
        Buttons.ColorMirrorHotTo = 16775412
        Buttons.ColorMirrorDown = 16102556
        Buttons.ColorMirrorDownTo = 16768988
        Buttons.GradientMirror = ggVertical
        ColorTo = clNone
        ColorDisabled = clBlack
        ColorDisabledTo = clBlack
        Direction = gdHorizontal
        Color = clNone
        ParentShowHint = False
        Position = 2
        ShowHint = True
        Slider.BorderColor = 14117632
        Slider.BorderColorDisabled = clBlack
        Slider.Color = 16752705
        Slider.ColorTo = 16767927
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = 98558
        Slider.ColorCompletedTo = 9225983
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdVerticalInOut
        Slider.Size = 12
        Slider.Border3D = False
        Slider.Rounded = True
        TabOrder = 1
        Thumb.BorderColor = 14117632
        Thumb.BorderColorHot = 16747287
        Thumb.BorderColorDown = 13264128
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = 16751932
        Thumb.ColorTo = 16769217
        Thumb.ColorDown = 16762250
        Thumb.ColorDownTo = 16747029
        Thumb.ColorHot = 16770764
        Thumb.ColorHotTo = 16760704
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = clNone
        Thumb.ColorMirrorTo = clNone
        Thumb.ColorMirrorHot = clNone
        Thumb.ColorMirrorHotTo = clNone
        Thumb.ColorMirrorDown = clNone
        Thumb.ColorMirrorDownTo = clNone
        Thumb.ColorMirrorDisabled = clNone
        Thumb.ColorMirrorDisabledTo = clNone
        Thumb.Gradient = ggDiagonalForward
        Thumb.GradientMirror = ggRadial
        Thumb.Size = 24
        Thumb.Width = 12
        Thumb.Shape = tsRoundRect
        TickMark.Color = 16752705
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'MS Sans Serif'
        TickMark.Font.Style = []
        TrackHint = True
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Rating'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        557
        327)
      object Rate1: TAdvTrackBar
        Left = 34
        Top = 65
        Width = 265
        Height = 34
        Anchors = [akLeft, akTop, akRight, akBottom]
        BorderColor = clNone
        BorderColorDisabled = clNone
        Buttons.BorderColor = clBlack
        Buttons.BorderColorHot = clBlack
        Buttons.BorderColorDown = clBlack
        Buttons.Color = clBlack
        Buttons.ColorTo = clBlack
        Buttons.ColorHot = clBlack
        Buttons.ColorHotTo = clBlack
        Buttons.ColorDown = clBlack
        Buttons.ColorDownTo = clBlack
        Buttons.ColorMirror = clWhite
        Buttons.ColorMirrorTo = 14727318
        Buttons.ColorMirrorHot = 16107693
        Buttons.ColorMirrorHotTo = 16775412
        Buttons.ColorMirrorDown = 16102556
        Buttons.ColorMirrorDownTo = 16768988
        Buttons.GradientMirror = ggVertical
        ColorTo = clNone
        ColorDisabled = clBlack
        ColorDisabledTo = clBlack
        Direction = gdHorizontal
        Color = clNone
        Position = 5
        RateActive.Data = {
          424DAA0300000000000036000000280000001100000011000000010018000000
          00007403000000000000000000000000000000000000FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF00FF00FFFF00FFFF00FFE8F4F8FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFF3F7FFFF00FFFF00FFFF00FFFF00FF00FF00
          FFFF00FFFF00FFA3D9FFD7EEFED7F0FFDFFCFFFF00FFFF00FFE1FAFFDBF3FFE4
          F8FFA2B4C5FF00FFFF00FFFF00FFFF00FF00FF00FFFF00FFFF00FFB4CCE0A5C3
          DC94B9D5CDF4FFC0E9FFD1FAFFD3FBFF9BC0DAABCDE49CBDD1FF00FFFF00FFFF
          00FFFF00FF00FF00FFFF00FFFF00FFCDE8FFB1D6F899C5EA85B8E083B9E27DB4
          DB86BCDF8FC2E29ACAE6A0D0E8FF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFBFE5FF9FD0F891CBF58DCCF885C9F48BD0F79ADAFD98D1F0FF00
          FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FFFF00FFFF00FFBEE5FF9FD4F5
          9DDAFF8BD0FB88D8FF8BDEFF8AD6FA85C0E0FF00FFFF00FFFF00FFFF00FFFF00
          FF00FF00FFFF00FFFF00FFDCEEFFB5DEF7A0D7F69DDBFF93D8FF88D7FF84D6FF
          86D2F682BDDDD6F3FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FFE5F3FFBE
          DCEDA4D4ECA1DAFA9CD7FF9CD9FF95D8FF93D7FF95D6FC88BEDFA2C8E6D4ECFF
          FF00FFFF00FFFF00FF00FF00FFECF3FCA3D9FFA3D9FFA5D5EDA5DCFBA1DAFF98
          D2FC9ED7FF9FD6FFA4D9FE9FD0F090B8D4ABC9DAFF00FFFF00FFFF00FF00FF00
          FFDFEEF7CDE5F1C3E5F5BCE6FDB3E2FFAAE1FFA3D9FFA3D9FFA1D2FAA8D2F5C2
          EAFFB7E0F7BFE0EFCCDFE4FF00FFFF00FF00FF00FFFF00FFE2F6FFE6FDFFDCF9
          FFC6EDFFA9DFFE97D1F4AEE4FFA9D6F8B8DAF8D9F6FFFF00FFE1FCFFE7F7FDFF
          00FFFF00FF00FF00FFFF00FFFF00FFFF00FFF1FBFFDCF7FFA3D9FFA0DDF7A3D9
          FFA9D6F1D9F3FFE9F7FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFFF00FFEBFAFFBFEBFCA3D9FFA3D9FFA2CADDECFCFFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FFFF00FFFF00FFFF00FFF6FDFF
          DDFEFFA3D9FFB6E0ECDAF6FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEBFFFFD3F0F5D4EBF3EDFAFF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF00}
        RateInActive.Data = {
          424DAA0300000000000036000000280000001100000011000000010018000000
          00007403000000000000000000000000000000000000FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00
          FFFF00FFFBFBFBCECECEF4F4F4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF4
          F4F4CDCDCDFEFEFEFF00FFFF00FFFF00FF00FF00FFFF00FFFF00FFBDBDBDC9C9
          C9BABABAFBFBFBFF00FFFF00FFFBFBFBC3C3C3C6C6C6AFAFAFFF00FFFF00FFFF
          00FFFF00FF00FF00FFFF00FFFF00FFDEDEDEC5C5C5CCCCCCBCBCBCBABABAC0C0
          C0BDBDBDCECECEB8B8B8CFCFCFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFD9D9D9C2C2C2C1C1C1C8C8C8C5C5C5C4C4C4CDCDCDCECECEF9F9
          F9FF00FFFF00FFFF00FFFF00FF00FF00FFFF00FFFF00FFFF00FFFF00FFC7C7C7
          CDCDCDD2D2D2C9C9C9CDCDCDC5C5C5CBCBCBFF00FFFF00FFFF00FFFF00FFFF00
          FF00FF00FFFF00FFFF00FFFF00FFD5D5D5CFCFCFD2D2D2CCCCCCCACACAD3D3D3
          C2C2C2BBBBBBEDEDEDFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FFFF00FFD2
          D2D2C5C5C5CDCDCDCDCDCDC5C5C5CCCCCCCCCCCCC8C8C8C0C0C0C3C3C3F7F7F7
          FF00FFFF00FFFF00FF00FF00FFFF00FFD6D6D6C9C9C9CDCDCDCECECECCCCCCCB
          CBCBD0D0D0C1C1C1C9C9C9D5D5D5B0B0B0CCCCCCF6F6F6FF00FFFF00FF00FF00
          FFE7E7E7D5D5D5DFDFDFE7E7E7D8D8D8D1D1D1D2D2D2CFCFCFC6C6C6C9C9C9E8
          E8E8D0D0D0CECECED5D5D5FBFBFBFF00FF00FF00FFFF00FFFF00FFFF00FFFBFA
          FCDDDCDED4D3D5D0CFD1CBCACCD7D7D7D0CECEF8F6F6FF00FFFF00FFFF00FFFF
          00FFFF00FF00FF00FFFF00FFFF00FFFF00FFFF00FFFDFEFFD4D4DAD3D1D7CECD
          D1CDCACCFAF5F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFE4E3ECD2D2D8CDCCD0DDDADCFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          F7F7FDD8D8DECFD0D4EFF1F2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE4E5E9DEDFE3FF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF00}
        Slider.BorderColor = clNone
        Slider.BorderColorDisabled = clBlack
        Slider.Color = clWhite
        Slider.ColorTo = clBlack
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdHorizontal
        Slider.Size = 12
        Slider.Offset = 0
        TabOrder = 0
        Thumb.BorderColor = clNone
        Thumb.BorderColorHot = clNone
        Thumb.BorderColorDown = clBlack
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = clWhite
        Thumb.ColorTo = clSilver
        Thumb.ColorDown = clBlack
        Thumb.ColorDownTo = clBlack
        Thumb.ColorHot = clWhite
        Thumb.ColorHotTo = clGray
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = clBlack
        Thumb.ColorMirrorTo = clBlack
        Thumb.ColorMirrorHot = clBlack
        Thumb.ColorMirrorHotTo = clBlack
        Thumb.ColorMirrorDown = clBlack
        Thumb.ColorMirrorDownTo = clBlack
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggRadial
        Thumb.GradientMirror = ggRadial
        Thumb.Width = 12
        Thumb.Shape = tsPointer
        TickMark.Color = clBlack
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'MS Sans Serif'
        TickMark.Font.Style = []
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Dual tickmarks'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object AdvTrackBar15: TAdvTrackBar
        Left = 325
        Top = 48
        Width = 45
        Height = 209
        BorderColor = 13735529
        BorderColorDisabled = clBlack
        Buttons.BorderColor = 14727579
        Buttons.BorderColorHot = clBlack
        Buttons.BorderColorDown = clBlack
        Buttons.Color = clWhite
        Buttons.ColorTo = clWhite
        Buttons.ColorHot = 16117985
        Buttons.ColorHotTo = 16372402
        Buttons.ColorDown = 16111818
        Buttons.ColorDownTo = 16367008
        Buttons.ColorMirror = clWhite
        Buttons.ColorMirrorTo = 14727318
        Buttons.ColorMirrorHot = 16107693
        Buttons.ColorMirrorHotTo = 16775412
        Buttons.ColorMirrorDown = 16102556
        Buttons.ColorMirrorDownTo = 16768988
        Buttons.GradientMirror = ggVertical
        ColorTo = 14727318
        ColorDisabled = clBlack
        ColorDisabledTo = clBlack
        Direction = gdVertical
        Color = 16111818
        Max = 60
        Orientation = trVertical
        Slider.BorderColor = clNone
        Slider.BorderColorDisabled = clBlack
        Slider.Color = clWhite
        Slider.ColorTo = clBlack
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdHorizontal
        Slider.Size = 0
        TabOrder = 0
        Thumb.BorderColor = clNone
        Thumb.BorderColorHot = clNone
        Thumb.BorderColorDown = clBlack
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = 9853486
        Thumb.ColorTo = 15850441
        Thumb.ColorDown = clBlack
        Thumb.ColorDownTo = clRed
        Thumb.ColorHot = clBlack
        Thumb.ColorHotTo = clRed
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = clBlack
        Thumb.ColorMirrorTo = clBlack
        Thumb.ColorMirrorHot = clBlack
        Thumb.ColorMirrorHotTo = clBlack
        Thumb.ColorMirrorDown = clBlack
        Thumb.ColorMirrorDownTo = clBlack
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggRadial
        Thumb.GradientMirror = ggRadial
        Thumb.Width = 6
        Thumb.Shape = tsLine
        TickMark.Color = 9853486
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'MS Sans Serif'
        TickMark.Font.Style = []
        TickMark.Line3D = True
        TickMark.Position = tmBoth
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
      end
      object AdvTrackBar4: TAdvTrackBar
        Left = 45
        Top = 48
        Width = 177
        Height = 45
        BorderColor = 13735529
        BorderColorDisabled = clBlack
        Buttons.BorderColor = 14727579
        Buttons.BorderColorHot = clBlack
        Buttons.BorderColorDown = clBlack
        Buttons.Color = clWhite
        Buttons.ColorTo = clWhite
        Buttons.ColorHot = 16117985
        Buttons.ColorHotTo = 16372402
        Buttons.ColorDown = 16111818
        Buttons.ColorDownTo = 16367008
        Buttons.ColorMirror = clWhite
        Buttons.ColorMirrorTo = 14727318
        Buttons.ColorMirrorHot = 16107693
        Buttons.ColorMirrorHotTo = 16775412
        Buttons.ColorMirrorDown = 16102556
        Buttons.ColorMirrorDownTo = 16768988
        Buttons.GradientMirror = ggVertical
        ColorTo = 14727318
        ColorDisabled = clBlack
        ColorDisabledTo = clBlack
        Direction = gdVertical
        Color = 16111818
        Max = 60
        Position = 5
        Slider.BorderColor = clNone
        Slider.BorderColorDisabled = clBlack
        Slider.Color = clWhite
        Slider.ColorTo = clBlack
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdHorizontal
        Slider.Size = 0
        TabOrder = 1
        Thumb.BorderColor = clNone
        Thumb.BorderColorHot = clNone
        Thumb.BorderColorDown = clBlack
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = 9853486
        Thumb.ColorTo = 15850441
        Thumb.ColorDown = clBlack
        Thumb.ColorDownTo = clRed
        Thumb.ColorHot = clBlack
        Thumb.ColorHotTo = clRed
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = clBlack
        Thumb.ColorMirrorTo = clBlack
        Thumb.ColorMirrorHot = clBlack
        Thumb.ColorMirrorHotTo = clBlack
        Thumb.ColorMirrorDown = clBlack
        Thumb.ColorMirrorDownTo = clBlack
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggRadial
        Thumb.GradientMirror = ggRadial
        Thumb.Width = 6
        Thumb.Shape = tsLine
        TickMark.Color = 9853486
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'MS Sans Serif'
        TickMark.Font.Style = []
        TickMark.Line3D = True
        TickMark.Position = tmBoth
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
      end
      object AdvTrackBar20: TAdvTrackBar
        Left = 45
        Top = 125
        Width = 185
        Height = 45
        BorderColor = 13735529
        BorderColorDisabled = clBlack
        Buttons.BorderColor = 14727579
        Buttons.BorderColorHot = clBlack
        Buttons.BorderColorDown = clBlack
        Buttons.Color = 16117985
        Buttons.ColorTo = 16117985
        Buttons.ColorHot = 16117985
        Buttons.ColorHotTo = 16372402
        Buttons.ColorDown = 16111818
        Buttons.ColorDownTo = 16367008
        Buttons.ColorMirror = 16117985
        Buttons.ColorMirrorTo = 14727318
        Buttons.ColorMirrorHot = 16107693
        Buttons.ColorMirrorHotTo = 16775412
        Buttons.ColorMirrorDown = 16102556
        Buttons.ColorMirrorDownTo = 16768988
        Buttons.GradientMirror = ggVertical
        Buttons.Shape = bsRectangle
        ColorTo = 15851729
        ColorDisabled = clBlack
        ColorDisabledTo = clBlack
        Direction = gdVerticalInOut
        Color = 14065524
        Max = 60
        Position = 5
        Slider.BorderColor = clNone
        Slider.BorderColorDisabled = clBlack
        Slider.Color = clWhite
        Slider.ColorTo = clBlack
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdHorizontal
        Slider.Size = 0
        TabOrder = 2
        Thumb.BorderColor = clNone
        Thumb.BorderColorHot = clNone
        Thumb.BorderColorDown = clBlack
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = 9853486
        Thumb.ColorTo = 15850441
        Thumb.ColorDown = clBlack
        Thumb.ColorDownTo = clRed
        Thumb.ColorHot = clBlack
        Thumb.ColorHotTo = clRed
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = clBlack
        Thumb.ColorMirrorTo = clBlack
        Thumb.ColorMirrorHot = clBlack
        Thumb.ColorMirrorHotTo = clBlack
        Thumb.ColorMirrorDown = clBlack
        Thumb.ColorMirrorDownTo = clBlack
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggRadial
        Thumb.GradientMirror = ggRadial
        Thumb.Width = 6
        Thumb.Shape = tsLine
        TickMark.Color = 9853486
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'MS Sans Serif'
        TickMark.Font.Style = []
        TickMark.Line3D = True
        TickMark.Position = tmBoth
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Transparent = False
        Version = '1.6.3.3'
      end
      object AdvTrackBar21: TAdvTrackBar
        Left = 45
        Top = 208
        Width = 204
        Height = 45
        BorderColor = 13735529
        BorderColorDisabled = clBlack
        Buttons.BorderColor = 14727579
        Buttons.BorderColorHot = clBlack
        Buttons.BorderColorDown = clBlack
        Buttons.Color = 16117985
        Buttons.ColorTo = 16117985
        Buttons.ColorHot = 16117985
        Buttons.ColorHotTo = 16372402
        Buttons.ColorDown = 16111818
        Buttons.ColorDownTo = 16367008
        Buttons.ColorMirror = 16117985
        Buttons.ColorMirrorTo = 14727318
        Buttons.ColorMirrorHot = 16107693
        Buttons.ColorMirrorHotTo = 16775412
        Buttons.ColorMirrorDown = 16102556
        Buttons.ColorMirrorDownTo = 16768988
        Buttons.GradientMirror = ggVertical
        Buttons.Visible = True
        Buttons.Shape = bsRectangle
        ColorTo = 15719371
        ColorDisabled = clBlack
        ColorDisabledTo = clBlack
        Direction = gdVerticalInOut
        Color = 13603423
        Max = 60
        Slider.BorderColor = clNone
        Slider.BorderColorDisabled = clBlack
        Slider.Color = clWhite
        Slider.ColorTo = clBlack
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdHorizontal
        Slider.Size = 0
        TabOrder = 3
        Thumb.BorderColor = clNone
        Thumb.BorderColorHot = clNone
        Thumb.BorderColorDown = clBlack
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = 9853486
        Thumb.ColorTo = 15850441
        Thumb.ColorDown = clBlack
        Thumb.ColorDownTo = clRed
        Thumb.ColorHot = clBlack
        Thumb.ColorHotTo = clRed
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = clBlack
        Thumb.ColorMirrorTo = clBlack
        Thumb.ColorMirrorHot = clBlack
        Thumb.ColorMirrorHotTo = clBlack
        Thumb.ColorMirrorDown = clBlack
        Thumb.ColorMirrorDownTo = clBlack
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggRadial
        Thumb.GradientMirror = ggRadial
        Thumb.Width = 6
        Thumb.Shape = tsLine
        TickMark.Color = 9853486
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'MS Sans Serif'
        TickMark.Font.Style = []
        TickMark.Line3D = True
        TickMark.Position = tmBoth
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Transparent = False
        Version = '1.6.3.3'
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Tick images'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object AdvTrackBar22: TAdvTrackBar
        Left = 25
        Top = 45
        Width = 313
        Height = 65
        BorderColor = clNone
        BorderColorDisabled = clNone
        Buttons.BorderColor = 9262895
        Buttons.BorderColorHot = 10079963
        Buttons.BorderColorDown = 4548219
        Buttons.Color = 15653832
        Buttons.ColorTo = 16178633
        Buttons.ColorHot = 15465983
        Buttons.ColorHotTo = 11332863
        Buttons.ColorDown = 7778289
        Buttons.ColorDownTo = 4296947
        Buttons.ColorMirror = 15586496
        Buttons.ColorMirrorTo = 16245200
        Buttons.ColorMirrorHot = 5888767
        Buttons.ColorMirrorHotTo = 10807807
        Buttons.ColorMirrorDown = 946929
        Buttons.ColorMirrorDownTo = 5021693
        Buttons.GradientMirror = ggVertical
        ColorTo = clNone
        ColorDisabled = clNone
        ColorDisabledTo = clNone
        Direction = gdHorizontal
        Color = clNone
        Max = 4
        Position = 1
        Slider.BorderColor = 12752500
        Slider.BorderColorDisabled = clBlack
        Slider.Color = clWhite
        Slider.ColorTo = clBlack
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdHorizontal
        TabOrder = 0
        Thumb.BorderColor = 10317632
        Thumb.BorderColorHot = 10079963
        Thumb.BorderColorDown = 4548219
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = 15653832
        Thumb.ColorTo = 16178633
        Thumb.ColorDown = 7778289
        Thumb.ColorDownTo = 4296947
        Thumb.ColorHot = 15465983
        Thumb.ColorHotTo = 11332863
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = 15586496
        Thumb.ColorMirrorTo = 16245200
        Thumb.ColorMirrorHot = 5888767
        Thumb.ColorMirrorHotTo = 10807807
        Thumb.ColorMirrorDown = 946929
        Thumb.ColorMirrorDownTo = 5021693
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggVertical
        Thumb.GradientMirror = ggRadial
        Thumb.Shape = tsPointer
        TickMark.Color = clBlack
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'Tahoma'
        TickMark.Font.Style = []
        TickMark.Size = 48
        TickImages = ImageList3
        TrackHint = True
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
        OnGetTrackHint = AdvTrackBar22GetTrackHint
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Simple'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object AdvTrackBar5: TAdvTrackBar
        Left = 40
        Top = 68
        Width = 177
        Height = 26
        BorderColor = clNone
        BorderColorDisabled = clBlack
        Buttons.BorderColor = 9262895
        Buttons.BorderColorHot = 10079963
        Buttons.BorderColorDown = 4548219
        Buttons.Color = 16644855
        Buttons.ColorTo = 16178633
        Buttons.ColorHot = 15465983
        Buttons.ColorHotTo = 11332863
        Buttons.ColorDown = 7778289
        Buttons.ColorDownTo = 4296947
        Buttons.ColorMirror = clWhite
        Buttons.ColorMirrorTo = 14727318
        Buttons.ColorMirrorHot = 5888767
        Buttons.ColorMirrorHotTo = 10807807
        Buttons.ColorMirrorDown = 946929
        Buttons.ColorMirrorDownTo = 5021693
        Buttons.GradientMirror = ggVertical
        ColorTo = clNone
        ColorDisabled = clBlack
        ColorDisabledTo = clBlack
        Direction = gdHorizontal
        Color = clNone
        Slider.BorderColor = 12752500
        Slider.BorderColorDisabled = clBlack
        Slider.Color = clWhite
        Slider.ColorTo = clBlack
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdHorizontal
        TabOrder = 0
        Thumb.BorderColor = 10317632
        Thumb.BorderColorHot = 10079963
        Thumb.BorderColorDown = 4548219
        Thumb.BorderColorDisabled = clGray
        Thumb.Color = 15916488
        Thumb.ColorTo = 16044731
        Thumb.ColorDown = 7778289
        Thumb.ColorDownTo = 4296947
        Thumb.ColorHot = 15465983
        Thumb.ColorHotTo = 11332863
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = clWhite
        Thumb.ColorMirrorTo = 14462601
        Thumb.ColorMirrorHot = 5888767
        Thumb.ColorMirrorHotTo = 10807807
        Thumb.ColorMirrorDown = 946929
        Thumb.ColorMirrorDownTo = 5021693
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggRadial
        Thumb.GradientMirror = ggRadial
        Thumb.Size = 20
        Thumb.Width = 20
        Thumb.Shape = tsRound
        TickMark.Color = clBlack
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'MS Sans Serif'
        TickMark.Font.Style = []
        TickMark.Style = tsNone
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
      end
      object AdvTrackBar6: TAdvTrackBar
        Left = 40
        Top = 116
        Width = 177
        Height = 38
        Hint = 'my normal hint'
        BorderColor = clNone
        BorderColorDisabled = clBlack
        Buttons.BorderColor = 9262895
        Buttons.BorderColorHot = 10079963
        Buttons.BorderColorDown = 4548219
        Buttons.Color = 16644855
        Buttons.ColorTo = 16178633
        Buttons.ColorHot = 15465983
        Buttons.ColorHotTo = 11332863
        Buttons.ColorDown = 7778289
        Buttons.ColorDownTo = 4296947
        Buttons.ColorMirror = clWhite
        Buttons.ColorMirrorTo = 14727318
        Buttons.ColorMirrorHot = 5888767
        Buttons.ColorMirrorHotTo = 10807807
        Buttons.ColorMirrorDown = 946929
        Buttons.ColorMirrorDownTo = 5021693
        Buttons.GradientMirror = ggVertical
        ColorTo = clNone
        ColorDisabled = clBlack
        ColorDisabledTo = clBlack
        Direction = gdHorizontal
        Color = clNone
        ParentShowHint = False
        ShowHint = True
        Slider.BorderColor = 12752500
        Slider.BorderColorDisabled = clBlack
        Slider.Color = clWhite
        Slider.ColorTo = clBlack
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdHorizontal
        TabOrder = 1
        Thumb.BorderColor = 10317632
        Thumb.BorderColorHot = 10079963
        Thumb.BorderColorDown = 4548219
        Thumb.BorderColorDisabled = clGray
        Thumb.Color = 15916488
        Thumb.ColorTo = 16044731
        Thumb.ColorDown = 7778289
        Thumb.ColorDownTo = 4296947
        Thumb.ColorHot = 15465983
        Thumb.ColorHotTo = 11332863
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = clWhite
        Thumb.ColorMirrorTo = 14462601
        Thumb.ColorMirrorHot = 5888767
        Thumb.ColorMirrorHotTo = 10807807
        Thumb.ColorMirrorDown = 946929
        Thumb.ColorMirrorDownTo = 5021693
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggRadial
        Thumb.GradientMirror = ggRadial
        Thumb.Width = 13
        Thumb.Shape = tsRectangle
        TickMark.Color = 12752500
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'MS Sans Serif'
        TickMark.Font.Style = []
        TickMark.Position = tmBoth
        TrackHint = True
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
      end
      object AdvTrackBar10: TAdvTrackBar
        Left = 272
        Top = 20
        Width = 26
        Height = 177
        BorderColor = clNone
        BorderColorDisabled = clBlack
        Buttons.BorderColor = 9262895
        Buttons.BorderColorHot = 10079963
        Buttons.BorderColorDown = 4548219
        Buttons.Color = 16644855
        Buttons.ColorTo = 16178633
        Buttons.ColorHot = 15465983
        Buttons.ColorHotTo = 11332863
        Buttons.ColorDown = 7778289
        Buttons.ColorDownTo = 4296947
        Buttons.ColorMirror = clWhite
        Buttons.ColorMirrorTo = 14727318
        Buttons.ColorMirrorHot = 5888767
        Buttons.ColorMirrorHotTo = 10807807
        Buttons.ColorMirrorDown = 946929
        Buttons.ColorMirrorDownTo = 5021693
        Buttons.GradientMirror = ggVertical
        ColorTo = clNone
        ColorDisabled = clBlack
        ColorDisabledTo = clBlack
        Direction = gdHorizontal
        Color = clNone
        Orientation = trVertical
        Slider.BorderColor = 12752500
        Slider.BorderColorDisabled = clBlack
        Slider.Color = clWhite
        Slider.ColorTo = clBlack
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdHorizontal
        TabOrder = 2
        Thumb.BorderColor = 10317632
        Thumb.BorderColorHot = 10079963
        Thumb.BorderColorDown = 4548219
        Thumb.BorderColorDisabled = clGray
        Thumb.Color = 15916488
        Thumb.ColorTo = 16044731
        Thumb.ColorDown = 7778289
        Thumb.ColorDownTo = 4296947
        Thumb.ColorHot = 15465983
        Thumb.ColorHotTo = 11332863
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = clWhite
        Thumb.ColorMirrorTo = 14462601
        Thumb.ColorMirrorHot = 5888767
        Thumb.ColorMirrorHotTo = 10807807
        Thumb.ColorMirrorDown = 946929
        Thumb.ColorMirrorDownTo = 5021693
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggRadial
        Thumb.GradientMirror = ggRadial
        Thumb.Size = 20
        Thumb.Width = 20
        Thumb.Shape = tsRound
        TickMark.Color = clBlack
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'MS Sans Serif'
        TickMark.Font.Style = []
        TickMark.Style = tsNone
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
      end
      object AdvTrackBar11: TAdvTrackBar
        Left = 304
        Top = 20
        Width = 53
        Height = 177
        BorderColor = clNone
        BorderColorDisabled = clBlack
        Buttons.BorderColor = 9262895
        Buttons.BorderColorHot = 10079963
        Buttons.BorderColorDown = 4548219
        Buttons.Color = 16644855
        Buttons.ColorTo = 16178633
        Buttons.ColorHot = 15465983
        Buttons.ColorHotTo = 11332863
        Buttons.ColorDown = 7778289
        Buttons.ColorDownTo = 4296947
        Buttons.ColorMirror = clWhite
        Buttons.ColorMirrorTo = 14727318
        Buttons.ColorMirrorHot = 5888767
        Buttons.ColorMirrorHotTo = 10807807
        Buttons.ColorMirrorDown = 946929
        Buttons.ColorMirrorDownTo = 5021693
        Buttons.GradientMirror = ggVertical
        ColorTo = clNone
        ColorDisabled = clBlack
        ColorDisabledTo = clBlack
        Direction = gdHorizontal
        Color = clNone
        Orientation = trVertical
        Slider.BorderColor = 12752500
        Slider.BorderColorDisabled = clBlack
        Slider.Color = clWhite
        Slider.ColorTo = clBlack
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdHorizontal
        TabOrder = 3
        Thumb.BorderColor = 10317632
        Thumb.BorderColorHot = 10079963
        Thumb.BorderColorDown = 4548219
        Thumb.BorderColorDisabled = clGray
        Thumb.Color = 15916488
        Thumb.ColorTo = 16044731
        Thumb.ColorDown = 7778289
        Thumb.ColorDownTo = 4296947
        Thumb.ColorHot = 15465983
        Thumb.ColorHotTo = 11332863
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = clWhite
        Thumb.ColorMirrorTo = 14462601
        Thumb.ColorMirrorHot = 5888767
        Thumb.ColorMirrorHotTo = 10807807
        Thumb.ColorMirrorDown = 946929
        Thumb.ColorMirrorDownTo = 5021693
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggRadial
        Thumb.GradientMirror = ggRadial
        Thumb.Width = 13
        Thumb.Shape = tsRectangle
        TickMark.Color = 12752500
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'MS Sans Serif'
        TickMark.Font.Style = []
        TickMark.Position = tmBoth
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Custom tickmarks'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object AdvTrackBar12: TAdvTrackBar
        Left = 109
        Top = 114
        Width = 249
        Height = 97
        BorderColor = clNone
        BorderColorDisabled = clBlack
        Buttons.BorderColor = 14727579
        Buttons.BorderColorHot = clBlack
        Buttons.BorderColorDown = clBlack
        Buttons.Color = clWhite
        Buttons.ColorTo = clWhite
        Buttons.ColorHot = 16117985
        Buttons.ColorHotTo = 16372402
        Buttons.ColorDown = 16111818
        Buttons.ColorDownTo = 16367008
        Buttons.ColorMirror = clWhite
        Buttons.ColorMirrorTo = 14727318
        Buttons.ColorMirrorHot = 16107693
        Buttons.ColorMirrorHotTo = 16775412
        Buttons.ColorMirrorDown = 16102556
        Buttons.ColorMirrorDownTo = 16768988
        Buttons.GradientMirror = ggVertical
        ColorTo = clNone
        ColorDisabled = clBlack
        ColorDisabledTo = clBlack
        Direction = gdVertical
        Color = clNone
        Slider.BorderColor = 10317632
        Slider.BorderColorDisabled = clBlack
        Slider.Color = clNone
        Slider.ColorTo = clNone
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdVertical
        Slider.Size = 4
        TabOrder = 0
        Thumb.BorderColor = 10317632
        Thumb.BorderColorHot = clBlack
        Thumb.BorderColorDown = clBlack
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = clNone
        Thumb.ColorTo = clNone
        Thumb.ColorDown = clNone
        Thumb.ColorDownTo = clNone
        Thumb.ColorHot = clNone
        Thumb.ColorHotTo = clNone
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = clNone
        Thumb.ColorMirrorTo = clNone
        Thumb.ColorMirrorHot = clNone
        Thumb.ColorMirrorHotTo = clNone
        Thumb.ColorMirrorDown = clNone
        Thumb.ColorMirrorDownTo = clNone
        Thumb.ColorMirrorDisabled = clNone
        Thumb.ColorMirrorDisabledTo = clNone
        Thumb.Gradient = ggRadial
        Thumb.GradientMirror = ggRadial
        Thumb.Width = 12
        Thumb.Shape = tsPointer
        TickMark.Color = 9200441
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'MS Sans Serif'
        TickMark.Font.Style = []
        TickMark.ShowText = True
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
        OnDrawTick = AdvTrackBar12DrawTick
      end
      object AdvTrackBar16: TAdvTrackBar
        Left = 22
        Top = 32
        Width = 81
        Height = 242
        BorderColor = clNone
        BorderColorDisabled = clBlack
        Buttons.BorderColor = 14727579
        Buttons.BorderColorHot = clBlack
        Buttons.BorderColorDown = clBlack
        Buttons.Color = clWhite
        Buttons.ColorTo = clWhite
        Buttons.ColorHot = 16117985
        Buttons.ColorHotTo = 16372402
        Buttons.ColorDown = 16111818
        Buttons.ColorDownTo = 16367008
        Buttons.ColorMirror = clWhite
        Buttons.ColorMirrorTo = 14727318
        Buttons.ColorMirrorHot = 16107693
        Buttons.ColorMirrorHotTo = 16775412
        Buttons.ColorMirrorDown = 16102556
        Buttons.ColorMirrorDownTo = 16768988
        Buttons.GradientMirror = ggVertical
        Buttons.Size = 10
        ColorTo = clNone
        ColorDisabled = clBlack
        ColorDisabledTo = clBlack
        Direction = gdVertical
        Color = clNone
        Orientation = trVertical
        Slider.BorderColor = 10317632
        Slider.BorderColorDisabled = clBlack
        Slider.Color = clNone
        Slider.ColorTo = clNone
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdVertical
        Slider.Offset = 0
        TabOrder = 1
        Thumb.BorderColor = 10317632
        Thumb.BorderColorHot = clBlack
        Thumb.BorderColorDown = clBlack
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = clNone
        Thumb.ColorTo = clNone
        Thumb.ColorDown = clNone
        Thumb.ColorDownTo = clNone
        Thumb.ColorHot = clNone
        Thumb.ColorHotTo = clNone
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = clNone
        Thumb.ColorMirrorTo = clNone
        Thumb.ColorMirrorHot = clNone
        Thumb.ColorMirrorHotTo = clNone
        Thumb.ColorMirrorDown = clNone
        Thumb.ColorMirrorDownTo = clNone
        Thumb.ColorMirrorDisabled = clNone
        Thumb.ColorMirrorDisabledTo = clNone
        Thumb.Gradient = ggRadial
        Thumb.GradientMirror = ggRadial
        Thumb.Size = 20
        Thumb.Width = 12
        Thumb.Shape = tsPointer
        TickMark.Color = 9200441
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = ANSI_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'Tahoma'
        TickMark.Font.Style = []
        TickMark.Position = tmBoth
        TickMark.ShowText = True
        TickMark.Spacing = 2
        TickMark.Size = 10
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
        OnDrawTick = AdvTrackBar16DrawTick
      end
      object AdvTrackBar13: TAdvTrackBar
        Left = 109
        Top = 11
        Width = 414
        Height = 97
        BorderColor = clNone
        BorderColorDisabled = clBlack
        Buttons.BorderColor = 14727579
        Buttons.BorderColorHot = clBlack
        Buttons.BorderColorDown = clBlack
        Buttons.Color = clWhite
        Buttons.ColorTo = clWhite
        Buttons.ColorHot = 16117985
        Buttons.ColorHotTo = 16372402
        Buttons.ColorDown = 16111818
        Buttons.ColorDownTo = 16367008
        Buttons.ColorMirror = clWhite
        Buttons.ColorMirrorTo = 14727318
        Buttons.ColorMirrorHot = 16107693
        Buttons.ColorMirrorHotTo = 16775412
        Buttons.ColorMirrorDown = 16102556
        Buttons.ColorMirrorDownTo = 16768988
        Buttons.GradientMirror = ggVertical
        ColorTo = clNone
        ColorDisabled = clBlack
        ColorDisabledTo = clBlack
        Direction = gdVertical
        Color = clNone
        Max = 20
        Slider.BorderColor = 10317632
        Slider.BorderColorDisabled = clBlack
        Slider.Color = clNone
        Slider.ColorTo = clNone
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdVertical
        Slider.Size = 4
        TabOrder = 2
        Thumb.BorderColor = 10317632
        Thumb.BorderColorHot = clBlack
        Thumb.BorderColorDown = clBlack
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = clNone
        Thumb.ColorTo = clNone
        Thumb.ColorDown = clNone
        Thumb.ColorDownTo = clNone
        Thumb.ColorHot = clNone
        Thumb.ColorHotTo = clNone
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = clNone
        Thumb.ColorMirrorTo = clNone
        Thumb.ColorMirrorHot = clNone
        Thumb.ColorMirrorHotTo = clNone
        Thumb.ColorMirrorDown = clNone
        Thumb.ColorMirrorDownTo = clNone
        Thumb.ColorMirrorDisabled = clNone
        Thumb.ColorMirrorDisabledTo = clNone
        Thumb.Gradient = ggRadial
        Thumb.GradientMirror = ggRadial
        Thumb.Width = 12
        Thumb.Shape = tsPointer
        TickMark.Color = 9200441
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'MS Sans Serif'
        TickMark.Font.Style = []
        TickMark.Position = tmBoth
        TickMark.ShowText = True
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
        OnDrawTick = AdvTrackBar13DrawTick
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Gallery'
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object AdvTrackBar7: TAdvTrackBar
        Left = 19
        Top = 3
        Width = 329
        Height = 57
        BorderColor = clNone
        BorderColorDisabled = clNone
        Buttons.BorderColor = 9262895
        Buttons.BorderColorHot = 10079963
        Buttons.BorderColorDown = 4548219
        Buttons.Color = 15653832
        Buttons.ColorTo = 16178633
        Buttons.ColorHot = 15465983
        Buttons.ColorHotTo = 11332863
        Buttons.ColorDown = 7778289
        Buttons.ColorDownTo = 4296947
        Buttons.ColorMirror = 15586496
        Buttons.ColorMirrorTo = 16245200
        Buttons.ColorMirrorHot = 5888767
        Buttons.ColorMirrorHotTo = 10807807
        Buttons.ColorMirrorDown = 946929
        Buttons.ColorMirrorDownTo = 5021693
        Buttons.GradientMirror = ggVertical
        Buttons.Spacing = 0
        ColorTo = clNone
        ColorDisabled = clNone
        ColorDisabledTo = clNone
        Direction = gdHorizontal
        Color = clNone
        Max = 100
        Position = 5
        Slider.BorderColor = clNone
        Slider.BorderColorDisabled = clBlack
        Slider.Color = clWhite
        Slider.ColorTo = clBlack
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdHorizontal
        Slider.Picture.Data = {
          89504E470D0A1A0A0000000D494844520000013F0000003208030000001D912C
          F300000015744558744372656174696F6E2054696D650007D7070E0B1C02403D
          1DF40000000774494D4507D7070E0B1E3A8F082498000000097048597300000E
          C300000EC301C76FA86400000300504C54453194FF319CF7399CFF39A5FFFF21
          18FF2121FF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F8721C80000000774524E53FFFF
          FFFFFFFF001A4B0346000000BC4944415478DAEDD5410E83300C05519202F73F
          7203542A2C935938463327B09EBEE46537D2127D40F2F463E9C7D28F75F99569
          ABEBBCE9F77EBF128D94DCCFFDC1A29192FBB93F583452723FF7A79F7EFAE937
          5FFAE9A79F7EFAD968FAB1F4639D7EA5961A7D48BAB6D6E5578F1C625FDBD9CF
          AF0D50BFBE6E7E9F637F25FAA0643DF6D706E8FEFABAF9EDCE6FA0FFFFB0F1F4
          63E9C7D28FA51F4B3F967E2CFD58FAB1F463E9C7D28FA51F4B3F967E2CFD58FA
          B1F463E9C7D28FF5050B5A3175D255D7980000000049454E44AE426082}
        Slider.PictureCompleted.Data = {
          89504E470D0A1A0A0000000D494844520000013F0000003208030000001D912C
          F300000015744558744372656174696F6E2054696D650007D7070E0B1C02403D
          1DF40000000774494D4507D7070E0B1E3A8F082498000000097048597300000E
          C300000EC301C76FA86400000300504C54453194FF319CF7399CFF39A5FFFF21
          18FF2121FF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F8721C80000000774524E53FFFF
          FFFFFFFF001A4B0346000000BC4944415478DAEDD5410E83300C05519202F73F
          7203542A2C935938463327B09EBEE46537D2127D40F2F463E9C7D28F75F99569
          ABEBBCE9F77EBF128D94DCCFFDC1A29192FBB93F583452723FF7A79F7EFAE937
          5FFAE9A79F7EFAD968FAB1F4639D7EA5961A7D48BAB6D6E5578F1C625FDBD9CF
          AF0D50BFBE6E7E9F637F25FAA0643DF6D706E8FEFABAF9EDCE6FA0FFFFB0F1F4
          63E9C7D28FA51F4B3F967E2CFD58FAB1F463E9C7D28FA51F4B3F967E2CFD58FA
          B1F463E9C7D28FF5050B5A3175D255D7980000000049454E44AE426082}
        Slider.Size = 50
        Slider.Offset = 0
        TabOrder = 0
        Thumb.BorderColor = 10317632
        Thumb.BorderColorHot = 10079963
        Thumb.BorderColorDown = 4548219
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = 15653832
        Thumb.ColorTo = 16178633
        Thumb.ColorDown = 7778289
        Thumb.ColorDownTo = 4296947
        Thumb.ColorHot = 15465983
        Thumb.ColorHotTo = 11332863
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = 15586496
        Thumb.ColorMirrorTo = 16245200
        Thumb.ColorMirrorHot = 5888767
        Thumb.ColorMirrorHotTo = 10807807
        Thumb.ColorMirrorDown = 946929
        Thumb.ColorMirrorDownTo = 5021693
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggVertical
        Thumb.GradientMirror = ggRadial
        Thumb.Picture.Data = {
          89504E470D0A1A0A0000000D494844520000000B000000320803000000BD07D1
          7100000015744558744372656174696F6E2054696D650007D7070E0B1C31FFED
          7CE20000000774494D4507D7070E0B1F0BC7CD15E3000000097048597300000E
          C300000EC301C76FA86400000300504C54455A5A5A5A5A635A6363635A5A635A
          6363635A6363636B6B6B7B7B7B7B7B84847B7B8484848C8C8C8C8C948C948C94
          94949C9C949C9C9CA59CA5A5A5A5ADADADB5B5B5B5B5BDBDBDBDC6BDC6C6C6C6
          CECEC6CECECED6D6D6D6D6DED6DED6DEDEDEDEDEE7E7DEDEE7E7E7E7EFE7FF42
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC6ED38C0000002574524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF003FCF424F000000714944415478DAE590410E824010045B071860C50196
          051741149CFF7F51420C70E101C63E742A953E35DE5BF0CF4C14119D9746330E
          8DBD4DCFB6168CAA8E9DAA178BD7971DE7E856BE1CF0F5C0673FB3B96B276CF5
          216CE07BCB2CB3E614655598B8F095496250789A3F431052B4FFF3034D183D33
          069F1CA00000000049454E44AE426082}
        Thumb.Size = 50
        Thumb.Width = 11
        Thumb.Shape = tsPointer
        TickMark.Color = clBlack
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'Tahoma'
        TickMark.Font.Style = []
        TickMark.Style = tsNone
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
      end
      object AdvTrackBar8: TAdvTrackBar
        Left = 3
        Top = 88
        Width = 150
        Height = 26
        BorderColor = clNone
        BorderColorDisabled = clNone
        Buttons.BorderColor = 9262895
        Buttons.BorderColorHot = 10079963
        Buttons.BorderColorDown = 4548219
        Buttons.Color = 15653832
        Buttons.ColorTo = 16178633
        Buttons.ColorHot = 15465983
        Buttons.ColorHotTo = 11332863
        Buttons.ColorDown = 7778289
        Buttons.ColorDownTo = 4296947
        Buttons.ColorMirror = 15586496
        Buttons.ColorMirrorTo = 16245200
        Buttons.ColorMirrorHot = 5888767
        Buttons.ColorMirrorHotTo = 10807807
        Buttons.ColorMirrorDown = 946929
        Buttons.ColorMirrorDownTo = 5021693
        Buttons.GradientMirror = ggVertical
        Buttons.MinPicture.Data = {
          89504E470D0A1A0A0000000D494844520000000A0000000B080300000071B0EC
          2A00000015744558744372656174696F6E2054696D650007D7070C0F34228B0E
          F3C10000000774494D4507D7070C0F351B1811A9F8000000097048597300000B
          1200000B1201D2DD7EFC00000300504C54452829282A2A2A2C2C2C2C2D2C2E2F
          2E2E2F2F2F302E2F302F31323232323234353435353437383837393838393738
          39383B3B3B3B3C3A3B3C3B3E3F3E3E3F3F4242425253525454545959595B5B5B
          757474797979FF40FF949394BBBABAC3C2C2C4C2C3C4C3C3C4C4C40000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003098077E0000001D74524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF005986E76A00
          0000554944415478DA3D8C490E8020100407540441715FDB8DFF3F52D0481D2A
          75E8342130045150D7FFD9D4ED9BA6ACAC35587690F6141ADB0852522AA5B04E
          2091A542E498FDD63997708EE37BB8198BBF17C5C419F4003CBA0985A31D500B
          0000000049454E44AE426082}
        Buttons.MinPictureHot.Data = {
          89504E470D0A1A0A0000000D494844520000000A0000000B080300000071B0EC
          2A00000015744558744372656174696F6E2054696D650007D7070C0F34228B0E
          F3C10000000774494D4507D7070C0F351B1811A9F8000000097048597300000B
          1200000B1201D2DD7EFC00000300504C54452829282A2A2A2C2C2C2C2D2C2E2F
          2E2E2F2F2F302E2F302F31323232323234353435353437383837393838393738
          39383B3B3B3B3C3A3B3C3B3E3F3E3E3F3F4242425253525454545959595B5B5B
          757474797979FF40FF949394BBBABAC3C2C2C4C2C3C4C3C3C4C4C40000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003098077E0000001D74524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF005986E76A00
          0000554944415478DA3D8C490E8020100407540441715FDB8DFF3F52D0481D2A
          75E8342130045150D7FFD9D4ED9BA6ACAC35587690F6141ADB0852522AA5B04E
          2091A542E498FDD63997708EE37BB8198BBF17C5C419F4003CBA0985A31D500B
          0000000049454E44AE426082}
        Buttons.MinPictureDown.Data = {
          89504E470D0A1A0A0000000D494844520000000A0000000B080300000071B0EC
          2A00000015744558744372656174696F6E2054696D650007D7070C0F34228B0E
          F3C10000000774494D4507D7070C0F351B1811A9F8000000097048597300000B
          1200000B1201D2DD7EFC00000300504C54452829282A2A2A2C2C2C2C2D2C2E2F
          2E2E2F2F2F302E2F302F31323232323234353435353437383837393838393738
          39383B3B3B3B3C3A3B3C3B3E3F3E3E3F3F4242425253525454545959595B5B5B
          757474797979FF40FF949394BBBABAC3C2C2C4C2C3C4C3C3C4C4C40000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003098077E0000001D74524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF005986E76A00
          0000554944415478DA3D8C490E8020100407540441715FDB8DFF3F52D0481D2A
          75E8342130045150D7FFD9D4ED9BA6ACAC35587690F6141ADB0852522AA5B04E
          2091A542E498FDD63997708EE37BB8198BBF17C5C419F4003CBA0985A31D500B
          0000000049454E44AE426082}
        Buttons.MaxPicture.Data = {
          89504E470D0A1A0A0000000D494844520000000E0000000B0803000000785B4C
          5000000015744558744372656174696F6E2054696D650007D7070C0F353116AB
          835E0000000774494D4507D7070C0F3718B32E9AC0000000097048597300000B
          1200000B1201D2DD7EFC00000300504C54452829282A2A2A2C2C2C2C2D2C2E2F
          2E2E2F2F2F302E2F302F31323232323235353435353537393737393838393738
          38383B3B3A3D3D3D3E3F3E3E3F3F403F3F424242444343454544535252545454
          5657565859585959595B5B5B5B5C5B5C5C5C5C5D5C626262676766696868696A
          696A6B6A6C6C6B6E6E6D7474737474747879787979797B7C7B7C7C7B7D7C7C7F
          7F7FFF40FF8282818D8C8C8E8E8E919091949493959494959595999798999899
          999998999A999A999A9E9D9C9F9E9EA2A2A2A3A2A2A3A3A2A7A6A6A9A8A8ACAB
          ABC3C2C2C4C2C3C4C3C3C4C4C400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000C797B3290000003174524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF001F9A4E210000008B4944415478DA2D8ED7
          12824014432F08CA2EA06B17B1F76EEC1DBBEEFF7F91B89A994CE6BC24212865
          439F1A2B90A2740A08D6D37AA05008010C6A87F698E026DCB8E3A03C1F359755
          02E7DCE63686DE397FCB1098C518B3D0F7B6B9204930A38669C4505A745B339F
          20A5D4F508D02B6C2A13D5FCD634E0B2EF14AFBFDDD7378EFEEE7F03CFD0773C
          F001398E17261F2B598E0000000049454E44AE426082}
        Buttons.MaxPictureHot.Data = {
          89504E470D0A1A0A0000000D494844520000000E0000000B0803000000785B4C
          5000000015744558744372656174696F6E2054696D650007D7070C0F353116AB
          835E0000000774494D4507D7070C0F3718B32E9AC0000000097048597300000B
          1200000B1201D2DD7EFC00000300504C54452829282A2A2A2C2C2C2C2D2C2E2F
          2E2E2F2F2F302E2F302F31323232323235353435353537393737393838393738
          38383B3B3A3D3D3D3E3F3E3E3F3F403F3F424242444343454544535252545454
          5657565859585959595B5B5B5B5C5B5C5C5C5C5D5C626262676766696868696A
          696A6B6A6C6C6B6E6E6D7474737474747879787979797B7C7B7C7C7B7D7C7C7F
          7F7FFF40FF8282818D8C8C8E8E8E919091949493959494959595999798999899
          999998999A999A999A9E9D9C9F9E9EA2A2A2A3A2A2A3A3A2A7A6A6A9A8A8ACAB
          ABC3C2C2C4C2C3C4C3C3C4C4C400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000C797B3290000003174524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF001F9A4E210000008B4944415478DA2D8ED7
          12824014432F08CA2EA06B17B1F76EEC1DBBEEFF7F91B89A994CE6BC24212865
          439F1A2B90A2740A08D6D37AA05008010C6A87F698E026DCB8E3A03C1F359755
          02E7DCE63686DE397FCB1098C518B3D0F7B6B9204930A38669C4505A745B339F
          20A5D4F508D02B6C2A13D5FCD634E0B2EF14AFBFDDD7378EFEEE7F03CFD0773C
          F001398E17261F2B598E0000000049454E44AE426082}
        Buttons.MaxPictureDown.Data = {
          89504E470D0A1A0A0000000D494844520000000E0000000B0803000000785B4C
          5000000015744558744372656174696F6E2054696D650007D7070C0F353116AB
          835E0000000774494D4507D7070C0F3718B32E9AC0000000097048597300000B
          1200000B1201D2DD7EFC00000300504C54452829282A2A2A2C2C2C2C2D2C2E2F
          2E2E2F2F2F302E2F302F31323232323235353435353537393737393838393738
          38383B3B3A3D3D3D3E3F3E3E3F3F403F3F424242444343454544535252545454
          5657565859585959595B5B5B5B5C5B5C5C5C5C5D5C626262676766696868696A
          696A6B6A6C6C6B6E6E6D7474737474747879787979797B7C7B7C7C7B7D7C7C7F
          7F7FFF40FF8282818D8C8C8E8E8E919091949493959494959595999798999899
          999998999A999A999A9E9D9C9F9E9EA2A2A2A3A2A2A3A3A2A7A6A6A9A8A8ACAB
          ABC3C2C2C4C2C3C4C3C3C4C4C400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000C797B3290000003174524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF001F9A4E210000008B4944415478DA2D8ED7
          12824014432F08CA2EA06B17B1F76EEC1DBBEEFF7F91B89A994CE6BC24212865
          439F1A2B90A2740A08D6D37AA05008010C6A87F698E026DCB8E3A03C1F359755
          02E7DCE63686DE397FCB1098C518B3D0F7B6B9204930A38669C4505A745B339F
          20A5D4F508D02B6C2A13D5FCD634E0B2EF14AFBFDDD7378EFEEE7F03CFD0773C
          F001398E17261F2B598E0000000049454E44AE426082}
        Buttons.Visible = True
        Buttons.Size = 10
        Buttons.Spacing = 0
        ColorTo = 9934744
        ColorDisabled = clNone
        ColorDisabledTo = clNone
        Direction = gdVertical
        Color = 12237755
        Position = 5
        Slider.BorderColor = 5197647
        Slider.BorderColorDisabled = clBlack
        Slider.Color = 6710886
        Slider.ColorTo = 8618883
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdVertical
        Slider.Size = 6
        Slider.Border3D = False
        Slider.Rounded = True
        Slider.Offset = 2
        TabOrder = 1
        Thumb.BorderColor = 10317632
        Thumb.BorderColorHot = 10079963
        Thumb.BorderColorDown = 4548219
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = 15653832
        Thumb.ColorTo = 16178633
        Thumb.ColorDown = 7778289
        Thumb.ColorDownTo = 4296947
        Thumb.ColorHot = 15465983
        Thumb.ColorHotTo = 11332863
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = 15586496
        Thumb.ColorMirrorTo = 16245200
        Thumb.ColorMirrorHot = 5888767
        Thumb.ColorMirrorHotTo = 10807807
        Thumb.ColorMirrorDown = 946929
        Thumb.ColorMirrorDownTo = 5021693
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggVertical
        Thumb.GradientMirror = ggRadial
        Thumb.Picture.Data = {
          89504E470D0A1A0A0000000D494844520000000C0000000C080300000061ABAC
          D500000015744558744372656174696F6E2054696D650007D7070C10380192A6
          29F20000000774494D4507D7070C100F18B3CBC276000000097048597300000A
          F000000AF00142AC349800000300504C5445393A393A3A3A5757575E5E5E6362
          636363636464646565656868686969697575757675757777777877777A7A797A
          7A7AFF40FF8282828383828383838484838484848584858686858887878C8C8B
          8E8D8C9494949696959B9B9AA0A0A0A7A5A5A6A6A5A7A6A5A7A6A6A8A7A6AAA9
          AAAAAAAAAEAEADB4B4B4B9B8B7B9B9B7BCBBBABCBCBAC7C6C5C7C6C6C7C7C6CB
          CBCAD0D0CFD1D1CFD0D0D0D1D0D0D2D1D0D2D1D1D5D5D5DDDCDCDDDDDCDEDDDC
          E7E7E6E8E7E7EAEAE9EBEAE9EEEEEDEFEFEFF1F1F0F4F4F3F9FAF9FAF9F9FAFA
          FAFBFBFBFCFCFCFDFDFD00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000D4EE44D50000001174524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF0025AD9962000000954944415478DA1D8E47
          12824014057F41111D6050916C9641053181622028E1FE3712EC55F7EA3DC018
          9B922048662780B1E246791EB94A1FB257356DDB549E8C81728AF25BD79FB270
          286076CFF79A90CDEBB167803DDDD331215A7ABBB0C085713CD526D36B7CE080
          9E056142481204731A6CD5F7CF5976DCFAAA0D18E9CB55C74247FD281A8C2C6B
          28A2FF036C883C2F1A9DFC00F4E3122F8541361C0000000049454E44AE426082}
        Thumb.PictureDown.Data = {
          89504E470D0A1A0A0000000D494844520000000C0000000C080300000061ABAC
          D500000015744558744372656174696F6E2054696D650007D7070C10380192A6
          29F20000000774494D4507D7070C100E32716B3AE1000000097048597300000A
          F000000AF00142AC349800000300504C5445393A393A3A3A5757575E5E5E6362
          636363636464646565656868686969697575757675757777777877777A7A797A
          7A7AFF40FF8282828383828383838484838484848584858686858887878C8C8B
          8E8D8C9494949696959B9B9AA0A0A0A7A5A5A6A6A5A7A6A5A7A6A6A8A7A6AAA9
          AAAAAAAAAEAEADB4B4B4B9B8B7B9B9B7BCBBBABCBCBAC7C6C5C7C6C6C7C7C6CB
          CBCAD0D0CFD1D1CFD0D0D0D1D0D0D2D1D0D2D1D1D5D5D5DDDCDCDDDDDCDEDDDC
          E7E7E6E8E7E7EAEAE9EBEAE9EEEEEDEFEFEFF1F1F0F4F4F3F9FAF9FAF9F9FAFA
          FAFBFBFBFCFCFCFDFDFD00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000D4EE44D50000001174524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF0025AD9962000000944944415478DA1D8ED9
          02425014454F2443175725B36654A489D26028C3FFFF51B49ED67ADA1B30C61A
          CFB2BCD60A602C5A61968596D885E09475D3D4A5236020CCBCF856D5A7C84D02
          A8DDF3BD86DEE6F5D8533038DD9309D59793DB6500741045B63CB5AFD1810672
          E607B1EBC6BE3F27C1903CEF9CA6C7AD27198091B25CB52C14D48DA2E158D747
          1CFA3FC02AC7309CDACA0FC0C9119D350799DF0000000049454E44AE426082}
        Thumb.Size = 12
        Thumb.Width = 12
        Thumb.Shape = tsPointer
        TickMark.Color = clBlack
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'Tahoma'
        TickMark.Font.Style = []
        TickMark.Style = tsManual
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Transparent = False
        Version = '1.6.3.3'
      end
      object AdvTrackBar14: TAdvTrackBar
        Left = 3
        Top = 144
        Width = 150
        Height = 26
        BorderColor = clNone
        BorderColorDisabled = clNone
        Buttons.BorderColor = 9262895
        Buttons.BorderColorHot = 10079963
        Buttons.BorderColorDown = 4548219
        Buttons.Color = 15653832
        Buttons.ColorTo = 16178633
        Buttons.ColorHot = 15465983
        Buttons.ColorHotTo = 11332863
        Buttons.ColorDown = 7778289
        Buttons.ColorDownTo = 4296947
        Buttons.ColorMirror = 15586496
        Buttons.ColorMirrorTo = 16245200
        Buttons.ColorMirrorHot = 5888767
        Buttons.ColorMirrorHotTo = 10807807
        Buttons.ColorMirrorDown = 946929
        Buttons.ColorMirrorDownTo = 5021693
        Buttons.GradientMirror = ggVertical
        Buttons.Spacing = 0
        ColorTo = clNone
        ColorDisabled = clNone
        ColorDisabledTo = clNone
        Direction = gdHorizontal
        Color = clNone
        Slider.BorderColor = clNone
        Slider.BorderColorDisabled = clBlack
        Slider.Color = clGray
        Slider.ColorTo = clSilver
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdVertical
        Slider.Size = 6
        Slider.Rounded = True
        Slider.Offset = 6
        TabOrder = 2
        Thumb.BorderColor = 10317632
        Thumb.BorderColorHot = 10079963
        Thumb.BorderColorDown = 4548219
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = 15653832
        Thumb.ColorTo = 16178633
        Thumb.ColorDown = 7778289
        Thumb.ColorDownTo = 4296947
        Thumb.ColorHot = 15465983
        Thumb.ColorHotTo = 11332863
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = 15586496
        Thumb.ColorMirrorTo = 16245200
        Thumb.ColorMirrorHot = 5888767
        Thumb.ColorMirrorHotTo = 10807807
        Thumb.ColorMirrorDown = 946929
        Thumb.ColorMirrorDownTo = 5021693
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggVertical
        Thumb.GradientMirror = ggRadial
        Thumb.Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000110000001408030000005C7E26
          7B00000015744558744372656174696F6E2054696D650007D7070E0C0C0E0606
          550B0000000774494D4507D7070E0B1300FCAA8367000000097048597300000E
          7400000E74016B24B3D600000300504C54453939394242424A4A4A5252525A5A
          5A6B6B6B7373737B7B7B8484848C8C8C9494949C9C9CA5A5A5ADADADB5B5B5BD
          BDBDC6C6C6CECECED6D6D6DEDEDEE7E7E7EFEFEFFF42FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07DE808F0000001774524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E640E65E00000095494441
          5478DA4DCF590EC3200C4551676234601E29DDFF4E4BEBA4E1FC18AE2C24A8AB
          B6B4EB443AB0840573C11A255E897483458435D115EAC02BB460D530D2778B3A
          36AE37DED0C9B9501FC139F24746C52D1F9EA2153CC44632A1D476AB2518B29C
          666CC9E532CBE365A933F1E481F640F594E47CA9EF3C2591F07B96849022FE77
          3083BA44B36F6A37417E7F97925591F1F70F78C015973C882870000000004945
          4E44AE426082}
        Thumb.PictureHot.Data = {
          89504E470D0A1A0A0000000D49484452000000110000001408030000005C7E26
          7B00000015744558744372656174696F6E2054696D650007D7070E0C0C0E0606
          550B0000000774494D4507D7070E0B171C8CC71A2C000000097048597300000E
          7400000E74016B24B3D600000300504C54455F5F5F6868687070707878788080
          80919191999999A1A1A1AAAAAAB2B2B2BABABAC2C2C2CBCBCBD3D3D3DBDBDBE3
          E3E3ECECECF4F4F4FCFCFCFFFFFFFFFFFFFFFFFFFF68FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8AD0529A0000001774524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E640E65E00000095494441
          5478DA4DCFD91683200C45D1EBC8608070B1F6FFFFB4B6D1CA7E099C9597E030
          6D68D70B3638C4817DE1B8E97625D886A8AA58C215EA49465AE168E14CDF2D1C
          9CA4DE64E281D9C7FA887EC6B26456DEF2B2C039E5439DC31A4B6DB75AE20A27
          A9270E3E975EF6085A7B1A10C8F6600D48BABFCC77EE9AA0F2EE2505D3C6FF9F
          22C4A1DB3A4F665EA3FE6ED7924DD1F3F60F6558157FC317FEE1000000004945
          4E44AE426082}
        Thumb.PictureDown.Data = {
          89504E470D0A1A0A0000000D49484452000000110000001408030000005C7E26
          7B00000015744558744372656174696F6E2054696D650007D7070E0B0C0E0349
          438E0000000774494D4507D7070E0B120B72636BAE000000097048597300000E
          C300000EC301C76FA86400000300504C54452020202929293131313939394141
          415252525A5A5A6262626B6B6B7373737B7B7B8383838C8C8C9494949C9C9CA4
          A4A4ADADADB5B5B5BDBDBDC5C5C5CECECED6D6D6E629E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E64A55AC400000001774524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E640E65E00000094494441
          5478DA4DCFDB1683200C44D1F18A4080305AFAFF7F5ADB6865BF04CECA4BD0CC
          3EECD70B363884817DE118355E09B621AA2A9670857A929156385A38D3770B8D
          93D49B4C6C885BA88FB045C8925979CB8B203BE5435DC61A4ADD6FB584154E52
          4F1CB65C7A7983D7DA530F4FEE0F568FA4C7CB7CE7A1092AEF5E523045FEFF14
          219AC6759ECCBC06FDDDAE259BA2E7ED1F874E15A94916CF610000000049454E
          44AE426082}
        Thumb.Size = 20
        Thumb.Width = 17
        Thumb.Shape = tsPointer
        TickMark.Color = clBlack
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'Tahoma'
        TickMark.Font.Style = []
        TickMark.Style = tsNone
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
      end
      object AdvTrackBar18: TAdvTrackBar
        Left = 472
        Top = 52
        Width = 37
        Height = 150
        BorderColor = clNone
        BorderColorDisabled = clNone
        Buttons.BorderColor = 9262895
        Buttons.BorderColorHot = 10079963
        Buttons.BorderColorDown = 4548219
        Buttons.Color = 15653832
        Buttons.ColorTo = 16178633
        Buttons.ColorHot = 15465983
        Buttons.ColorHotTo = 11332863
        Buttons.ColorDown = 7778289
        Buttons.ColorDownTo = 4296947
        Buttons.ColorMirror = 15586496
        Buttons.ColorMirrorTo = 16245200
        Buttons.ColorMirrorHot = 5888767
        Buttons.ColorMirrorHotTo = 10807807
        Buttons.ColorMirrorDown = 946929
        Buttons.ColorMirrorDownTo = 5021693
        Buttons.GradientMirror = ggVertical
        Buttons.Spacing = 0
        ColorTo = clNone
        ColorDisabled = clNone
        ColorDisabledTo = clNone
        Direction = gdHorizontal
        Color = clNone
        Orientation = trVertical
        Position = 5
        Slider.BorderColor = clNone
        Slider.BorderColorDisabled = clBlack
        Slider.Color = clWhite
        Slider.ColorTo = clBlack
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdHorizontal
        Slider.Picture.Data = {
          89504E470D0A1A0A0000000D494844520000001D0000008F080300000031E320
          7500000015744558744372656174696F6E2054696D650007D7070E0B2B240237
          383D0000000774494D4507D7070E0B342C14B75DE1000000097048597300000E
          C300000EC301C76FA86400000300504C5445948C8C94948C949494A59C94A59C
          9CA5A594A5A5A5ADA59CADAD9CADADADBDBDBDC6C6C6CECECED6D6D6DEDEDEE7
          E7E7EFEFEFF7F7F7FF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D0B9AFC0000001374524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00B27DDC08000000AB4944415478DAED
          D8C10EC320080660AB8C044557DDFBBFEB50BAA469BAD38EFBFF93F103C315C3
          3892628A1E3B7D2E8303B1E45C3C390B53DAD2D214A568BB468BC4C708896BBB
          8FD2089BB46FE11162E49B87AD3353B0DE5C84886D24AD1EB5C198AC89A77AA5
          F00C7956B12EADEDB9F797A5F7BEEF4FABAD6AFDE5A42B6686F636140A8542A1
          5028140A8542A17FA5F187DE3137FA1BB58DDEFF197CA33FA96FF4C72FC4CC75
          A3F7DB377397D8712CFF6CBE0000000049454E44AE426082}
        Slider.PictureCompleted.Data = {
          89504E470D0A1A0A0000000D494844520000001D0000008F080300000031E320
          7500000015744558744372656174696F6E2054696D650007D7070E0B282C27C1
          E3CC0000000774494D4507D7070E0B342AFDD4F8D4000000097048597300000E
          C300000EC301C76FA86400000300504C54458C8C84948C73948C8C94948C9494
          949C94639C9C7BA59C5AA59C6BA59C94A59C9CA5A594A5A59CADA584ADA59CAD
          AD9CADADADB5A539B5A56BBDAD42BDBDADC6AD21C6B56BCEB510CEB531CEB54A
          D6BD29D6BD39DEBD00DEC639DEC642DECE52DECE63E7C600E7CE42E7CE4AEFD6
          4AEFD652EFD65AF7DE52F7DE5AFF42FFFFE75AFFE763FFEF63FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F07316C0000002A74524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF0032A8F05C000000E64944415478DAEDD8EB0E82201880614D
          08B29501019A78681E86B3FBBFBE4067ADA65D40FBDE1FCEF16C8E3F6C7E04C3
          D2F57A9A4B92CBB216F847C219935A9B39AD2563349E35A6D298FB77C648EA14
          B1FB56D829311B68BC62C2F4CA9725C3A153912B4AB1DB96DBD794948C608C45
          4ABC164D677BA5149FA2947322B25B9ADE5E3A3E7CE368BBB66D8A22CFD30FF5
          596BBBAE694A873FB4040505FD5385B30F0A0A0A0A0A0A0A0A0ABAA10792B76B
          EA066F37D10F28E495F533B7E7F7DFB520E174CF7044C19E2A55D77DDF575555
          6642101C0668B98518CE681745D16ECEBFC4E769FD09B978FFB1A274C31B0000
          000049454E44AE426082}
        Slider.Size = 29
        Slider.Offset = 0
        TabOrder = 3
        Thumb.BorderColor = 10317632
        Thumb.BorderColorHot = 10079963
        Thumb.BorderColorDown = 4548219
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = 15653832
        Thumb.ColorTo = 16178633
        Thumb.ColorDown = 7778289
        Thumb.ColorDownTo = 4296947
        Thumb.ColorHot = 15465983
        Thumb.ColorHotTo = 11332863
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = 15586496
        Thumb.ColorMirrorTo = 16245200
        Thumb.ColorMirrorHot = 5888767
        Thumb.ColorMirrorHotTo = 10807807
        Thumb.ColorMirrorDown = 946929
        Thumb.ColorMirrorDownTo = 5021693
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggVertical
        Thumb.GradientMirror = ggRadial
        Thumb.Picture.Data = {
          89504E470D0A1A0A0000000D494844520000001D000000080803000000325604
          1500000015744558744372656174696F6E2054696D650007D7070E0B2E2FE892
          15F00000000774494D4507D7070E0B3627B153E6EB000000097048597300000E
          C300000EC301C76FA86400000300504C5445948C7394948C9494949C9463A59C
          5AA59C6BA59C9CA5A5A5ADA584ADAD9CADADADB5A539B5A56BBDAD42BDBDADBD
          BDBDBDC6CEC6AD21C6B56BCEB510CEB531CEB54ACECECED6BD29D6D6D6D6D6E7
          DEBD00DEC639DEDEDEDEE7EFE7C600E7E7E7E7E7EFEFD64AEFD65AEFEFEFF7DE
          52FF42FFFFE75AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF490CDBB10000002674524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF00A77A81BC000000814944415478DA75CED10E82300C8561A02D3ABA31
          BAE1D01A5049F0FD1FD139EE8CFCB75F7272AADA5F1FCF79BEA5BE3FEF19D3F9
          6148299DB6AAF6C91BCB2C31EA5E8CC24C6DF7D5A625515D7E53156AB2F27214
          66453D4085AC801CFF2C0B4395D5DD0311E45BF95749841100DC88455FEB7B0D
          21D81291B5E82ED3384EB87D00F1C412E9464E8D0D0000000049454E44AE4260
          82}
        Thumb.ShowAtMinMax = False
        Thumb.Size = 29
        Thumb.Width = 8
        Thumb.Shape = tsLine
        TickMark.Color = clBlack
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'Tahoma'
        TickMark.Font.Style = []
        TickMark.Style = tsNone
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
      end
      object AdvTrackBar28: TAdvTrackBar
        Left = 3
        Top = 200
        Width = 150
        Height = 26
        BorderColor = clNone
        BorderColorDisabled = clNone
        Buttons.BorderColor = 9262895
        Buttons.BorderColorHot = 10079963
        Buttons.BorderColorDown = 4548219
        Buttons.Color = 15653832
        Buttons.ColorTo = 16178633
        Buttons.ColorHot = 15465983
        Buttons.ColorHotTo = 11332863
        Buttons.ColorDown = 7778289
        Buttons.ColorDownTo = 4296947
        Buttons.ColorMirror = 15586496
        Buttons.ColorMirrorTo = 16245200
        Buttons.ColorMirrorHot = 5888767
        Buttons.ColorMirrorHotTo = 10807807
        Buttons.ColorMirrorDown = 946929
        Buttons.ColorMirrorDownTo = 5021693
        Buttons.GradientMirror = ggVertical
        Buttons.Spacing = 0
        ColorTo = clNone
        ColorDisabled = clNone
        ColorDisabledTo = clNone
        Direction = gdHorizontal
        Color = clNone
        Position = 5
        Slider.BorderColor = clNone
        Slider.BorderColorDisabled = clNone
        Slider.Color = 9868950
        Slider.ColorTo = clWhite
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = 16115906
        Slider.ColorCompletedTo = 10902808
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdVerticalInOut
        Slider.PictureCompleted.Data = {
          89504E470D0A1A0A0000000D49484452000000040000000508030000005573BD
          E900000015744558744372656174696F6E2054696D650007D7070C0F2311315D
          16410000000774494D4507D7070C0F24163579F655000000097048597300000B
          1200000B1201D2DD7EFC00000300504C5445093D62215877235A7A185CA5185D
          A61E65AA1964B42185CF2287D2208AD973A2C0FF40FF89C5ED89C6ED9BDBFFAA
          CBCBC2E7F6C7EEFA000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B5C6540E0000000C74524E53FFFF
          FFFFFFFFFFFFFFFFFF0012DFCECE000000214944415478DA63E0E6171460E0E2
          E3E165606563666160E0E46067E0E6666204000A7600B022E161AD0000000049
          454E44AE426082}
        Slider.PictureStretched = True
        Slider.Size = 6
        Slider.Rounded = True
        Slider.Offset = 6
        TabOrder = 4
        Thumb.BorderColor = 10317632
        Thumb.BorderColorHot = 10079963
        Thumb.BorderColorDown = 4548219
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = 15653832
        Thumb.ColorTo = 16178633
        Thumb.ColorDown = 7778289
        Thumb.ColorDownTo = 4296947
        Thumb.ColorHot = 15465983
        Thumb.ColorHotTo = 11332863
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = 15586496
        Thumb.ColorMirrorTo = 16245200
        Thumb.ColorMirrorHot = 5888767
        Thumb.ColorMirrorHotTo = 10807807
        Thumb.ColorMirrorDown = 946929
        Thumb.ColorMirrorDownTo = 5021693
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggVertical
        Thumb.GradientMirror = ggRadial
        Thumb.Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000090000000A080300000051DB84
          8C00000015744558744372656174696F6E2054696D650007D7070C0F10230DE1
          22F10000000774494D4507D7070C0F1137DB2124BD000000097048597300000B
          1200000B1201D2DD7EFC00000300504C54455B5A566E6D6C71706F7171707775
          727B7A777A79797A7A7B7D7B7AFF40FF82827E8785828584848787888B8B8C8E
          8E8B908F8D9292929998969D9C9A9E9D9B9D9D9EA09F9DA09F9EA5A5A3A8A7A8
          A9A9A9AEADAEB3B2B1B7B6B4BDBBBAC2C2C0C7C7C5C3C6C9CBC9C8CBCCCBCDCD
          CBCDCDCCDFDFDDE0E0DFE3E3E3E4E3E4E5E5E5E7E6E6E7E8E8E9E8E7EBEBEBED
          ECECEEEEEDF2F1F0F3F2F2F4F4F4F6F6F5F9F9F9FBFBFAFBFCFCFEFBF8FDFDFB
          FEFDF9FEFDFBFCFCFCFCFCFDFDFDFDFEFEFEFFFFFF0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000E249B7130000000A74524E53FFFF
          FFFFFFFFFFFFFF00B2CC2CCF000000684944415478DA63E0E4E4E4931404920C
          9CBCF60E4020CAC9C0EEE0606EE360A6CBC6E0606962E7A0C4CD20C4606564AB
          27C2C2CAC5CF6061AAC9232022262CCE606DC82821272B2B23CFA0C8C1ACAEAA
          A2ACA6C0C0C9A461ACA36F6200348F534A4B5F5B9A9313003CCF0B2A74E0C454
          0000000049454E44AE426082}
        Thumb.Size = 10
        Thumb.Width = 9
        Thumb.Shape = tsPointer
        TickMark.Color = clBlack
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'Tahoma'
        TickMark.Font.Style = []
        TickMark.Style = tsNone
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Transparent = False
        Version = '1.6.3.3'
      end
      object AdvTrackBar29: TAdvTrackBar
        Left = 3
        Top = 248
        Width = 150
        Height = 26
        BorderColor = clNone
        BorderColorDisabled = clNone
        Buttons.BorderColor = 9262895
        Buttons.BorderColorHot = 10079963
        Buttons.BorderColorDown = 4548219
        Buttons.Color = 15653832
        Buttons.ColorTo = 16178633
        Buttons.ColorHot = 15465983
        Buttons.ColorHotTo = 11332863
        Buttons.ColorDown = 7778289
        Buttons.ColorDownTo = 4296947
        Buttons.ColorMirror = 15586496
        Buttons.ColorMirrorTo = 16245200
        Buttons.ColorMirrorHot = 5888767
        Buttons.ColorMirrorHotTo = 10807807
        Buttons.ColorMirrorDown = 946929
        Buttons.ColorMirrorDownTo = 5021693
        Buttons.GradientMirror = ggVertical
        Buttons.Spacing = 0
        ColorTo = 12836826
        ColorDisabled = clNone
        ColorDisabledTo = clNone
        Direction = gdHorizontal
        Color = 12836826
        Position = 5
        Slider.BorderColor = clBlack
        Slider.BorderColorDisabled = clBlack
        Slider.Color = 12836826
        Slider.ColorTo = 12836826
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = 10006700
        Slider.ColorCompletedTo = 10006700
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdHorizontal
        Slider.Size = 10
        Slider.Border3D = False
        Slider.Offset = 6
        TabOrder = 5
        Thumb.BorderColor = 10317632
        Thumb.BorderColorHot = 10079963
        Thumb.BorderColorDown = 4548219
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = 15653832
        Thumb.ColorTo = 16178633
        Thumb.ColorDown = 7778289
        Thumb.ColorDownTo = 4296947
        Thumb.ColorHot = 15465983
        Thumb.ColorHotTo = 11332863
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = 15586496
        Thumb.ColorMirrorTo = 16245200
        Thumb.ColorMirrorHot = 5888767
        Thumb.ColorMirrorHotTo = 10807807
        Thumb.ColorMirrorDown = 946929
        Thumb.ColorMirrorDownTo = 5021693
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggVertical
        Thumb.GradientMirror = ggRadial
        Thumb.Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000007000000070803000000F38CA7
          E100000015744558744372656174696F6E2054696D650007D7070C102C1E3100
          F3520000000774494D4507D7070C102D1D641370D9000000097048597300000B
          1200000B1201D2DD7EFC00000300504C54452425202728232828232829232829
          242B2C262C2D272C2D28FF40FF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000073FEA5710000000974524E53FFFF
          FFFFFFFFFFFF00534F78120000002A4944415478DA258A410E00200CC25074EB
          FF5FAC6813D24311A0BF5E1D97ED427B861223A447EF7BC5011E190106EDE2C8
          040000000049454E44AE426082}
        Thumb.Size = 7
        Thumb.Width = 7
        Thumb.Shape = tsPointer
        TickMark.Color = clBlack
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'Tahoma'
        TickMark.Font.Style = []
        TickMark.Style = tsNone
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Transparent = False
        Version = '1.6.3.3'
      end
      object AdvTrackBar19: TAdvTrackBar
        Left = 216
        Top = 250
        Width = 150
        Height = 26
        BorderColor = clNone
        BorderColorDisabled = clBlack
        Buttons.BorderColor = 14727579
        Buttons.BorderColorHot = clBlack
        Buttons.BorderColorDown = clBlack
        Buttons.Color = clWhite
        Buttons.ColorTo = clWhite
        Buttons.ColorHot = 16117985
        Buttons.ColorHotTo = 16372402
        Buttons.ColorDown = 16111818
        Buttons.ColorDownTo = 16367008
        Buttons.ColorMirror = clWhite
        Buttons.ColorMirrorTo = 14727318
        Buttons.ColorMirrorHot = 16107693
        Buttons.ColorMirrorHotTo = 16775412
        Buttons.ColorMirrorDown = 16102556
        Buttons.ColorMirrorDownTo = 16768988
        Buttons.GradientMirror = ggVertical
        Buttons.Spacing = 0
        ColorTo = clNone
        ColorDisabled = clBlack
        ColorDisabledTo = clBlack
        Direction = gdHorizontal
        Color = clNone
        Max = 25
        Slider.BorderColor = clNone
        Slider.BorderColorDisabled = clBlack
        Slider.Color = clWhite
        Slider.ColorTo = clBlack
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdHorizontal
        Slider.Picture.Data = {
          424D0A0900000000000036000000280000009600000005000000010018000000
          0000D408000000000000000000000000000000000000FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF9B8D84
          8E7F7792847B92847B92847B92847B92847B94867D94867D92847B94867D9486
          7D94867D96887F96887F96887F988A8196887F988A81988A819B8D84988A819B
          8D849B8D849B8D84988A819B8D84A4968D9E91889E91889E9188A4968D9E9188
          A4968DA4968DA4968DA4968DA4968DA4968DA4968DA4968DA4968DA4968DA496
          8DA4968DA4968DA4968DA4968D92847B94867D94867D92847B94867D94867D94
          867D96887F96887F96887F988A8196887F92847B92847B92847B92847B92847B
          92847B92847B92847B92847B92847B94867D94867D92847B94867D94867D9486
          7D96887F96887F96887F988A8196887F92847B92847B92847B92847B92847B94
          867D94867D92847B94867D94867D94867D96887F96887F96887F988A8196887F
          988A81988A819B8D84988A819B8D849B8D849B8D84988A819B8D84A4968D9E91
          889E91889E9188A4968D9E9188A4968DA4968DA4968DA4968DA4968DA4968DA4
          968DA4968DA4968DA4968DA4968DA4968DA4968DA4968DA4968DA4968DA89B92
          A89B92A4968DA89B92A4968DADA096A4968DADA096A4968DA89B92A4968DADA0
          96ADA096ADA096ADA096ADA096ADA096ADA096ADA0969B8D84FF00FF0000FF00
          FF8E7F771D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D
          1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D
          1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D
          1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D
          1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D
          1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D
          1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D
          1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D
          1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D
          1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D
          1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D
          1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D
          1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D
          1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D73655CFF00FF
          0000FF00FF85776E65574E65574E65574E65574E65574E65574E65574E65574E
          65574E65574E65574E65574E65574E65574E65574E65574E65574E695C536557
          4E695C5365574E695C5365574E695C5365574E695C536D5E556D5E556D5E556D
          5E556D5E556D5E556D5E556D5E556D5E556D5E556D5E556F61586F61586F6158
          6F61586F61586F61586F61586F61586F61586F615865574E65574E65574E6557
          4E65574E65574E65574E65574E65574E65574E65574E65574E65574E65574E65
          574E65574E65574E65574E65574E65574E65574E65574E65574E65574E65574E
          65574E65574E65574E65574E65574E65574E65574E65574E65574E65574E6557
          4E65574E65574E65574E65574E65574E65574E65574E65574E65574E65574E65
          574E65574E65574E695C5365574E695C5365574E695C5365574E695C5365574E
          695C536D5E556D5E556D5E556D5E556D5E556D5E556D5E556D5E556D5E556D5E
          556D5E556F61586F61586F61586F61586F61586F61586F61586F61586F61586F
          6158716259716259716259716259716259716259716259716259716259716259
          71625971625971625971625971625973655C73655C73655C73655C73655C7365
          5CFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF0000}
        Slider.Size = 5
        Slider.Offset = 6
        TabOrder = 6
        Thumb.BorderColor = clNone
        Thumb.BorderColorHot = clNone
        Thumb.BorderColorDown = clBlack
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = clWhite
        Thumb.ColorTo = clSilver
        Thumb.ColorDown = clBlack
        Thumb.ColorDownTo = clBlack
        Thumb.ColorHot = clWhite
        Thumb.ColorHotTo = clGray
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = clBlack
        Thumb.ColorMirrorTo = clBlack
        Thumb.ColorMirrorHot = clBlack
        Thumb.ColorMirrorHotTo = clBlack
        Thumb.ColorMirrorDown = clBlack
        Thumb.ColorMirrorDownTo = clBlack
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggRadial
        Thumb.GradientMirror = ggRadial
        Thumb.Picture.Data = {
          424D26040000000000003600000028000000170000000E000000010018000000
          0000F003000000000000000000000000000000000000FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00
          FF96887F73675F68615E6F615860544B7C746D6D625C695C5368615E60544B7B
          6F69695C5368615E695C5368615E695C53695C5368615E695C5373655C7C6E65
          FF00FF000000FF00FF897B724C464135333035333034302E3D3B393533303834
          323533303533303E383235333035333035333035333035333035333035333035
          33304741386F665DFF00FF000000FF00FFB8B3A9BBB5AB787268625D5359534B
          615B506964597C766BB1A69CFFFFFF7C766B969186A9A49AB1A69CBBB5ABBBB5
          AB7D776E625D5359534B35333068615EFF00FF000000FF00FFBBB5ABBBB5AB74
          6E64615B5059534B60544B696459746E64A9A49AFFFFFA746E64969186A9A49A
          A9A49AB1ABA1BFBAAF746E64625D53574E44353330695C53FF00FF000000FF00
          FFB8ADA3B8B3A9746E6459534B574E4459534B625D53746E64A9A49AFFFFFA74
          6E64968E85A09B91A9A49AA9A49AB1ABA1746E6459534B504940353330695C53
          FF00FF000000FF00FFB8ADA3B1ABA1746E6459534B50494059534B625D53736D
          62A6A197FFFFF9746E64938D82A09B91A89B92AFAAA0B1ABA1746E6459534B4F
          494035333068615EFF00FF000000FF00FFB1ABA1B1ABA1746E64504940504940
          574E44615B50736D62A89B92FFFFF96B655B918B819F9A8EA09B91A9A49AB1AB
          A1736D625049404F4940353330695C53FF00FF000000FF00FFB1ABA1B1ABA16B
          655B5049404C423950494059534B696459A09B91FFFFF96B655B8E86819F9A8E
          A89B92A9A49AAFAAA06B655B5049404741383533306B655BFF00FF000000FF00
          FFB1A69CBBB5AB6B655B50494047413850494059534B696459A09B91FFFFF769
          64598E867D969186A09B91A89B92A9A49A6B655B504940464037353330695C53
          FF00FF000000FF00FFB8ADA3C4BEB4625D53474138474138474138574E44695C
          539F9A8EFFFFF7695C53868077969186A09B91A6A197A9A49A695C534C42393E
          3832353330695C53FF00FF000000FF00FFC0BBB1BBB5AB625D53474138403930
          474138504940625D539F9A8EFFFFF7625D53868077938D82969186A09B91A9A4
          9A625D534741383E38324C423973655CFF00FF000000FF00FFB8ADA3B8ADA38F
          897F746E646F695F746E64817972918B81C7C1B7FFFFFF918B81B1ABA1C4BEB4
          CCC7BDCEC8BEE4DAD1918B816F665D574E4473655C807269FF00FF000000FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF000000}
        Thumb.PictureHot.Data = {
          424D26040000000000003600000028000000170000000E000000010018000000
          0000F003000000000000000000000000000000000000FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00
          FF96887F73675F68615E6F615860544B7C746D6D625C695C5368615E60544B7B
          6F69695C5368615E695C5368615E695C53695C5368615E695C5373655C7C6E65
          FF00FF000000FF00FF897B724C464135333035333034302E3D3B393533303834
          323533303533303E383235333035333035333035333035333035333035333035
          33304741386F665DFF00FF000000FF00FFB8B3A9BBB5AB787268625D5359534B
          615B506964597C766BB1A69C00FF007C766B969186A9A49AB1A69CBBB5ABBBB5
          AB7D776E625D5359534B35333068615EFF00FF000000FF00FFBBB5ABBBB5AB74
          6E64615B5059534B60544B696459746E64A9A49A00FF00746E64969186A9A49A
          A9A49AB1ABA1BFBAAF746E64625D53574E44353330695C53FF00FF000000FF00
          FFB8ADA3B8B3A9746E6459534B574E4459534B625D53746E64A9A49A00FF0074
          6E64968E85A09B91A9A49AA9A49AB1ABA1746E6459534B504940353330695C53
          FF00FF000000FF00FFB8ADA3B1ABA1746E6459534B50494059534B625D53736D
          62A6A19700FF00746E64938D82A09B91A89B92AFAAA0B1ABA1746E6459534B4F
          494035333068615EFF00FF000000FF00FFB1ABA1B1ABA1746E64504940504940
          574E44615B50736D62A89B9200FF006B655B918B819F9A8EA09B91A9A49AB1AB
          A1736D625049404F4940353330695C53FF00FF000000FF00FFB1ABA1B1ABA16B
          655B5049404C423950494059534B696459A09B9100FF006B655B8E86819F9A8E
          A89B92A9A49AAFAAA06B655B5049404741383533306B655BFF00FF000000FF00
          FFB1A69CBBB5AB6B655B50494047413850494059534B696459A09B9100FF0069
          64598E867D969186A09B91A89B92A9A49A6B655B504940464037353330695C53
          FF00FF000000FF00FFB8ADA3C4BEB4625D53474138474138474138574E44695C
          539F9A8E00FF00695C53868077969186A09B91A6A197A9A49A695C534C42393E
          3832353330695C53FF00FF000000FF00FFC0BBB1BBB5AB625D53474138403930
          474138504940625D539F9A8E00FF00625D53868077938D82969186A09B91A9A4
          9A625D534741383E38324C423973655CFF00FF000000FF00FFB8ADA3B8ADA38F
          897F746E646F695F746E64817972918B81C7C1B700FF00918B81B1ABA1C4BEB4
          CCC7BDCEC8BEE4DAD1918B816F665D574E4473655C807269FF00FF000000FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF000000}
        Thumb.PictureDown.Data = {
          424D26040000000000003600000028000000170000000E000000010018000000
          0000F003000000000000000000000000000000000000FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00
          FF96887F73675F68615E6F615860544B7C746D6D625C695C5368615E60544B7B
          6F69695C5368615E695C5368615E695C53695C5368615E695C5373655C7C6E65
          FF00FF000000FF00FF897B724C464135333035333034302E3D3B393533303834
          323533303533303E383235333035333035333035333035333035333035333035
          33304741386F665DFF00FF000000FF00FFB8B3A9BBB5AB787268625D5359534B
          615B506964597C766BB1A69C0000FF7C766B969186A9A49AB1A69CBBB5ABBBB5
          AB7D776E625D5359534B35333068615EFF00FF000000FF00FFBBB5ABBBB5AB74
          6E64615B5059534B60544B696459746E64A9A49A0000FF746E64969186A9A49A
          A9A49AB1ABA1BFBAAF746E64625D53574E44353330695C53FF00FF000000FF00
          FFB8ADA3B8B3A9746E6459534B574E4459534B625D53746E64A9A49A0000FF74
          6E64968E85A09B91A9A49AA9A49AB1ABA1746E6459534B504940353330695C53
          FF00FF000000FF00FFB8ADA3B1ABA1746E6459534B50494059534B625D53736D
          62A6A1970000FF746E64938D82A09B91A89B92AFAAA0B1ABA1746E6459534B4F
          494035333068615EFF00FF000000FF00FFB1ABA1B1ABA1746E64504940504940
          574E44615B50736D62A89B920000FF6B655B918B819F9A8EA09B91A9A49AB1AB
          A1736D625049404F4940353330695C53FF00FF000000FF00FFB1ABA1B1ABA16B
          655B5049404C423950494059534B696459A09B910000FF6B655B8E86819F9A8E
          A89B92A9A49AAFAAA06B655B5049404741383533306B655BFF00FF000000FF00
          FFB1A69CBBB5AB6B655B50494047413850494059534B696459A09B910000FF69
          64598E867D969186A09B91A89B92A9A49A6B655B504940464037353330695C53
          FF00FF000000FF00FFB8ADA3C4BEB4625D53474138474138474138574E44695C
          539F9A8E0000FF695C53868077969186A09B91A6A197A9A49A695C534C42393E
          3832353330695C53FF00FF000000FF00FFC0BBB1BBB5AB625D53474138403930
          474138504940625D539F9A8E0000FF625D53868077938D82969186A09B91A9A4
          9A625D534741383E38324C423973655CFF00FF000000FF00FFB8ADA3B8ADA38F
          897F746E646F695F746E64817972918B81C7C1B70000FF918B81B1ABA1C4BEB4
          CCC7BDCEC8BEE4DAD1918B816F665D574E4473655C807269FF00FF000000FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF000000}
        Thumb.Size = 14
        Thumb.Width = 23
        Thumb.Shape = tsPointer
        TickMark.Color = 8286055
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'MS Sans Serif'
        TickMark.Font.Style = []
        TickMark.Line3D = True
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
      end
      object AdvTrackBar30: TAdvTrackBar
        Left = 437
        Top = 132
        Width = 26
        Height = 70
        BorderColor = clNone
        BorderColorDisabled = clNone
        Buttons.BorderColor = 9262895
        Buttons.BorderColorHot = 10079963
        Buttons.BorderColorDown = 4548219
        Buttons.Color = 15653832
        Buttons.ColorTo = 16178633
        Buttons.ColorHot = 15465983
        Buttons.ColorHotTo = 11332863
        Buttons.ColorDown = 7778289
        Buttons.ColorDownTo = 4296947
        Buttons.ColorMirror = 15586496
        Buttons.ColorMirrorTo = 16245200
        Buttons.ColorMirrorHot = 5888767
        Buttons.ColorMirrorHotTo = 10807807
        Buttons.ColorMirrorDown = 946929
        Buttons.ColorMirrorDownTo = 5021693
        Buttons.GradientMirror = ggVertical
        Buttons.Spacing = 0
        ColorTo = clNone
        ColorDisabled = clNone
        ColorDisabledTo = clNone
        Direction = gdHorizontal
        Color = clNone
        Orientation = trVertical
        Position = 5
        Slider.BorderColor = clNone
        Slider.BorderColorDisabled = clBlack
        Slider.Color = clWhite
        Slider.ColorTo = clBlack
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdHorizontal
        Slider.Picture.Data = {
          89504E470D0A1A0A0000000D494844520000000E000000400802000000A578D1
          9A00000015744558744372656174696F6E2054696D650007D7070E0E200B4CD9
          1E440000000774494D4507D7070E0E2E2DD5565547000000097048597300000E
          C300000EC301C76FA864000000FE4944415478DAED96CF4EC3300C876B3B5DE1
          00E59F764070E1D5B8F21ABC69A10C2484C6C8B6268E71BB03ED48C7382F8914
          C5D1A7E4179F3EB87F78CCF61B3828903EDE5FAC9D8B8410FC166AFAC5DB6B55
          4C8E4E4E2F0C1180AC56CDE8ADEC5D7976A91BCF5C96E7BB02B403A05D45FEC8
          0A1B6E9F6FFDA303094D6842139AD08426F4505089A381990825837513388031
          B2B45F71D4B926CFB504CFBA747232F4935E0050B991CD461115AD2D911931A2
          0CF097F2608F0109829061F7B2E81CD23FF646488D73C70529514C883DEB49FC
          5624E3BDCCEAAAC885DDFAB9AEC9E4A301AE6FEEECD23E55D5FC73210288180F
          D0765CE46A7ADB753EA271DFCFDE5C29578623D50000000049454E44AE426082}
        Slider.PictureCompleted.Data = {
          89504E470D0A1A0A0000000D494844520000000E000000400802000000A578D1
          9A00000015744558744372656174696F6E2054696D650007D7070E0E2019BF60
          6F0C0000000774494D4507D7070E0E2E34B13DFD87000000097048597300000E
          C300000EC301C76FA864000003394944415478DA8D56496B144118ADBDAA2593
          89A35141084150113C79F0EAC1BFE0C1BB57FF86BF49AF5EBC4A14974340C51C
          4445DC92D45EBE9A81243D335D6DD3345DF4EB57AFDEB754D1478F9F90FFBB58
          6FC0F8CF1F5F8E8E7E9792738E4B507176F0EDEB815666B239139C535AACF583
          AC2986E9D605BCC494A6D3F32D01F5A2B43E4B19D14A17B8D165597B74F9D244
          98E9A7AF8C988BBB3BEACDDE8BF5D0CF1FDFEFEECE84D9FAFE8B11A6858006BA
          1E4A09CD299F7C65149FCA7A682185F195550EB12EFE585CB9E4960329262698
          149C7221391F8C1604682905E15C092558CA61705975528C01E4824B89202CB9
          DC77A0102E98301A58DC4B213B23A0142984144A6BC995AC5E0D99B5184AAD70
          2B68A6CBC6F5738051A194361A684A79134AA812526B0D15642573FAB330A68C
          515D07624EDA02088380CE40AA226D018CC129253B238DA69CB6A0305D2B5457
          7DD03101043E1963A416C8C2B659D02ACC3933671D4E97C59FAA0AC84219B252
          677D28A5D55553808F6D01A829218932522946C702CB10266401976424076001
          BCAFC4724D4F586E195C4000E18A10D286229AA09C138F40415BB576442AB25A
          E8FD314A31921849CEA4E4D2849212224901555EEBA70505297AB5F72406B254
          582BD082265CA1C98F41818D8EE00E615440CEDE11E74315D0EE59E82F5893B3
          C1BBB2CADACBAC5C8A772E6067F1A51AD68002EC81752E7ACA5BAC14D3E7E8BD
          3DB4DE51DDE884488010A3F3D159175C9C77E6E19E85BCC3FCD15A673D76B911
          B32256756C83B39C0FD716A28A7D3582D6C25817491864853878192A14AC6124
          5A39A6E061AB855FAC51B18B7DCBC358EBA27369E53CD0139072F2105A25C02C
          C42B0D0AC079A094E461ABF79C8B9CD2A000CE59F0F5B2C78E8E94218843350A
          C4AD4E58030B1C96031931D1C65E0001524AE84B11E997DCB16DB19EECD6D80C
          A5C48980AD872259828F6CDEAC242B7FFF1CC28441D61AA17996A0636AA30605
          60CA18D346C7B167755A40F312EBE96063B2B5BFFFE9C1C37BA0BC796DF3E0C3
          ABC966EF54C6EFDCBDBF789352BDDE7B19ECAFDB3767EFDEBE7AF6F4F9D59D1B
          429ECAA0674F9A31F80FFBAF4370D3ADEDD9F695AE9BAC173097ABAEDFBA834C
          9DB7ECE518FC03208E904039669FA40000000049454E44AE426082}
        Slider.Size = 14
        Slider.Offset = 6
        TabOrder = 7
        Thumb.BorderColor = 10317632
        Thumb.BorderColorHot = 10079963
        Thumb.BorderColorDown = 4548219
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = 15653832
        Thumb.ColorTo = 16178633
        Thumb.ColorDown = 7778289
        Thumb.ColorDownTo = 4296947
        Thumb.ColorHot = 15465983
        Thumb.ColorHotTo = 11332863
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = 15586496
        Thumb.ColorMirrorTo = 16245200
        Thumb.ColorMirrorHot = 5888767
        Thumb.ColorMirrorHotTo = 10807807
        Thumb.ColorMirrorDown = 946929
        Thumb.ColorMirrorDownTo = 5021693
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggVertical
        Thumb.GradientMirror = ggRadial
        Thumb.Picture.Data = {
          89504E470D0A1A0A0000000D494844520000000B0000000B080200000026CEE0
          7100000015744558744372656174696F6E2054696D650007D7070E0E202A00B0
          0E1A0000000774494D4507D7070E0E2F19EDF990B3000000097048597300000E
          C300000EC301C76FA8640000014C4944415478DA2D90414B0241188667761762
          DD5957362A6D0BC5D42091A843850976E9D2B59FD0B5BFD1CFE95ED0C183782A
          509612AC04C162D56D5D9D5D571CD76946FDF86618DEF7E19B7706DEDD3F8065
          B5CC8A2CCB004000682261888A01F919486C5140DB1FD544EA347F723EB0864C
          9961BB69BE640B65067182D9C7C5DBD24556DBD45EEB5C194E779233E9D37C62
          9098CBA45287C59BEB330A69D7F2BAD6289892481C1D648C8903F0B025F81ED6
          F5ED5854EED9DED8273D1CF6F09CCC434D07AABEEB7B1E9FA9A2C83C5C101212
          020501F2B0CB2D1A53D749B13F618628F25E500A96E1598F5DCC0905A9CE5FDF
          1D055B3A22B61F574508A100A9CB4238BF0A4292A2A7DFDF9EA50D54BECCEF1B
          9A3B0E0441EC5B41E7BBD9695773852B7E4BFAA8D4A83D3A839FBD64C6198C98
          42266EA755614F5DE75841D8FEAAD74C4059010529ABEF62D63F73808EE73AC8
          9ED30000000049454E44AE426082}
        Thumb.PictureHot.Data = {
          89504E470D0A1A0A0000000D494844520000000B0000000B080200000026CEE0
          7100000015744558744372656174696F6E2054696D650007D7070E0E203763B6
          62C30000000774494D4507D7070E0E2F21C5FB282D000000097048597300000E
          C300000EC301C76FA8640000015A4944415478DA634CCE69656060F8CFF0FFF6
          E5839C9C9C0C0C8C409EA4A43433B7342388CDC0C20006F7AE1D5137F432B373
          7DFEE82D90FBE3C3D323FBE7ABEADA0315B1007503A55D83CB7CDC75F984D90E
          1C6302AA78F28153FF7BDAC513B3D4741D98D554144CEDA2A243ADFE3332DC7D
          FC1188BE7EFFCD29CDA2AD2BFBF33DCFEB676798BE7EF92C2E212322C4F9F4E5
          D7B71F7EDC7BFD09887EFDFE2B21CD2528A1FCF5CB17903B0405787FFDFA0B44
          3F7FFD65666684B80CE84A615141A84BDF7DF8CCC2C2C4CCCC0424FFFEFD0F55
          F19FE1EDEBF72015DC3CBCAF5E3C79F34E554A9CFBFB9F3F2A62FC40512626C6
          E74FBEBE7F71979B8787D9DC3EF8FCB1F53F9895D455C5454539DFBEFBC1C5C9
          F2EAF9F75B476E5F3ABD4846C994D9C8CC594854FECCA1E54F5E317CFCC2FEF8
          EEF3F7AF3E7E7FFEE8DCF1F940AF82DC030FD3CF6FEE7CF9F299E13F103070F3
          700B886940DC0300E9DF9696D1735E050000000049454E44AE426082}
        Thumb.Size = 11
        Thumb.Width = 11
        Thumb.Shape = tsPointer
        TickMark.Color = clBlack
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'Tahoma'
        TickMark.Font.Style = []
        TickMark.Style = tsNone
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
      end
      object AdvTrackBar31: TAdvTrackBar
        Left = 408
        Top = 128
        Width = 26
        Height = 74
        BorderColor = clNone
        BorderColorDisabled = clNone
        Buttons.BorderColor = 9262895
        Buttons.BorderColorHot = 10079963
        Buttons.BorderColorDown = 4548219
        Buttons.Color = 15653832
        Buttons.ColorTo = 16178633
        Buttons.ColorHot = 15465983
        Buttons.ColorHotTo = 11332863
        Buttons.ColorDown = 7778289
        Buttons.ColorDownTo = 4296947
        Buttons.ColorMirror = 15586496
        Buttons.ColorMirrorTo = 16245200
        Buttons.ColorMirrorHot = 5888767
        Buttons.ColorMirrorHotTo = 10807807
        Buttons.ColorMirrorDown = 946929
        Buttons.ColorMirrorDownTo = 5021693
        Buttons.GradientMirror = ggVertical
        Buttons.Spacing = 0
        ColorTo = clNone
        ColorDisabled = clNone
        ColorDisabledTo = clNone
        Direction = gdHorizontal
        Color = clNone
        Orientation = trVertical
        Position = 5
        Slider.BorderColor = clNone
        Slider.BorderColorDisabled = clBlack
        Slider.Color = clWhite
        Slider.ColorTo = clBlack
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdHorizontal
        Slider.Picture.Data = {
          89504E470D0A1A0A0000000D494844520000001100000044080300000050F02E
          8C00000015744558744372656174696F6E2054696D650007D7070E0F0727A506
          AAF50000000774494D4507D7070E0F0C03AFF0749F000000097048597300000E
          C300000EC301C76FA86400000300504C54450000050001040001050001070002
          0500020600020700030600040700040801050800040A363E41373F42383D4139
          3E423B3E433B3F423C3F443B40433941443B40443A41473C40433C41443C4145
          3D40453D41443D42453E42453E43463E43473F42473F43463C44473B42483D42
          483F4448404447404549414449424B504751534651554952574A53584A535A49
          54584B54594A555B4C555A4D545A4D565B4E56594F575A4C575D4E555D4E575C
          4F565C4D585C4D585E4F585D4E595F4F585F4F5A5E50555950575F52575D5058
          5B51595C50595E51585E515A5F52595F4F5A60525B60515C60535C61545D6258
          5F655760655861665963655962675B65675863695A636859636C59646A59676A
          5B64695A656B5B666A5B656E5B666C5D65685C656A5D646A5C66685C67695D67
          695C676B5D666B5E656B5F646A5E66695F676A5C656C5D646C5C676D5D666D5E
          656D5E676C5F666C5E676E5F666E5B696C596D6C5B6D6F5D686A5E686A5E696B
          5F696B5D686C5D686E5C6A6D5D6B6C5D6B6E5E696D5F686D5E696F5F686F5F6A
          6E5E6C6F5D67705C6B705F69725F6A705F6D7060626E60656961666A62676B60
          646F60676D61666C60676F62676D60686B61696C60696E61686E606A6C606B6D
          616B6D606B6F616A6F63686C62696F626A6D636B6E626C6E636D6F65686F656A
          6E666B6F646C6F646770656773606970616870606B71616A71606A7362697162
          6B70636A70626B72636A72616C70616C72636C71626D73636C73626C75636E74
          646B71646D72656C72656F71666D73646F756671776B7376727D81767F847A7F
          83787F8575808677808576818777808777828878808379818478818679808678
          83877982877B80847A81877A82857B83867C81857D82867E83877C8487788389
          7A83887A838A79848A7B84897A858B7B848B7D85887C858A7D848A7C878B7D86
          8B7F84887E858B7F848A7E86897F878A7E878C7E888A80858981868A80888B81
          898C828A8D8890938A9295979EA4000000000000000000000000000000000000
          0000000000000000000000000000000000001AD18C58000001054944415478DA
          85D4590E8230100660A820EEBB8254DC71398157D06BF5723E1093BE7B19695D
          82FF1F715E2093CED7C9B4A9A3309CD7F7D8C24C3BD0EFCCD984526B4FABE79F
          A3741E4A8D6ADAFEE94F95F43438A18B19191432D65BE56B4E97F71A2387B99C
          6559A99304247B280F6CCF45F9E0A2DC23E7407BC52ECAA6EA5B5E921CD33436
          95D28C9525F52C4996D473423DF7691A21F5BCCBAB6EB7EBAFAA1F998464592B
          CAA6D5816FEEC6BD38679FE62C68CE02E5B88EF252D85B572AC7244F491E0B94
          5392BB7574F6FE7F391538E731C9119DD79CCE34A25B37A4139CB928B333E3BD
          586EA01C91CC4EEA60A653C5776351C577632BF0DD9834D1B12D7C673EF100C4
          A42A49DF88F7950000000049454E44AE426082}
        Slider.Size = 17
        Slider.Offset = 0
        TabOrder = 8
        Thumb.BorderColor = 10317632
        Thumb.BorderColorHot = 10079963
        Thumb.BorderColorDown = 4548219
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = 15653832
        Thumb.ColorTo = 16178633
        Thumb.ColorDown = 7778289
        Thumb.ColorDownTo = 4296947
        Thumb.ColorHot = 15465983
        Thumb.ColorHotTo = 11332863
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = 15586496
        Thumb.ColorMirrorTo = 16245200
        Thumb.ColorMirrorHot = 5888767
        Thumb.ColorMirrorHotTo = 10807807
        Thumb.ColorMirrorDown = 946929
        Thumb.ColorMirrorDownTo = 5021693
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggVertical
        Thumb.GradientMirror = ggRadial
        Thumb.Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000110000000A080300000065A245
          9000000015744558744372656174696F6E2054696D650007D7070E100C1990E9
          8AD80000000774494D4507D7070E0F1020EBE058B0000000097048597300000E
          7400000E74016B24B3D600000300504C544502060908090B090A0C0B0C0E090C
          110D0E100E0D150F0F1B01120C0B110D0911130B14110C111410090310111311
          121414181B171B1C1D231F192124202626272528222C2E292D30292E312A2E31
          2A2F332C2F3421322A24303025313126313327303526333927393D2830332931
          342A32352B35372C31352D31342D353728333928353B29343A2937382A353B29
          363C2A373D2C373D2E353D2E38372C393F2D383E2E393F322628312F32342A33
          3A2A34392F3A30343732373A31363C323B3834383B373B3E2D35422D3A40333A
          40363E403042423B43463F474A3B524A43414C444849454E4D464F4C4C454C49
          4A4E474C52464F54494D56484F574B4F5843544C43544E425251435154475055
          46565642575C45535C47545A4851564952574A51574950584A51594A53584B52
          5A4C50594D515A4E525B4C555A4D565B4D545C515058575C625A5F626F777A6F
          797B71797B737D7F74797C74797D757A7E76797E747C7F727B808D292B872244
          D61E26D8221EDC2622DD2723DE2824E62623FF42FF0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000C01EC7C10000008174524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0092
          C8E34F000000B24944415478DA636848B093529557539796D05450B6F5686860
          6870C9292E2BCC2F292D2A28CFCB150689C87A6625A524A6246605C7C406B079
          01456C7C7574CCF44C0DB5CC748D43395C81225695B5B53535B5B5D575F55515
          BC4A4011B9B0B8E4C0CCF8F88CC8E86C7F1E6BA088984F6A7A6A6A50487A5A44
          5438970A50C452545FDB59D1C04451DFC94884D31E28E22EC8CAC4C7C7C7C8CF
          CCCEC22DE40D1469F073D41017176070909431B7706B680000DA873158FF4DD3
          A40000000049454E44AE426082}
        Thumb.PictureHot.Data = {
          89504E470D0A1A0A0000000D49484452000000110000000A080300000065A245
          9000000015744558744372656174696F6E2054696D650007D7070E0F0C198793
          6E950000000774494D4507D7070E0F101DB38814A1000000097048597300000E
          C300000EC301C76FA86400000300504C544502060908090B090A0C0B0C0E090C
          110D0E100E0D150F0F1B01120C0B110D0911130B14110C111410090310111311
          121414181B171B1C1D231F192124202626272528222C2E292D30292E312A2E31
          2A2F332C2F3421322A24303025313126313327303526333927393D2830332931
          342A32352B35372C31352D31342D353728333928353B29343A2937382A353B29
          363C2A373D2C373D2E353D2E38372C393F2D383E2E393F322628312F32342A33
          3A2A34392F3A30343732373A31363C323B3834383B373B3E2D35422D3A40333A
          40363E403042423B43463F474A3B524A43414C444849454E4D464F4C4C454C49
          4A4E474C52464F54494D56484F574B4F5843544C43544E425251435154475055
          46565642575C45535C47545A4851564952574A51574950584A51594A53584B52
          5A4C50594D515A4E525B4C555A4D565B4D545C515058575C625A5F626F777A6F
          797B71797B737D7F74797C74797D757A7E76797E747C7F727B8000800000C000
          40FF40FF42FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000F610BA920000007C74524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00016ADA310000
          00AB4944415478DA63A84EB093529557539796D05450B6F5A8AE66A876C9292E
          2BCC2F292D2A28CFCB150689C87A6625A524A6246605C7C406B07901456C7C75
          74CCF44C0DB5CC748D43395C8122561595553050C9AB0414910B8B4B0ECC8C8F
          CF888CCEF6E7B1068A88F9A4A6A7A60685A4A745448573A900452C45F5B59D15
          0D4C14F59D8C4438ED8122EE82AC4C7C7C7C8CFCCCEC2CDC42DE40916A3F470D
          71710106074919730BB7EA6A00A66630C5236F26D80000000049454E44AE4260
          82}
        Thumb.PictureDown.Data = {
          89504E470D0A1A0A0000000D49484452000000110000000A080300000065A245
          9000000015744558744372656174696F6E2054696D650007D7070E0F0C198793
          6E950000000774494D4507D7070E0F101DB38814A1000000097048597300000E
          C300000EC301C76FA86400000300504C544502060908090B090A0C0B0C0E090C
          110D0E100E0D150F0F1B01120C0B110D0911130B14110C111410090310111311
          121414181B171B1C1D231F192124202626272528222C2E292D30292E312A2E31
          2A2F332C2F3421322A24303025313126313327303526333927393D2830332931
          342A32352B35372C31352D31342D353728333928353B29343A2937382A353B29
          363C2A373D2C373D2E353D2E38372C393F2D383E2E393F322628312F32342A33
          3A2A34392F3A30343732373A31363C323B3834383B373B3E2D35422D3A40333A
          40363E403042423B43463F474A3B524A43414C444849454E4D464F4C4C454C49
          4A4E474C52464F54494D56484F574B4F5843544C43544E425251435154475055
          46565642575C45535C47545A4851564952574A51574950584A51594A53584B52
          5A4C50594D515A4E525B4C555A4D565B4D545C515058575C625A5F626F777A6F
          797B71797B737D7F74797C74797D757A7E76797E747C7F727B8000800000C000
          40FF40FF42FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000F610BA920000007C74524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00016ADA310000
          00AB4944415478DA63A84EB093529557539796D05450B6F5A8AE66A876C9292E
          2BCC2F292D2A28CFCB150689C87A6625A524A6246605C7C406B07901456C7C75
          74CCF44C0DB5CC748D43395C8122561595553050C9AB0414910B8B4B0ECC8C8F
          CF888CCEF6E7B1068A88F9A4A6A7A60685A4A745448573A900452C45F5B59D15
          0D4C14F59D8C4438ED8122EE82AC4C7C7C7C8CFCCCEC2CDC42DE40916A3F470D
          71710106074919730BB7EA6A00A66630C5236F26D80000000049454E44AE4260
          82}
        Thumb.Size = 17
        Thumb.Shape = tsPointer
        TickMark.Color = clBlack
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'Tahoma'
        TickMark.Font.Style = []
        TickMark.Style = tsNone
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
      end
      object AdvTrackBar32: TAdvTrackBar
        Left = 216
        Top = 88
        Width = 150
        Height = 26
        BorderColor = clNone
        BorderColorDisabled = clNone
        Buttons.BorderColor = 9262895
        Buttons.BorderColorHot = 10079963
        Buttons.BorderColorDown = 4548219
        Buttons.Color = 15653832
        Buttons.ColorTo = 16178633
        Buttons.ColorHot = 15465983
        Buttons.ColorHotTo = 11332863
        Buttons.ColorDown = 7778289
        Buttons.ColorDownTo = 4296947
        Buttons.ColorMirror = 15586496
        Buttons.ColorMirrorTo = 16245200
        Buttons.ColorMirrorHot = 5888767
        Buttons.ColorMirrorHotTo = 10807807
        Buttons.ColorMirrorDown = 946929
        Buttons.ColorMirrorDownTo = 5021693
        Buttons.GradientMirror = ggVertical
        Buttons.MinPicture.Data = {
          89504E470D0A1A0A0000000D49484452000000180000000A080300000099B76E
          5A00000015744558744372656174696F6E2054696D650007D7070C0F1510CF46
          B7A20000000774494D4507D7070C0E1A3B30A1DB6A000000097048597300000A
          F000000AF00142AC349800000300504C5445295BA2295CA4547CB65C83BA7590
          B67A94BA7894BC7A97BE5687CE5788CF5E87C55987CC5A87CC6089C66490CD67
          93D26D97D07D9ECF769ED8779FD87AA0D77DA1D57DA2D47DA3D87EA3D87FA3D8
          FF40FF879EC08AA7D18EADDB8EAEDB8FAEDA91ABCD90ACD490AFDB99AFD191B1
          DF9BB0D09FB6D599B5DD9AB6DD9FB9DC92B2E0A0BADBA1BADBA0B9DCA5BDE0B5
          C5DAA6C0E2A7C0E2A9C0E0AAC0E1ABC1E1ACC2E1B0C4E2B0C5E2B6C7E3B3C8E4
          B4C8E4B5C9E4B2C8E8B3C9E8BED1ECC1CFE2C0CFE8C0D0E8C2D2E9C3D3EBC1D3
          EDC7D4EAC7D5EBC7D6ECC9D7ECCAD8ECCCD8ECCED9EDCEDCEECFDCEECCDBF0CD
          DCF0D2DEEDD4DFEFD5E0EFD5E1F2D8E2F1D9E2F1DCE5F2DCE6F5E0E8F5E1E9F5
          E3EAF5E3EBF6E4EBF6E7EDF6EAF0F9EBF0F8F0F3FAF1F5FAF1F5FBF2F4FAF2F5
          FAF3F6FBF3F6FCF4F6FBF4F7FC00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004B6053820000001B74524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0027340B35000000
          C04944415478DA639092E293D5D3D4D681036D5D3D390129290629F1F0C4C414
          149098182E21C520E6171D8B01A2FD4519445C7C02838020C05E1F4A040505FA
          BA483270F0AB1B999A9A2AB0B3B199800920C758839F938147C8C0CADACA5299
          9585C50C44985B01B986C2DC0C5C2A36EE1E9E6E0E16AAD28E20C2C9C3D3C3DD
          568B974151DE2E38222A32C4DBD52B144484C5444504DB29C93048310B3AC725
          A5A526C4C727A70389A48CA438674166A03FA4D49818191919189100939A9414
          0075BB33F4BD2CCD600000000049454E44AE426082}
        Buttons.MinPictureHot.Data = {
          89504E470D0A1A0A0000000D49484452000000180000000A080300000099B76E
          5A00000015744558744372656174696F6E2054696D650007D7070C0F1510CF46
          B7A20000000774494D4507D7070C0E1A3B30A1DB6A000000097048597300000A
          F000000AF00142AC349800000300504C5445295BA2295CA4547CB65C83BA7590
          B67A94BA7894BC7A97BE5687CE5788CF5E87C55987CC5A87CC6089C66490CD67
          93D26D97D07D9ECF769ED8779FD87AA0D77DA1D57DA2D47DA3D87EA3D87FA3D8
          FF40FF879EC08AA7D18EADDB8EAEDB8FAEDA91ABCD90ACD490AFDB99AFD191B1
          DF9BB0D09FB6D599B5DD9AB6DD9FB9DC92B2E0A0BADBA1BADBA0B9DCA5BDE0B5
          C5DAA6C0E2A7C0E2A9C0E0AAC0E1ABC1E1ACC2E1B0C4E2B0C5E2B6C7E3B3C8E4
          B4C8E4B5C9E4B2C8E8B3C9E8BED1ECC1CFE2C0CFE8C0D0E8C2D2E9C3D3EBC1D3
          EDC7D4EAC7D5EBC7D6ECC9D7ECCAD8ECCCD8ECCED9EDCEDCEECFDCEECCDBF0CD
          DCF0D2DEEDD4DFEFD5E0EFD5E1F2D8E2F1D9E2F1DCE5F2DCE6F5E0E8F5E1E9F5
          E3EAF5E3EBF6E4EBF6E7EDF6EAF0F9EBF0F8F0F3FAF1F5FAF1F5FBF2F4FAF2F5
          FAF3F6FBF3F6FCF4F6FBF4F7FC00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004B6053820000001B74524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0027340B35000000
          C04944415478DA639092E293D5D3D4D681036D5D3D390129290629F1F0C4C414
          149098182E21C520E6171D8B01A2FD4519445C7C02838020C05E1F4A040505FA
          BA483270F0AB1B999A9A2AB0B3B199800920C758839F938147C8C0CADACA5299
          9585C50C44985B01B986C2DC0C5C2A36EE1E9E6E0E16AAD28E20C2C9C3D3C3DD
          568B974151DE2E38222A32C4DBD52B144484C5444504DB29C93048310B3AC725
          A5A526C4C727A70389A48CA438674166A03FA4D49818191919189100939A9414
          0075BB33F4BD2CCD600000000049454E44AE426082}
        Buttons.MinPictureDown.Data = {
          89504E470D0A1A0A0000000D49484452000000180000000A080300000099B76E
          5A00000015744558744372656174696F6E2054696D650007D7070C0F1510CF46
          B7A20000000774494D4507D7070C0E1A3B30A1DB6A000000097048597300000A
          F000000AF00142AC349800000300504C5445295BA2295CA4547CB65C83BA7590
          B67A94BA7894BC7A97BE5687CE5788CF5E87C55987CC5A87CC6089C66490CD67
          93D26D97D07D9ECF769ED8779FD87AA0D77DA1D57DA2D47DA3D87EA3D87FA3D8
          FF40FF879EC08AA7D18EADDB8EAEDB8FAEDA91ABCD90ACD490AFDB99AFD191B1
          DF9BB0D09FB6D599B5DD9AB6DD9FB9DC92B2E0A0BADBA1BADBA0B9DCA5BDE0B5
          C5DAA6C0E2A7C0E2A9C0E0AAC0E1ABC1E1ACC2E1B0C4E2B0C5E2B6C7E3B3C8E4
          B4C8E4B5C9E4B2C8E8B3C9E8BED1ECC1CFE2C0CFE8C0D0E8C2D2E9C3D3EBC1D3
          EDC7D4EAC7D5EBC7D6ECC9D7ECCAD8ECCCD8ECCED9EDCEDCEECFDCEECCDBF0CD
          DCF0D2DEEDD4DFEFD5E0EFD5E1F2D8E2F1D9E2F1DCE5F2DCE6F5E0E8F5E1E9F5
          E3EAF5E3EBF6E4EBF6E7EDF6EAF0F9EBF0F8F0F3FAF1F5FAF1F5FBF2F4FAF2F5
          FAF3F6FBF3F6FCF4F6FBF4F7FC00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004B6053820000001B74524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0027340B35000000
          C04944415478DA639092E293D5D3D4D681036D5D3D390129290629F1F0C4C414
          149098182E21C520E6171D8B01A2FD4519445C7C02838020C05E1F4A040505FA
          BA483270F0AB1B999A9A2AB0B3B199800920C758839F938147C8C0CADACA5299
          9585C50C44985B01B986C2DC0C5C2A36EE1E9E6E0E16AAD28E20C2C9C3D3C3DD
          568B974151DE2E38222A32C4DBD52B144484C5444504DB29C93048310B3AC725
          A5A526C4C727A70389A48CA438674166A03FA4D49818191919189100939A9414
          0075BB33F4BD2CCD600000000049454E44AE426082}
        Buttons.MaxPicture.Data = {
          89504E470D0A1A0A0000000D49484452000000180000000A080300000099B76E
          5A00000015744558744372656174696F6E2054696D650007D7070C0E1510CE84
          DD950000000774494D4507D7070C0E1A071FCEA7ED000000097048597300000B
          1200000B1201D2DD7EFC00000300504C5445295BA2295CA4547CB65C83BA7590
          B67A94BA7894BC7A97BE5687CE5788CF5E87C55987CC5A87CC6089C66490CD67
          93D26D97D07D9ECF769ED8779FD87AA0D77DA1D57DA2D47DA3D87EA3D87FA3D8
          FF40FF879EC08AA7D18EADDB8EAEDB8FAEDA91ABCD90ACD490AFDB99AFD191B1
          DF9BB0D09FB6D599B5DD9AB6DD9FB9DC92B2E0A0BADBA1BADBA0B9DCA5BDE0B5
          C5DAA6C0E2A7C0E2A9C0E0AAC0E1ABC1E1ACC2E1B0C4E2B0C5E2B6C7E3B3C8E4
          B4C8E4B5C9E4B2C8E8B3C9E8BED1ECC1CFE2C0CFE8C0D0E8C2D2E9C3D3EBC1D3
          EDC7D4EAC7D5EBC7D6ECC9D7ECCAD8ECCCD8ECCED9EDCEDCEECFDCEECCDBF0CD
          DCF0D2DEEDD4DFEFD5E0EFD5E1F2D8E2F1D9E2F1DCE5F2DCE6F5E0E8F5E1E9F5
          E3EAF5E3EBF6E4EBF6E7EDF6EAF0F9EBF0F8F0F3FAF1F5FAF1F5FBF2F4FAF2F5
          FAF3F6FBF3F6FCF4F6FBF4F7FC00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004B6053820000001B74524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0027340B35000000
          BF4944415478DA6390921290D3D3D5D681036D4D3D593E2929062989F0C4C414
          149098182E2EC520EA1F1D8B01A2FDC418245D7C03838040DF3E004A040505FA
          B8883070F26B189B9A9A9AB0B1B12B800920C7489D9F83815BD8D0CADACACA9C
          858555D90C445802B906423C0CBC5AB6EE1E9E1E4ED2AA160E8E20C2CDD3C3DD
          46858B4146C92E38222A26CCCBD53B24144444464504DBC92B3248310B3AC725
          6524C5C727A4270389D4B4A438674166A03FA4D498189100031033A949490100
          785233F4717B45C80000000049454E44AE426082}
        Buttons.MaxPictureHot.Data = {
          89504E470D0A1A0A0000000D49484452000000180000000A080300000099B76E
          5A00000015744558744372656174696F6E2054696D650007D7070C0E1510CE84
          DD950000000774494D4507D7070C0E1A071FCEA7ED000000097048597300000B
          1200000B1201D2DD7EFC00000300504C5445295BA2295CA4547CB65C83BA7590
          B67A94BA7894BC7A97BE5687CE5788CF5E87C55987CC5A87CC6089C66490CD67
          93D26D97D07D9ECF769ED8779FD87AA0D77DA1D57DA2D47DA3D87EA3D87FA3D8
          FF40FF879EC08AA7D18EADDB8EAEDB8FAEDA91ABCD90ACD490AFDB99AFD191B1
          DF9BB0D09FB6D599B5DD9AB6DD9FB9DC92B2E0A0BADBA1BADBA0B9DCA5BDE0B5
          C5DAA6C0E2A7C0E2A9C0E0AAC0E1ABC1E1ACC2E1B0C4E2B0C5E2B6C7E3B3C8E4
          B4C8E4B5C9E4B2C8E8B3C9E8BED1ECC1CFE2C0CFE8C0D0E8C2D2E9C3D3EBC1D3
          EDC7D4EAC7D5EBC7D6ECC9D7ECCAD8ECCCD8ECCED9EDCEDCEECFDCEECCDBF0CD
          DCF0D2DEEDD4DFEFD5E0EFD5E1F2D8E2F1D9E2F1DCE5F2DCE6F5E0E8F5E1E9F5
          E3EAF5E3EBF6E4EBF6E7EDF6EAF0F9EBF0F8F0F3FAF1F5FAF1F5FBF2F4FAF2F5
          FAF3F6FBF3F6FCF4F6FBF4F7FC00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004B6053820000001B74524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0027340B35000000
          BF4944415478DA6390921290D3D3D5D681036D4D3D593E2929062989F0C4C414
          149098182E2EC520EA1F1D8B01A2FDC418245D7C03838040DF3E004A040505FA
          B8883070F26B189B9A9A9AB0B1B12B800920C7489D9F83815BD8D0CADACACA9C
          858555D90C445802B906423C0CBC5AB6EE1E9E1E4ED2AA160E8E20C2CDD3C3DD
          46858B4146C92E38222A26CCCBD53B24144444464504DBC92B3248310B3AC725
          6524C5C727A4270389D4B4A438674166A03FA4D498189100031033A949490100
          785233F4717B45C80000000049454E44AE426082}
        Buttons.MaxPictureDown.Data = {
          89504E470D0A1A0A0000000D49484452000000180000000A080300000099B76E
          5A00000015744558744372656174696F6E2054696D650007D7070C0E1510CE84
          DD950000000774494D4507D7070C0E1A071FCEA7ED000000097048597300000B
          1200000B1201D2DD7EFC00000300504C5445295BA2295CA4547CB65C83BA7590
          B67A94BA7894BC7A97BE5687CE5788CF5E87C55987CC5A87CC6089C66490CD67
          93D26D97D07D9ECF769ED8779FD87AA0D77DA1D57DA2D47DA3D87EA3D87FA3D8
          FF40FF879EC08AA7D18EADDB8EAEDB8FAEDA91ABCD90ACD490AFDB99AFD191B1
          DF9BB0D09FB6D599B5DD9AB6DD9FB9DC92B2E0A0BADBA1BADBA0B9DCA5BDE0B5
          C5DAA6C0E2A7C0E2A9C0E0AAC0E1ABC1E1ACC2E1B0C4E2B0C5E2B6C7E3B3C8E4
          B4C8E4B5C9E4B2C8E8B3C9E8BED1ECC1CFE2C0CFE8C0D0E8C2D2E9C3D3EBC1D3
          EDC7D4EAC7D5EBC7D6ECC9D7ECCAD8ECCCD8ECCED9EDCEDCEECFDCEECCDBF0CD
          DCF0D2DEEDD4DFEFD5E0EFD5E1F2D8E2F1D9E2F1DCE5F2DCE6F5E0E8F5E1E9F5
          E3EAF5E3EBF6E4EBF6E7EDF6EAF0F9EBF0F8F0F3FAF1F5FAF1F5FBF2F4FAF2F5
          FAF3F6FBF3F6FCF4F6FBF4F7FC00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004B6053820000001B74524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0027340B35000000
          BF4944415478DA6390921290D3D3D5D681036D4D3D593E2929062989F0C4C414
          149098182E2EC520EA1F1D8B01A2FDC418245D7C03838040DF3E004A040505FA
          B8883070F26B189B9A9A9AB0B1B12B800920C7489D9F83815BD8D0CADACACA9C
          858555D90C445802B906423C0CBC5AB6EE1E9E1E4ED2AA160E8E20C2CDD3C3DD
          46858B4146C92E38222A26CCCBD53B24144444464504DBC92B3248310B3AC725
          6524C5C727A4270389D4B4A438674166A03FA4D498189100031033A949490100
          785233F4717B45C80000000049454E44AE426082}
        Buttons.Visible = True
        Buttons.Size = 24
        Buttons.Spacing = 10
        ColorTo = clMenu
        ColorDisabled = clNone
        ColorDisabledTo = clNone
        Direction = gdHorizontal
        Color = clMenuHighlight
        Position = 5
        Slider.BorderColor = clNone
        Slider.BorderColorDisabled = clNone
        Slider.Color = 14395006
        Slider.ColorTo = clWhite
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = 53895
        Slider.ColorCompletedTo = 43037
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdVertical
        Slider.Size = 8
        Slider.Offset = 1
        TabOrder = 9
        Thumb.BorderColor = 10317632
        Thumb.BorderColorHot = 10079963
        Thumb.BorderColorDown = 4548219
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = 15653832
        Thumb.ColorTo = 16178633
        Thumb.ColorDown = 7778289
        Thumb.ColorDownTo = 4296947
        Thumb.ColorHot = 15465983
        Thumb.ColorHotTo = 11332863
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = 15586496
        Thumb.ColorMirrorTo = 16245200
        Thumb.ColorMirrorHot = 5888767
        Thumb.ColorMirrorHotTo = 10807807
        Thumb.ColorMirrorDown = 946929
        Thumb.ColorMirrorDownTo = 5021693
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggVertical
        Thumb.GradientMirror = ggRadial
        Thumb.Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000140000000A0803000000838B8E
          D400000015744558744372656174696F6E2054696D650007D7070C0D010A1F0E
          4DE30000000774494D4507D7070C0E1A2254CA73AA000000097048597300000B
          1200000B1201D2DD7EFC00000300504C5445295CA4547CB65C83BB5687CE5788
          CF5987CC5E89C65A88CC608AC86793D27D9ECF729DD6769ED8779FD87BA1D8FF
          40FF80A5DA81A6DA81A7DB84A8DD8AA7D38FAEDA90ACD690AFDB90B0DD91B1DF
          9FB6D599B5DD9AB6DD9FB9DC92B2E0A0BADBA1BADBA0B9DCA5BDE0A6C0E2A7C0
          E2A9C0E0AAC0E1ACC2E1B4C8E4B5C9E4B2C8E8B3C9E8BED1ECC3D3EBC1D3EDC7
          D6ECC9D7ECCAD8ECCEDCEECFDCEECCDBF0CDDCF0D4DFEFD5E0EFD5E1F2DCE6F5
          E0E8F5E3EAF5E3EBF6E4EBF5E4EBF6E7EDF6EAF0F9F1F5FAF1F5FBF2F5FAF4F7
          FCF5F8FCF6F8FC00000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000A0D143A80000001074524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00E0235D19000000904944415478DA55CE4712
          82401040D1062318DA2C62403181120D48121904EF7F2429CAA2C6B7FCAB0F88
          28C84B695D9036B2D04204EC7B84BC4B8478833CDEC2D79FF03E84AE71711E14
          E76AF4A0C2CDF747CA61C155A1D1DE2AAA5252955DA706F5D9C9B46CEBC7B6CC
          F3AA0993B1E6FA41F42C4481EF6AD31120CBEB7192669F5C9626B1CEB3F9128A
          0C501811F10BAF8A1F1917A4B25A0000000049454E44AE426082}
        Thumb.PictureHot.Data = {
          89504E470D0A1A0A0000000D49484452000000140000000A0803000000838B8E
          D400000015744558744372656174696F6E2054696D650007D7070C0E1721AD6C
          BF2D0000000774494D4507D7070C0E1A15EC77D6A5000000097048597300000B
          1200000B1201D2DD7EFC00000300504C5445295CA4376CB53E71B63F72B6547C
          B6497EC75C85BC5382C55583C55D8DD05E8ED16991C96F95CB6592D26693D36F
          99D16F99D2709BD9729DDA7DA8E2FF40FF86A9D98AA8D490ACD69FB6D582ACE5
          83ACE688B0E989B1E981B4F99DBCE89FBFEBA1BEE6A0BFEB94C6FF95C7FF98C3
          FF99C4FF9EC6FFADDAFFAEDBFFB5DEFFBDDFFFBEDFFFBEE7FFBFE8FFC1D2EAC1
          D3EBD1DEEFD3DFF0CFE0F8C9EAFBC4F0FFC9F5FFCCFAFFCDFBFFD4E5FDD5E6FE
          DBFFFFDDFFFFE7EDF7E6FFFFEDF3FBF0F5FDF0F6FDF0F6FEF5FFFFFCFFFFFFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000A620DC40000001574524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF002BD97DEA000000884944415478
          DA55CEC51A82601484E141013B392806618B2D252A2578FFD7248F0BF97D97B3
          F906446DD9D0F4D997AE19728B08D40DDE7F820EA17F89E2E4F593C4D1B587C6
          C9F2EF0CDF3A37C109EA72CD58A90287726D6E1E1CD7BBE53CD7399A8B7A0995
          D1E6911699F4B91D57319CEC42361EEEA7039028D959B165B624E63F49E1C1E0
          15A20F755A218D5D799EF00000000049454E44AE426082}
        Thumb.PictureDown.Data = {
          89504E470D0A1A0A0000000D49484452000000140000000A0803000000838B8E
          D400000015744558744372656174696F6E2054696D650007D7070C0E18393998
          3BB40000000774494D4507D7070C0E19331557009B000000097048597300000B
          1200000B1201D2DD7EFC00000300504C5445295CA4547CB64B7AC34C7BC44F7C
          C3507DC35C83BB5883C15A84C35A85C7678FCD6890CD6E94CE6B96D16C97D176
          97CA7297D0759AD2759BD27FA0D47CA0D87DA1D8FF40FF81A2D282A3D380A1D5
          81A2D486A4D287A5D28AA7D38BA8D18CA8D08CA8D18DA8D090ABD590ACD691AE
          D692AED694AED595AED696B0D69FB6D59DB5D89EB6D89CB5DC9DB6DCA6BDE0A9
          BFE1AEC2E0B0C3E0B0C3E1B1C4E0B2C6E4B3C7E4B4C7E2B5C7E2B9CAE3BACBE3
          BACCE6C0D0E9C4D2E9C7D4E9C7D5E9CAD7E9CDD9ECD3DEEDD3DEEED4DEEDD5E0
          EFD6E1EFD7E1EF00000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000009C3B84760000001774524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E640E65E0000008D494441
          5478DA55CE070E82401000C0C58262C3BA2A16142BA0540BD20FC1FF3F496208
          39E70503883D415A8BDB1F7123095D44C08147C8BB4488374498DCC2E84F781F
          43477F382F8AF3D4FB50E116C733E5B4E4AA506FED155529A9CAA15D83C6E862
          98B659B04DE33A6FC26EAAB97E101602DFD5662B4096B7E224CD3EB92C4D628B
          67F327CA0C501819F10B16AC2041578C17060000000049454E44AE426082}
        Thumb.Size = 10
        Thumb.Width = 20
        Thumb.Shape = tsPointer
        TickMark.Color = clBlack
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'Tahoma'
        TickMark.Font.Style = []
        TickMark.Style = tsNone
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
      end
      object AdvTrackBar33: TAdvTrackBar
        Left = 216
        Top = 144
        Width = 73
        Height = 26
        BorderColor = clNone
        BorderColorDisabled = clNone
        Buttons.BorderColor = 9262895
        Buttons.BorderColorHot = 10079963
        Buttons.BorderColorDown = 4548219
        Buttons.Color = 15653832
        Buttons.ColorTo = 16178633
        Buttons.ColorHot = 15465983
        Buttons.ColorHotTo = 11332863
        Buttons.ColorDown = 7778289
        Buttons.ColorDownTo = 4296947
        Buttons.ColorMirror = 15586496
        Buttons.ColorMirrorTo = 16245200
        Buttons.ColorMirrorHot = 5888767
        Buttons.ColorMirrorHotTo = 10807807
        Buttons.ColorMirrorDown = 946929
        Buttons.ColorMirrorDownTo = 5021693
        Buttons.GradientMirror = ggVertical
        Buttons.Spacing = 0
        ColorTo = 15318946
        ColorDisabled = clNone
        ColorDisabledTo = clNone
        Direction = gdVertical
        Color = 16443353
        Position = 5
        Slider.BorderColor = clNone
        Slider.BorderColorDisabled = clNone
        Slider.Color = clNone
        Slider.ColorTo = clBlack
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = clNone
        Slider.ColorCompletedTo = clNone
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdHorizontal
        Slider.Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000460000000B0803000000F5360B
          0400000015744558744372656174696F6E2054696D650007D7070E0C1D0CBBD1
          17370000000774494D4507D7070E0C1E16B89F5EFE000000097048597300000A
          F000000AF00142AC349800000300504C5445518CD86D9BDB6598E076A1DE7DA6
          DB7EA7E2FF40FF84A9DB87ACDC8EAFDB8CB1DF92B2DD97B4DD9BB7DC9CB8DE85
          ABE18BB0E490B3E594B6E196B7E699B9E49BBAE59EBCE5A1BBDEA3BCDFA4BFE4
          A2BFE9A6C4EAABC3E3ACC4E7AEC5E4AAC5EAADC8ECB1C6E3B1C7E6B4C8E4B6CA
          E6B1C9E8B3CAEAB2CBEFB5CBE8B9CCE5B9CCE6BACDE7BDCEE7B9CDEAB8CEEEBA
          D0EDBFD1E9C2D2E9C5D4EAC6D6ECC9D7ECCCDAECCCDBEFCEDBEDCFDCF0CCDCF4
          D2DEEED1DEF0DBE4F2DDE5F2DEE7F5E3EAF4E3EBF6E2EDFCF6F6F70000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000534551530000000774524E53FFFF
          FFFFFFFF001A4B0346000000D94944415478DAA590591B81401846A7C1D8CD24
          2195C8509621B26609FFFF476999DCE0B19D9BB93AE7AD0FA0BFB00C55226486
          C06F7A47AD139CC15894646530DD7D99B10C59C289AEE846DFB699BB3F5F3ECC
          A8C1A78736D7DB3D4A478CCD43569E7F466F322A1F27B1AE9BBD487722C267BE
          8C2A2F322D49C499FBBAA69B26A5E3C9135CEFE4A3C78C48223D58AFC77A30FF
          D48F596C8E2794645202041C4148A5B3B97CA1582A571AEF687699B78FE70104
          1843083121D59AA269ED2E1D7E0A639B2DFF0B202B0EBFD8D738DE3A3906385C
          7FC7BDDFF40689C94B6AF79307C50000000049454E44AE426082}
        Slider.PictureCompleted.Data = {
          89504E470D0A1A0A0000000D49484452000000460000000B0803000000F5360B
          0400000015744558744372656174696F6E2054696D650007D7070E0C1D21FE0E
          4B420000000774494D4507D7070E0C1E207725CB67000000097048597300000A
          F000000AF00142AC349800000300504C544510A50018AD0021AD0021AD1029AD
          0029AD1829B50031AD2131AD2931B50039AD3139AD3939B50039B53142B50042
          B53942B54242BD004AAD5A4AAD634AB54A4ABD004ABD18528CDE529C9C52A58C
          52AD8C52B55A52B56352BD005AB5635AB56B5AC600639CE763B57B63B58463BD
          7B63C6006B9CDE6BB58C6BBD8C6BC60073A5DE73CE007BA5E77BCE0084ADE784
          D6008CB5E794B5E79CBDE7A5BDE7A5BDEFA5C6EFADC6EFADCEEFB5CEEFBDCEEF
          BDD6EFC6D6EFCEDEEFCEDEF7D6DEEFD6DEF7DEE7F7E7EFF7E7EFFFF7F7F7FF42
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED771BF40000004574524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF00B2EEB138000000DA4944415478DAA5907B0B82301447776D61DA90E865
          EFA49862E59C8A625460B5EFFF995A5A12442F3BFFDF737E5C24FE224DE280F3
          AD40D5CE9338E46CC3180FC2284D0F3F6AD2240C18DB388B594B8792E3E94B4D
          2CA7CBB833EBEA75C09AD1B35CD7BFE16547F1411317F1F9585741C1866151D7
          F31FF1BCDCF242135DE3CE62729D8E8931B5DCB5FF8C74509A65E259C3E5F972
          D2D56BF9F4A98CBF81524A0A4BAE59D9B6690E869D763E5D23F2DEA25F40487F
          BF2FF2C83647CD0680A228186B1AF9813EA8778B4061D4844AA800A545A0EC5C
          9D5DF9D30B246A8E19E0EB78B30000000049454E44AE426082}
        Slider.Size = 11
        Slider.Border3D = False
        Slider.Offset = 0
        TabOrder = 10
        Thumb.BorderColor = 10317632
        Thumb.BorderColorHot = 10079963
        Thumb.BorderColorDown = 4548219
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = 15653832
        Thumb.ColorTo = 16178633
        Thumb.ColorDown = 7778289
        Thumb.ColorDownTo = 4296947
        Thumb.ColorHot = 15465983
        Thumb.ColorHotTo = 11332863
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = 15586496
        Thumb.ColorMirrorTo = 16245200
        Thumb.ColorMirrorHot = 5888767
        Thumb.ColorMirrorHotTo = 10807807
        Thumb.ColorMirrorDown = 946929
        Thumb.ColorMirrorDownTo = 5021693
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggVertical
        Thumb.GradientMirror = ggRadial
        Thumb.Picture.Data = {
          89504E470D0A1A0A0000000D494844520000000C00000017080300000008BA5E
          8D00000015744558744372656174696F6E2054696D650007D7070C0F130A647E
          E95E0000000774494D4507D7070E0B0121C837E3EA000000097048597300000A
          F000000AF00142AC349800000300504C5445174191254E9A2A529D335BA2355C
          A44168AC4469AE5178B7587FBC577EC0577FC05E84BF5783C65687CC5D89CC5B
          8BD0698DC5628FD16893D46B96D36E98D4799FD77CA2D97FA3D8FF40FF829DCB
          82A7DA84A7DA85A8DA8DA7D189A9D888ABDD8BADDE91AFDB93B1DB92B3DF9BB6
          DD9CB8DF9FB9DD9EB8DE96B5E29AB6E19DBAE39FBAE0A0BADDA2BBDEA3BBDEA4
          BCDEA0BDE4A0BDE5A4BEE3A6BFE2A7C0E4A7C2E7ABC2E2A8C0E4ACC3E2AEC4E2
          AFC5E3AEC5E7AFC5E6AFC7E8AEC6EAB0C5E3B1C6E3B3C6E3B3C7E3B2C7E4B4C8
          E4B6CAE7B7CBE7BACEEABBCFEABCCDE8BCCEE8BECFE8C1D3ECC3D3ECC3D5EEC5
          D4EBC5D5EBCAD9ECCBD9EFCCDAECCCDAEECFDCEFCCDBF0CDDCF1CEDCF0D0DCEF
          D1DDF0D6E1F2D7E3F2D8E2F2DAE4F2D9E4F4DAE5F4DCE5F2DEE7F5E3EAF6E4EB
          F6E5ECF6E6EDF7EAF0F8ECF1F8EDF1F8F0F4FAF0F4FBF1F5FB00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000897F9280000001974524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0001340AB7000000A449
          44415478DA639040020C6472ECCC9D5DCC4D211CADA42C204835007194D33232
          32333332D23525180CFDA2E31281202E26428341DCDD3F30180802033CA41904
          A554EC1D9D9C1CEDD5658418788515D574F5F5F5749444F819784455CD2C1D1C
          AC2CB4C5F81838E58D5C3DBDBDBDDC4C14B81804E4AC7D824223437C6D15B919
          24588DC3E2935312C26DD8402E60918CCACE89956586B88D83898181919D02CF
          C10100C2112BE50E2D025E0000000049454E44AE426082}
        Thumb.PictureHot.Data = {
          89504E470D0A1A0A0000000D494844520000000C00000017080300000008BA5E
          8D00000015744558744372656174696F6E2054696D650007D7070C0F162F520D
          C95C0000000774494D4507D7070E0B0139DB5B7BBC000000097048597300000A
          F000000AF00142AC349800000300504C544519439327509B2C549E325BA3345C
          A43F67AD4169B04072B64376BB4B77BA4B77BC5279B85980BD5387CF5D84C054
          89D25F91D6688EC66595D96596D96898DB6297E06499E27EA3D67CA5DC78A4E2
          7AA6E4FF40FF8CAFDE85ACE386AEE584AEE985B0EA8DB2E682B6FE86B8FF9BBE
          EF8CC2FE90C6FF95C1FF97C2FC97C3FF9DC1F399C4FD9DCFFDA2C5EEA4C3EFA6
          C6F3A1CEFFA1CFFFABCDF2ACCCF8A2D5FDA9D3FAA8D5FFAFD0FFADD7FBB1CFF9
          B7D0F4B2D2FFB3D3FFBBD3F3BCD5F8BCD5F9AFE2FFB2E4FFC5D9F4C6D9F5C8DE
          FDCADFFDCDE0FCCDE1FCC7F8FFC9FAFFCEFFFFD1E1F7D2E5FFD3E6FFD4E6FFDC
          E8F9D4F6FED3FFFFD5FFFFD6FFFFD7FFFFDCF5FCD8FBFEDCFFFFE4EEFCE4EEFD
          E6F0FEE6F1FFE7F1FFE5F9FEE8F1FFE8F2FFEFF5FEEFFCFFF0F6FFF1F6FFF2FC
          FFF5F9FEF5F9FFF5FAFFF6F9FFF7FAFEF7FAFFF9FBFFFAFCFEFAFCFFFAFDFFFB
          FCFFFBFDFFFFFFFF000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B6E0C1CC0000001C74524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0017B2E2D70000
          00A74944415478DA639046020C64726CED5C5CEDAD201CE384422048B50471B4
          327373F3F3737373F4A519F4BC23A262E2E3E3A223FD5518E49CDC7C7CFDFC7C
          7DDC9D151984E435CCAD6D6CACCDB5154418784595D40DCCCC0C3595C5F819D8
          05541D3C82823D1DD5843918B82475BC12B33252024DA4381904254C43F29293
          B2C32D64F918A45975030AD3D30AC38CD8402E60110F2DC88F956186B88D8789
          8181919B02CFC101005EF82EC377107FE30000000049454E44AE426082}
        Thumb.PictureDown.Data = {
          89504E470D0A1A0A0000000D494844520000000C00000017080300000008BA5E
          8D00000015744558744372656174696F6E2054696D650007D7070C0F153A14FD
          7E740000000774494D4507D7070E0B012E5888FE7B000000097048597300000A
          F000000AF00142AC349800000300504C544519439327509B2C549E325BA3345C
          A43565AC3567AF3D66AC3E67AE3F72BD406DB2416FB54071BC5279B84A7AC24C
          7BC44E7EC75980BD5B82BF5484CB5985C45B89CE5D88C95285D35588D65F8CD0
          658EC7678DC5628DCC648ECC6C94CC6E98D46E99DA7099D0729AD4749CD2709C
          DC79A1D97BA2DA7CA1D96FA2F072A4F177ADF07FACF17BB0F1FF40FF86A9DD87
          A9DC88AADB89AADB88AADC91B0DF94B8DA98B4DC98BADB80ADEE82AEEF80AEF1
          85B2E585B7EE8AB7E789BDEE89B7F189B8F18FBEF199B7E19EB9E295B9F197BB
          F198BCF1A7BDDCA8BDDDA1BBE4A4BDE09EC7E495C9F197CBF1A4CDE5A9C0E0AE
          C7EEAEC8EEA9DDF1ABDFF1B1C6E2BCCEE6B3CCF1B4CDF1AFE3F1B5E1F0B4E3F1
          B5E3F1B6E3F1BAE2F0C2D2E8C0D2EDC0D3EEC8D6EACBD8EBCFDCEDC4D6F0C4D7
          F1C5D7F1CCDBF1CDDBF1CFDDF0CFDEF0D1DDEDD1DDEED1DEF1D2DDF0D2DEF0D2
          DFF1D4DFF1CBE0F1CEE0F1D5E0F1D5E1F1D6E0F1000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000AA1229930000002E74524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF00828F7355000000A64944415478DA63D045020C64
          721C8D0C0CF58D211C35BF84ACECC4607510473E24B7B8B4B4382F56499741CF
          342E39150852E23D5519649CFC43C3802034C04396814FC1DCD9C5D5D5C5D942
          859F81475C43DBCEC1C1DE52538293815540CB3B302A3AC84747988D815BD43A
          BC303FA728D256928B415AC42AA2243DAD20C6464C8841975DD12B293323DB57
          9903E402162913377733396688DB04991818187929F01C1C00004E003900EFBE
          B0DE0000000049454E44AE426082}
        Thumb.Size = 23
        Thumb.Width = 12
        Thumb.Shape = tsPointer
        TickMark.Color = clBlack
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'Tahoma'
        TickMark.Font.Style = []
        TickMark.Style = tsNone
        TickMark.Spacing = 0
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Transparent = False
        Version = '1.6.3.3'
      end
      object AdvTrackBar34: TAdvTrackBar
        Left = 216
        Top = 200
        Width = 150
        Height = 28
        BorderColor = clNone
        BorderColorDisabled = clNone
        Buttons.BorderColor = 9262895
        Buttons.BorderColorHot = 10079963
        Buttons.BorderColorDown = 4548219
        Buttons.Color = 15653832
        Buttons.ColorTo = 16178633
        Buttons.ColorHot = 15465983
        Buttons.ColorHotTo = 11332863
        Buttons.ColorDown = 7778289
        Buttons.ColorDownTo = 4296947
        Buttons.ColorMirror = 15586496
        Buttons.ColorMirrorTo = 16245200
        Buttons.ColorMirrorHot = 5888767
        Buttons.ColorMirrorHotTo = 10807807
        Buttons.ColorMirrorDown = 946929
        Buttons.ColorMirrorDownTo = 5021693
        Buttons.GradientMirror = ggVertical
        Buttons.MinPicture.Data = {
          89504E470D0A1A0A0000000D4948445200000014000000150803000000710B3E
          9A00000015744558744372656174696F6E2054696D650007D7070C11282095CF
          41CA0000000774494D4507D7070C112B251B8905F6000000097048597300000B
          1200000B1201D2DD7EFC00000300504C544500069A00089B000A9D00119D0016
          9F0016A1001AA0001DA1041CA20519A80618A80812A10A15A30D14A40D1FA508
          2E9F0021A40027A50026A70025A80028A60028A8002FA90F22A60A2EA40736A3
          0034AC063EA9003BB1013CB0003DB2003EB3113ABF123ABF2235AE0046BB064B
          B4004CBD1E44AC2148B5294FB82B4EBB294EBC2054B3344DAC354BB9354CBA3B
          46B63556B6395CB73B5DBD3C5DBB3C5DBD336DBD3F62BF004DC00353C20052C6
          0056C90057CB055DC5005BCA015CCB0854C20060D30066D9016ADC016CDC016C
          DE056DDA066FDB0A6CD2016FE0057AE7047AE8266FD42770D33E63C14160BB44
          63BE4862BC4965BE4F69BF497EB9497EBA687FBE4164C14A66C44D67C44969C2
          4B6CC44F69C05069C0516EC0566DC25471C55576CA5971C55974C65D73C55D75
          C66274C16377C56677C46578C7667CCA687FC86D7CC80B81E70A83EC0A84EB0B
          86EB0E8AED0F8BEE1189E9108DEE1896F01C9AF21E9DF21F9FF32180D33683C7
          3290E620A0F224A6F427A8F428AAF52CAFF62CB0F634B9F839BFF93ABFF93CC2
          FA5989BD7383B97282BD4C83C05B93C243A1DF6680CD6882CD6C81CB6785D069
          86D06C88D16F8FD67985CB7B86CC7A8BCF7D88CD738FD2778BD0788BD0788DD1
          7691C47190D67991D47C92D47E99D944C8FA45CCFC55D6FE56D6FE62C7EF63C8
          EF61DBFE62DCFE64DDFE79EDFD7DECFE7EEDFEFF40FFA1ACBAACB2BA828CCE84
          8ECF848FD0839AC58396D0819FDC8991D18B99D28A9AD68E9ED78B9ED89499CF
          9197D3939BD5939CD586A2DC88A7DF8DA3DB97A9C395A0D793AADF9BA1D59DA2
          D89FA5D99AA8DB93B2E49FBAE7A3ABC7A8AECDA4ACD3A1A8DAA3AFDFA5A8DAA8
          B2DFAEB1DDA0B3E1A1B4E1A6B3E1A7B9E4A2BEE9A7BEE8A8B5E0AEB7E1ABBBE4
          B0B6E0B2B9E1B0BDE4B5BAE2B7BFE2B7BEE480EAFFA9C2EAB6C3E7BFC1E4B9C9
          EBBDCAEAC2C4C7C7C7C7C7C7C8CCCFD6D8D8D8C2C6E7C4C6E6C0C9E6C0C9E8C1
          CCEAC4CAE9CDD1EBCCD3EDCED6EFD0D6E3D0D5EDE9E9E9E4E7F2E4E8F4E8EBF4
          EAEEF8F1F2F9F6F7F9F9F9F9F9FAFCFEFEFE742513FA000000AC74524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00059515B1000001964944415478DA63580D066F1FDDB8
          7FEFD6A377101E0388787FF6D3D7378F1FBFF9FCF9F23B98E0C5A7AF2F9C3B72
          F8C89173B73EBCBF0411BCF8E4F6D15D5BD64D9EBA7ECB9E33779F5E02095EBF
          767ECFFAC9D9E919A919D993361CBCF1F0265070EFA56D33B253E262A2A3D3A7
          A4F44ED97E65DF6A86632776CCC84C8C09F4F7DFFAFD77744AE6CCFD57EF30F4
          1F9AD31D1F19669CF5F1DFFFFF7E91493D738F4F63089FD7971065167BFDF77F
          2030348B4A98B03982416F628289C1A61FFFC1404D5DC32461B62E038F923887
          CE9F7F7FC1805F5080834F899B818991995D22F4CB37309014136163666062E0
          6562159592D5DEF8F2151048CB4909B130F232E8730ACB2A9B5B5A981E78F6E2
          858AB9B28C28973EC34E4579556B0747170FF78E356B6D1CAC54E5157732ACD6
          B2B773F2CA2D282E2EAAA8CCF174B6B3D7047AF3B48F6B5E49754D6D5D5D6D4D
          7549BE9BF7695028B55795363436B7004153634359553B243CDBBAE62F58B474
          F9F2650B17CCEF6A8385FCA9E0C52B563E78B06AC5929053F0E858BDFAE4ACD6
          CECED65927213C00583CE8A1E1D731220000000049454E44AE426082}
        Buttons.MinPictureHot.Data = {
          89504E470D0A1A0A0000000D4948445200000014000000150803000000710B3E
          9A00000015744558744372656174696F6E2054696D650007D7070C112D00D3D6
          95470000000774494D4507D7070C113104E7CDEF73000000097048597300000B
          1200000B1201D2DD7EFC00000300504C5445002BC9002CCB002DCC002ECC022A
          D40033D30034D40037D7053BD70038D8003CDE053DDC053EDC0B33D40C35D50E
          33D90E34DA0948DA0A4ADF0B51DD1043D61145D7115EDC0042E30046E50046E8
          014FF00059EF005AEF0256F2035BF21159EB125AEB196CDC0960EF0861F40C6C
          F50C70F50C74F71B79EB1375F6177BF7235FDC2959D62A5BD72E5CDE2B70DE36
          62D62364E72669EB2B67E93B62E03471E93C73E14378DF4D7CDE416EE2477CE6
          507FE31780F71682F72682DF208BF82D8DF72D8EF72594F92595FA2794F92797
          F92C9AF92E9CF83294E635A8FA3BADF53CB2FB3CB2FC4787D45882DE4B82E74B
          82E84D81E94C84EA4E84EB4D86EC5284EA578AEA5885E65B87E75886E85988E3
          598BEA5A89E8588DEB5B8DE85A8EEB5D8DE85693EA5C93EF5C95EF49A5DD55A0
          D043B7F741B8FC43BAFC44BBFC4BB2FB698FDE639ACA608BE7688CE16590E865
          93E96692E86794E96990E46991E66D91E56E94E4689AE96A99EA6C9BEA7596E6
          7595EB7595EC749AE6779BE6769CE77B98E67F9DE67898EC61BDF962BDF970A2
          ED77A0E87AA2E97FA9EA7DAFED77A7F17EB0ED4BC4FD4BC4FE4EC8FE53CEFE54
          CEFE59D4FE5BD7FF5CD8FF5FDBFF60DCFF6AE5FF6FEAFF72ECFF78EDFE79EEFE
          7AF2FFFF40FFA5B1BBAFB5BA809EE6829DE4849EE589A6D59DB1C987A0E686A6
          E781ABEB85A9EA86A9E888A1E688A6E58DA6E688A8E889ABE98EA9E887B5EE8A
          B7EE8CB1EA8FB3EB93A5EA98ACE89EAFE899B5EA9BB7EA9DB3EA9FB5EA9CBBEC
          9FBEEDA1B2E8A2B7EFA4B6EAA6B8EAA8B7E9A9B8EAA2BAF0A4BAF18EDBFC99C0
          EE9DC4F09FC8F386F4FE8EF4FE91F5FDA9C6EFACC0ECA6C6F0A2CBF3A6C8F0A8
          C8F1ABCEF2B3C7EEB4C2ECB9C8EFB1CEF3B3CDF2B3CEF0B3CFF2B4C9F1B7CAF0
          BCCBF0B1D3F3B8D2F2BBD6F4BDD7F4BED7F5B8DAF6BCDBF6BDDFF8A7F8FCA9F9
          FDAAF8FEC3C5C7C7C7C7C8C8C8CDD1D8D8D8D8C1CBEFC5CFF1CFD7E7C6D1F1C0
          DEF7C6DBF6CBD6F3C8DEF6CCD8F4D2DBF4D4DCF4CCE2F7D5E1F7E9E9E9EAEAEA
          E4EAF8F2F5FCF6F7FAFAFAFAFAFBFDFFFFFFD026863E0000009C74524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00BF675F1B0000
          01974944415478DA63980D0677AE9EBA71E3D4F53B101E0388B87BE6FB9777AF
          5FBFFBFAFDDC5D98E0F90FEF2E1DD8BD65CBEE03973E7E3A07113CF5E9F2DECD
          AB162F58B062EDE603B7BE9D0709DE7B7871FBAA86CA929292D2CA796B77DC7C
          7F1F2878ECEAD62575C539E11161B90B8A6A576FBB731628F860E7B2BABCE890
          00ABB5BF7EFB16D4ADD9F5E80A43C7850DADF9A14196A59FFFFDFF6F1E55D8B6
          F1761743EC91F6F298C0C8D3BFFF038159705CC5D2A3F10C16EBCAFC4D57FEFA
          0F065A86267E65EB2D18F8744479F4FFFC85004149716E116D5E061646362EA1
          ACB73F7FFEF8F1F3A7B09424172B030B830033A7A4AC92DEC297AF80404C5956
          929D899F419743424E454353DD67D1B3E72F143554E424388C19EAE56554ADED
          9C5DDDDCB3E7CCB5B5B3569551D8C430DB48CDC6C5C33B2D3D233539C5D3C3C5
          46CD00E8A33D0E4EDE3DFD13264E9A3471427FB7B793C33250285567F64E993A
          6D3A104C9B3AA537B30A129E8D4D33671D3F71F2E489E3B3663637C242FE50E2
          E1A74F1E3F79F2F470D22178740085135A3A3B5B120E4278007079E77135BF8C
          300000000049454E44AE426082}
        Buttons.MinPictureDown.Data = {
          89504E470D0A1A0A0000000D4948445200000014000000150803000000710B3E
          9A00000015744558744372656174696F6E2054696D650007D7070C11310ED219
          E51D0000000774494D4507D7070C11360CA657F186000000097048597300000B
          1200000B1201D2DD7EFC00000300504C544501003402003E080A37080A380300
          4303004704004604004E04054F04064F07054F07094900015705005005005307
          055002025902035D0D0F510E1053030760000960030861000F68090F620C0D60
          03136303146400106800176F00196F011B6F0816670119720722710025790026
          79002D7F002E7E06317B1D246F1D28601E28611B24722C3A5E283074303A7B39
          387836447E3D447E3E527042487E474C7D484D7E002C80012D82003381033580
          003A88013F8D05388B05398C1B34801D3580213B80353F8404408700418C0140
          8E00428C004590004994004A96014C96084C9304509904509A0756A20158A502
          5FAF0161B20464B20267BA0368BC026ABE1567AF3940803A44823F488635598F
          2C6EAA0778CA0B7FCE1175C01177C2434F86444984444D83454E83474E804450
          874950874D53804F57854A5E8F4E59884F5B894E5D8D4F5F8E4D569151598455
          5982545B86585C844B729F5C61865A648B5B668C5D65895A60915E62915E6292
          5B69905C6B915E70975F729863698B666A8B646A8C696C8C656B9F6972916A74
          926975946D72906F74936B7A9A6C7D9C707E90747995797D967B7F98686FA060
          7AA1627CA3757BA50B80CF0D83D2128AD7148DD9148ED91996DD1A97DE399ED6
          24A4E629ABEB2BABEB2AACEB2EAFEA2EAFED2FB0EA2EB0ED2EB1EE38BDF439BE
          F43FC5F865819B67839D6A82966B83986D859A76819B7A809A78839C7E839C7F
          849C6C88B86E89B86C8FBE6E90BE7187A7738BAA7887A07A8AA2519CD269BBE4
          40C6F846CAFA4ACCFC55D5FD56D6FD6FE1FE76E3FEFF40FF80859D888EA38A8F
          A48187B2888CB48595A78299AD839CAB859AA98A93A88D95A98B9AAA899AAD83
          90B08096B0819BB4849BB4859FB7889BB08E9EB09097AB9298AB969DAF989EB1
          8FA0B192A3B496A0B096A2B59AA1B39EA5B7A0A7B8A0A9B3ADB1B6ABB0B89FA7
          C489BEE2A0A7C3A7ABCAA8B5C1A9BCC9A1B1D1C3C4C6C7C7C7C8C8C8CCCED3CA
          CCDECDD2D6CFD1DBD0D6DBD8D8D8C7D3E4CED1E2CBD9EAD5DBE0E2E4EEE9E9E9
          EAEAEAF1F2F7F6F6F8FAFAFAFAFAFCFFFFFF728B4333000000C274524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          D2A7D936000001904944415478DA633808018F577575AD7A0CE5308088972B6E
          DCBF71FDFA8D077756C2054F1EBF79787D6F4F4FEFA123F7CE9E84089EBA7566
          7D775B637D7D635BF7A1EBB74F81045F9E38BDA6ADAEB830BFA0B0ACA17DCDB5
          1320C1656757379715A4999A24974F2C286B597B75F941861717B7B596A49B1A
          1B261CFBF13B35ABB475FBE5170C572E745465261A8635BDFFF7FF7F44525675
          E7A52B0C465B6AB2E3C3739FFFFE0F048EE12939B55B8D1874FA330CF48EFEF8
          0F06DA1ABA061913741898B584B9F4FFFC850009013E2E214D26060646565EC9
          BE8FBF7EFDFCF9EB9782A8002F1B230303370BAFA08CBCC3F9779F8140494E5C
          909D859BA18243445645CDC232F2EEEB376FD5D59465C5382B199E4829AA5AB9
          BAB97B78153D7CE4E46A65A628FD8CE1A09D998BA75F40504848706894BF9FA7
          8BB93DD09BAF6C7C02A3274F99060453264707FAD8824369836FCC8C5973162D
          5AB470EEAC19937C3742C27353ECECC5BB76EFD9B37BD792B9719B61217F70C7
          BC7DFB0F1CD8BF6FC10E447400C1D39D3367EE7C0AE50000C6EAEDD9CA9F19A3
          0000000049454E44AE426082}
        Buttons.MaxPicture.Data = {
          89504E470D0A1A0A0000000D4948445200000014000000150803000000710B3E
          9A00000015744558744372656174696F6E2054696D650007D7070C11282095CF
          41CA0000000774494D4507D7070C112B1934E67971000000097048597300000B
          1200000B1201D2DD7EFC00000300504C544500069A00089B000A9D00119D0016
          9F0016A1001AA0001DA1041CA20519A80618A80812A10A15A30D14A40D1FA508
          2E9F0021A40027A50026A70025A80028A60028A8002FA90F22A60A2EA40736A3
          0034AC063EA9003BB1013CB0003DB2003EB3113ABF123ABF2235AE0046BB064B
          B4004CBD1E44AC2148B5294FB82B4EBB294EBC2054B3344DAC354BB9354CBA3B
          46B63556B6395CB73B5DBD3C5DBB3C5DBD336DBD3F62BF004DC00353C20052C6
          0056C90057CB055DC5005BCA015CCB0854C20060D30066D9016ADC016CDC016C
          DE056DDA066FDB0A6CD2016FE0057AE7047AE8266FD42770D33E63C14160BB44
          63BE4862BC4965BE4F69BF497EB9497EBA687FBE4164C14A66C44D67C44969C2
          4B6CC44F69C05069C0516EC0566DC25471C55576CA5971C55974C65D73C55D75
          C66274C16377C56677C46578C7667CCA687FC86D7CC80B81E70A83EC0A84EB0B
          86EB0E8AED0F8BEE1189E9108DEE1896F01C9AF21E9DF21F9FF32180D33683C7
          3290E620A0F224A6F427A8F428AAF52CAFF62CB0F634B9F839BFF93ABFF93CC2
          FA5989BD7383B97282BD4C83C05B93C243A1DF6680CD6882CD6C81CB6785D069
          86D06C88D16F8FD67985CB7B86CC7A8BCF7D88CD738FD2778BD0788BD0788DD1
          7691C47190D67991D47C92D47E99D944C8FA45CCFC55D6FE56D6FE62C7EF63C8
          EF61DBFE62DCFE64DDFE79EDFD7DECFE7EEDFEFF40FFA1ACBAACB2BA828CCE84
          8ECF848FD0839AC58396D0819FDC8991D18B99D28A9AD68E9ED78B9ED89499CF
          9197D3939BD5939CD586A2DC88A7DF8DA3DB97A9C395A0D793AADF9BA1D59DA2
          D89FA5D99AA8DB93B2E49FBAE7A3ABC7A8AECDA4ACD3A1A8DAA3AFDFA5A8DAA8
          B2DFAEB1DDA0B3E1A1B4E1A6B3E1A7B9E4A2BEE9A7BEE8A8B5E0AEB7E1ABBBE4
          B0B6E0B2B9E1B0BDE4B5BAE2B7BFE2B7BEE480EAFFA9C2EAB6C3E7BFC1E4B9C9
          EBBDCAEAC2C4C7C7C7C7C7C7C8CCCFD6D8D8D8C2C6E7C4C6E6C0C9E6C0C9E8C1
          CCEAC4CAE9CDD1EBCCD3EDCED6EFD0D6E3D0D5EDE9E9E9E4E7F2E4E8F4E8EBF4
          EAEEF8F1F2F9F6F7F9F9F9F9F9FAFCFEFEFE742513FA000000AC74524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00059515B1000001954944415478DA63580D06EF1EDDBA
          77FFC6A3B7101E0358E8F2E7CF6F1E3F7EF3F5D3D9F730C14BEF3FDC3A77E4C8
          E123E72EBC7E7A112278E9E9DD337BB6AC9F3A79DD965D476F3FB90812BCF9F0
          C6C10D93B2335233D2B327AFDF73FEDA75A0E0BE2BDBA7F4A64C498F8E8E894B
          C99EB1EDD2DED50C77AEEE9F999912FDFBFB567FFFC098C4CC193B4E1C639876
          7C6E4F52A4DFFFFFFF3E66198745C677CF39D4CF10B17942429499E17F20F87D
          3DD62C2AA16F5E3883EEEC04130D75B5FF60F063938149C2443D066E253E0E01
          41FEBF60F0EF8F0E87B8120F031303339B8898E43730F8122AC1CECCC8C4C0CB
          C822242527FD0A085E6ED49695126565E265D0E7129551365779F1E2D901530B
          4B736559614E7D869D8AF2AA560E366BD774B87BB8383A58ABCA2BEE6458AD69
          6FE7EC99535951545C5C90EBE56467AF05F4E6696FB7FC92EA9ADABABADA9AEA
          923C579FD3A0506AAF2A6B686C6A0182E6C686D2AA764878B675CD5FB070D9F2
          E54B172D98DFD5060BF953214B56AC7AF060E58AC5C1A7E0D1B17AF5C959AD9D
          9DADB34E4278005426E8A1A4BEDABC0000000049454E44AE426082}
        Buttons.MaxPictureHot.Data = {
          89504E470D0A1A0A0000000D4948445200000014000000150803000000710B3E
          9A00000015744558744372656174696F6E2054696D650007D7070C112D00D3D6
          95470000000774494D4507D7070C113034D80FEE9E000000097048597300000B
          1200000B1201D2DD7EFC00000300504C5445002BC9002CCB002DCC002ECC022A
          D40033D30034D40037D7053BD70038D8003CDE053DDC053EDC0B33D40C35D50E
          33D90E34DA0948DA0A4ADF0B51DD1043D61145D7115EDC0042E30046E50046E8
          014FF00059EF005AEF0256F2035BF21159EB125AEB196CDC0960EF0861F40C6C
          F50C70F50C74F71B79EB1375F6177BF7235FDC2959D62A5BD72E5CDE2B70DE36
          62D62364E72669EB2B67E93B62E03471E93C73E14378DF4D7CDE416EE2477CE6
          507FE31780F71682F72682DF208BF82D8DF72D8EF72594F92595FA2794F92797
          F92C9AF92E9CF83294E635A8FA3BADF53CB2FB3CB2FC4787D45882DE4B82E74B
          82E84D81E94C84EA4E84EB4D86EC5284EA578AEA5885E65B87E75886E85988E3
          598BEA5A89E8588DEB5B8DE85A8EEB5D8DE85693EA5C93EF5C95EF49A5DD55A0
          D043B7F741B8FC43BAFC44BBFC4BB2FB698FDE639ACA608BE7688CE16590E865
          93E96692E86794E96990E46991E66D91E56E94E4689AE96A99EA6C9BEA7596E6
          7595EB7595EC749AE6779BE6769CE77B98E67F9DE67898EC61BDF962BDF970A2
          ED77A0E87AA2E97FA9EA7DAFED77A7F17EB0ED4BC4FD4BC4FE4EC8FE53CEFE54
          CEFE59D4FE5BD7FF5CD8FF5FDBFF60DCFF6AE5FF6FEAFF72ECFF78EDFE79EEFE
          7AF2FFFF40FFA5B1BBAFB5BA809EE6829DE4849EE589A6D59DB1C987A0E686A6
          E781ABEB85A9EA86A9E888A1E688A6E58DA6E688A8E889ABE98EA9E887B5EE8A
          B7EE8CB1EA8FB3EB93A5EA98ACE89EAFE899B5EA9BB7EA9DB3EA9FB5EA9CBBEC
          9FBEEDA1B2E8A2B7EFA4B6EAA6B8EAA8B7E9A9B8EAA2BAF0A4BAF18EDBFC99C0
          EE9DC4F09FC8F386F4FE8EF4FE91F5FDA9C6EFACC0ECA6C6F0A2CBF3A6C8F0A8
          C8F1ABCEF2B3C7EEB4C2ECB9C8EFB1CEF3B3CDF2B3CEF0B3CFF2B4C9F1B7CAF0
          BCCBF0B1D3F3B8D2F2BBD6F4BDD7F4BED7F5B8DAF6BCDBF6BDDFF8A7F8FCA9F9
          FDAAF8FEC3C5C7C7C7C7C8C8C8CDD1D8D8D8D8C1CBEFC5CFF1CFD7E7C6D1F1C0
          DEF7C6DBF6CBD6F3C8DEF6CCD8F4D2DBF4D4DCF4CCE2F7D5E1F7E9E9E9EAEAEA
          E4EAF8F2F5FCF6F7FAFAFAFAFAFBFDFFFFFFD026863E0000009C74524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00BF675F1B0000
          019A4944415478DA63980D0677AE9FBA71E3D4D53B101E0388B87BEEFBD777AF
          5FBFFBF2FDCC5D98E0B94F1F2F1DD8BD65CBEE0397DE7D380F113CFFEDD681CD
          6B572C58B078D5E6BD973F9D0209DE7F7F73C7DA7995A5252525950DABB65F7C
          780F2878F6CEB6D5B5450B72C322C2738AEB966CBD7A6C36C39547BBD6D415F8
          FEFEB5D62A20243AAF6ED9CE07B319BA6E6F6C2B8C32FFFFFFDFE752CBA0D0FC
          D60D173A18E28F2EAD880B36FB0F04BF4F4706C694B71F8965B0585FE66762A8
          F51F0C7EAD34F52F5B67C1C0AB2DC22D2E29F81702FEE8F388EAF031B030B072
          494A09FFFCF9E3C7CF9F6FB384B8D8185918F899D8256595C55E01C1CB857A4A
          B2929CCC020CC61C12722A1A8A2F9E3F5BE4A3AEA9A12227C1A1CBB0494146D5
          DACE76EE9C6C773757673B6B5519F97A86D9066A362E1E9E29C9A919E969DE1E
          2E366A46406F2E7370F2EEEE9F3071D2A48913FA7BBC9D1CF68042A92AB377CA
          D469D38160DAD429BD99D590F06C6C9E39EBF88993274F1C9F35B3A91116F287
          920E3F7DF2E4F193A787130FC1A363F6EC83092D9D9D2D0987203C007211E771
          A17003280000000049454E44AE426082}
        Buttons.MaxPictureDown.Data = {
          89504E470D0A1A0A0000000D4948445200000014000000150803000000710B3E
          9A00000015744558744372656174696F6E2054696D650007D7070C11310ED219
          E51D0000000774494D4507D7070C113520BFA2CEA6000000097048597300000B
          1200000B1201D2DD7EFC00000300504C544501003402003E080A37080A380300
          4303004704004604004E04054F04064F07054F07094900015705005005005307
          055002025902035D0D0F510E1053030760000960030861000F68090F620C0D60
          03136303146400106800176F00196F011B6F0816670119720722710025790026
          79002D7F002E7E06317B1D246F1D28601E28611B24722C3A5E283074303A7B39
          387836447E3D447E3E527042487E474C7D484D7E002C80012D82003381033580
          003A88013F8D05388B05398C1B34801D3580213B80353F8404408700418C0140
          8E00428C004590004994004A96014C96084C9304509904509A0756A20158A502
          5FAF0161B20464B20267BA0368BC026ABE1567AF3940803A44823F488635598F
          2C6EAA0778CA0B7FCE1175C01177C2434F86444984444D83454E83474E804450
          874950874D53804F57854A5E8F4E59884F5B894E5D8D4F5F8E4D569151598455
          5982545B86585C844B729F5C61865A648B5B668C5D65895A60915E62915E6292
          5B69905C6B915E70975F729863698B666A8B646A8C696C8C656B9F6972916A74
          926975946D72906F74936B7A9A6C7D9C707E90747995797D967B7F98686FA060
          7AA1627CA3757BA50B80CF0D83D2128AD7148DD9148ED91996DD1A97DE399ED6
          24A4E629ABEB2BABEB2AACEB2EAFEA2EAFED2FB0EA2EB0ED2EB1EE38BDF439BE
          F43FC5F865819B67839D6A82966B83986D859A76819B7A809A78839C7E839C7F
          849C6C88B86E89B86C8FBE6E90BE7187A7738BAA7887A07A8AA2519CD269BBE4
          40C6F846CAFA4ACCFC55D5FD56D6FD6FE1FE76E3FEFF40FF80859D888EA38A8F
          A48187B2888CB48595A78299AD839CAB859AA98A93A88D95A98B9AAA899AAD83
          90B08096B0819BB4849BB4859FB7889BB08E9EB09097AB9298AB969DAF989EB1
          8FA0B192A3B496A0B096A2B59AA1B39EA5B7A0A7B8A0A9B3ADB1B6ABB0B89FA7
          C489BEE2A0A7C3A7ABCAA8B5C1A9BCC9A1B1D1C3C4C6C7C7C7C8C8C8CCCED3CA
          CCDECDD2D6CFD1DBD0D6DBD8D8D8C7D3E4CED1E2CBD9EAD5DBE0E2E4EEE9E9E9
          EAEAEAF1F2F7F6F6F8FAFAFAFAFAFCFFFFFF728B4333000000C274524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          D2A7D9360000018F4944415478DA633808018F577575AD7A0CE53080C995771E
          DCB87EFDC6FD1B2B5EC2044F9EBD77E4506F4F4FEFFAC3378F9F84089EBA7DFD
          50775B637D7D635BF7FA33B74E81054F5C5BD3DE505658905F585CD7B6E6F489
          9740C1E557D7B694154C2C4F36314D2B286B5E7D76D941861797B7B79666A5FE
          FE712CC1D0D834BDA475DBC5170C572E7556672545FCFFFFEF7D539861626655
          C7852B0C465B6B7352C21DFF03C1EFE7B9E1F1D9355B8C1874266418E86A68FF
          07831F47F50C32FA7518983485B8F80424FE42C01F7D2E612D66060646365E01
          51855FBF7EFEFCF5EB639F242F2B230303370BBBA0B89CD267207877DE415E46
          9097859BA192534C56594DFDED9BD777232D2DD4546445382A189E492B9A59B9
          3A3D7A58E4E5E1EEE66AA5AA28F584E1A0BDB98BA79F7F546870484850809FA7
          8B991DC8EFB63E81D193A74C03822993A3037D6C5E810437FA4E9A316BEEC245
          8B16CD993523C67703243C37C7CD5DB26BF79E3DBB772D9E1DBB091EF23B16EC
          DB7FE0C0FE7DF3762045C7C1834F77CE9CB9F329940300BB1AEDD9E7900B3E00
          00000049454E44AE426082}
        Buttons.Visible = True
        Buttons.Spacing = 5
        ColorTo = clNone
        ColorDisabled = clNone
        ColorDisabledTo = clNone
        Direction = gdHorizontal
        Color = clNone
        Position = 5
        Slider.BorderColor = clMedGray
        Slider.BorderColorDisabled = clNone
        Slider.Color = clSilver
        Slider.ColorTo = clSilver
        Slider.ColorDisabled = clBlack
        Slider.ColorDisabledTo = clBlack
        Slider.ColorCompleted = 14922881
        Slider.ColorCompletedTo = 13334870
        Slider.ColorCompletedDisabled = clNone
        Slider.ColorCompletedDisabledTo = clNone
        Slider.Direction = gdHorizontal
        Slider.Size = 4
        Slider.Border3D = False
        Slider.Rounded = True
        Slider.Offset = 8
        TabOrder = 11
        Thumb.BorderColor = 10317632
        Thumb.BorderColorHot = 10079963
        Thumb.BorderColorDown = 4548219
        Thumb.BorderColorDisabled = clBlack
        Thumb.Color = 15653832
        Thumb.ColorTo = 16178633
        Thumb.ColorDown = 7778289
        Thumb.ColorDownTo = 4296947
        Thumb.ColorHot = 15465983
        Thumb.ColorHotTo = 11332863
        Thumb.ColorDisabled = clBlack
        Thumb.ColorDisabledTo = clBlack
        Thumb.ColorMirror = 15586496
        Thumb.ColorMirrorTo = 16245200
        Thumb.ColorMirrorHot = 5888767
        Thumb.ColorMirrorHotTo = 10807807
        Thumb.ColorMirrorDown = 946929
        Thumb.ColorMirrorDownTo = 5021693
        Thumb.ColorMirrorDisabled = clBlack
        Thumb.ColorMirrorDisabledTo = clBlack
        Thumb.Gradient = ggVertical
        Thumb.GradientMirror = ggRadial
        Thumb.Picture.Data = {
          89504E470D0A1A0A0000000D494844520000000C0000000D0803000000AAF77F
          7000000015744558744372656174696F6E2054696D650007D7070C1113365DA9
          1BA30000000774494D4507D7070C111432C084AA0D000000097048597300000B
          1200000B1201D2DD7EFC00000300504C54450017AA0019AB0025A60026A6072F
          A90631AA0536AC0636AC053AAE0038B20039B2003FB71130AB1434AD1339A613
          3AA7232A9E2029A40040B80042BB0043BC3653963653973141B2394AB43151BE
          2260B42261B50050C3005BCF005CD01242C51243C70062D70062D80064DA3556
          C05B64AC5A72BF6C7C9C6E7DA94573C84674C84C79CA4E7BCB5C79CA6E7EC46E
          7FC40888EE0889EF1092F11093F11496F22896F62897F67785A97D8CAB7C8CAC
          4D8FCA4E90CA5882CF5B84D06A80CB6D80CC668AD1678BD16D8FD36F91D46F95
          D87083C37083C4798DC07B8EC27C8EC27F93C27198D97A99D87E9CD94AD4FF57
          DDFF59D6FF5AD7FF6EC0E96EC1E9FF40FF808ED08598C38599C38290D1879ED8
          889ED88DA2DA90A5DC9FA6DA94AFE29AB5E59FBBE9A1A8DBA0B2E1A4B7E49AC1
          EE9FC7F0A5C0EBBEC6E7BFC6E8C0C4E7C1C4E7CDD3EEC8D9F2CDDEF4D0D7EFD9
          E0F3DDE4F5000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000E9A1F69D0000005574524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00B0A107CF000000A24944415478
          DA63080182300FCF7010CD1012E2A59F989519ABE705E2B84714E465A467E787
          BA0339F6B9C9315191D1493976210C6E69F1BECE8E0E4E3E7109AE0CBAA9DEB6
          3A5A9ADA362E296A0CE2923C2CEC1C1C6CACBC2A120C820C4C9CDCC222425CCC
          8C020CAA0A32B28ACACA4A7232F2AA0C21FC6606462626C686A67C40A335A403
          FDFDFCFC03A434402E3017B30E0EB21235073B2724C4525DDD024403008A9525
          39188CDFC60000000049454E44AE426082}
        Thumb.PictureHot.Data = {
          89504E470D0A1A0A0000000D494844520000000C0000000D0803000000AAF77F
          7000000015744558744372656174696F6E2054696D650007D7070C1110271C34
          68920000000774494D4507D7070C111202B0073D27000000097048597300000B
          1200000B1201D2DD7EFC00000300504C54450039E5003AE7273FD7203AD80046
          EB084EED0751EE0755F30756F3045CF5055DF5095BF3095CF3144EE7144FE715
          50E21854E50A65F60B67F50E6BF50C74F90D75F91360F51362F5385CDF3D75E7
          3177F13278F14363E94263EA4369E3417AEA6675DB6876DD1984F81B86F8218D
          F9228EF92491F92492F93BB7FD3CB8FD5494F55595F65D9AF544BEFF45BFFF6A
          91E06A95E8609CF47798E7769CEA7897E7789DEA6DA0F76EA1F76CA4F370A6F3
          78A9F379A9F343C1FD45C2FD49C4FE49C5FEFF40FF8295E18194E88195E88798
          E480A0E781A2E986A4EC8EA1E38AA6ED80AEF283B0F388B9F38BBBF38FB8F291
          A3E598ADE69AAEE794B2ED96B3ED97B5EE98B4ED9EBBEF94B7F095B7F093BBF2
          9BBBF09EBEF1A1B6EFA3B7F0A0BCF196D1FC82F8FF8BF0FF8CF1FF8FFDFFAACC
          F4AEC9F2B0CBF3B4CEF3B1D3F5B7D9F8BDDEF8BBE6FCC1CEF5C2CFF5C5D4F4C6
          D5F4C2EBFCD3E0F7D7E3F7D8EBFADEF0FBE0EAFAE5EEFB000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000065D285AC0000004174524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0030
          55ECC7000000A14944415478DA63700081E05030C5E0E01066129B9B13631407
          E204799615E5E71596BA873830A49996A447478447A5161B3B30B86665447A5B
          5B79F9A564BA311814F85A1A6A6BE958F864EB334848F2B3B273F370B009C8CB
          313033B0700A0A0B0B71B130323128888B28A9A8A9AB2A8B8A293238F0E969D8
          D8D9DB6AEAF202ED71944E4A4E48484E947201B9C043C63C3EDE4CD61FEC1C07
          870027E740100D001FB024A7570A78620000000049454E44AE426082}
        Thumb.PictureDown.Data = {
          89504E470D0A1A0A0000000D494844520000000C0000000D0803000000AAF77F
          7000000015744558744372656174696F6E2054696D650007D7070C111209F2D4
          07DF0000000774494D4507D7070C11191F30F58835000000097048597300000B
          1200000B1201D2DD7EFC00000300504C544500004911145F1A18570003600007
          65000867050A6106096004106504106600146A00156B03166800156F00176F04
          1568001E74001F741317631D1E63002376002377002A7D002C7F293271283674
          2F37702C39784046544146544C52654F55664852684B546A4D596B4F5B6E535F
          6B535F6C536071616776636876003085003086003D8C003F8D00418F00429000
          4391004392004E9B004F9D1944871A44870364B20365B4046AB7046AB83A4F8F
          3B50900776C5067AC9077CCA0877C70878C80879C84F5E874155934357954A60
          854E619A58618359638356679651649C5B699A5C6A9C62709E64739F637AA765
          7DA96D7CA3747FA1757FA10F89D1108AD122A9ED22AAED2EB4F12EB5F27C8396
          7D84977080A57984A37B87A5FF40FF8994AE8395B28599B4889CB68D99B1899F
          B899A0B79AA1B885A3C489A9C9A3ABC1A6AEC3A7AFC3A4B3C8A9B9CC00000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000009B8B380E0000005F74524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00939A5F
          2C000000974944415478DA63880301155530C500C4B21A5191EA326A208E927C
          76565A6A66A69C3290A3989B1C1B1418139FA310C7E0969214EDEBEDE5139090
          E8CEE091E1EFE96C65E9E4EA97EEC82021C9C8CEC1CFC3C926242DC520CCC0CC
          2B20222AC8C7CCC0C410C7AAA5ADAB6FA0A7A3C902348DDBC8DCDADEC1CEC290
          0B64A9B86D584478A88D18C405C66621C1A62650E7C4C5B9B8802900724A2788
          E1C45F1B0000000049454E44AE426082}
        Thumb.PictureDisabled.Data = {
          89504E470D0A1A0A0000000D494844520000000C0000000D0803000000AAF77F
          7000000015744558744372656174696F6E2054696D650007D7070C111209F2D4
          07DF0000000774494D4507D7070C11191F30F58835000000097048597300000B
          1200000B1201D2DD7EFC00000300504C544500004911145F1A18570003600007
          65000867050A6106096004106504106600146A00156B03166800156F00176F04
          1568001E74001F741317631D1E63002376002377002A7D002C7F293271283674
          2F37702C39784046544146544C52654F55664852684B546A4D596B4F5B6E535F
          6B535F6C536071616776636876003085003086003D8C003F8D00418F00429000
          4391004392004E9B004F9D1944871A44870364B20365B4046AB7046AB83A4F8F
          3B50900776C5067AC9077CCA0877C70878C80879C84F5E874155934357954A60
          854E619A58618359638356679651649C5B699A5C6A9C62709E64739F637AA765
          7DA96D7CA3747FA1757FA10F89D1108AD122A9ED22AAED2EB4F12EB5F27C8396
          7D84977080A57984A37B87A5FF40FF8994AE8395B28599B4889CB68D99B1899F
          B899A0B79AA1B885A3C489A9C9A3ABC1A6AEC3A7AFC3A4B3C8A9B9CC00000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000009B8B380E0000005F74524E53FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00939A5F
          2C000000974944415478DA63880301155530C500C4B21A5191EA326A208E927C
          76565A6A66A69C3290A3989B1C1B1418139FA310C7E0969214EDEBEDE5139090
          E8CEE091E1EFE96C65E9E4EA97EEC82021C9C8CEC1CFC3C926242DC520CCC0CC
          2B20222AC8C7CCC0C410C7AAA5ADAB6FA0A7A3C902348DDBC8DCDADEC1CEC290
          0B64A9B86D584478A88D18C405C66621C1A62650E7C4C5B9B8802900724A2788
          E1C45F1B0000000049454E44AE426082}
        Thumb.Size = 13
        Thumb.Width = 12
        Thumb.Shape = tsPointer
        TickMark.Color = clBlack
        TickMark.ColorDisabled = clBlack
        TickMark.Font.Charset = DEFAULT_CHARSET
        TickMark.Font.Color = clWindowText
        TickMark.Font.Height = -11
        TickMark.Font.Name = 'Tahoma'
        TickMark.Font.Style = []
        TickMark.Style = tsNone
        TrackHint = False
        TrackLabel.Font.Charset = DEFAULT_CHARSET
        TrackLabel.Font.Color = clWindowText
        TrackLabel.Font.Height = -11
        TrackLabel.Font.Name = 'Tahoma'
        TrackLabel.Font.Style = []
        TrackLabel.Format = 'Pos: %d'
        Version = '1.6.3.3'
      end
    end
  end
  object ImageList3: TImageList
    Height = 24
    Width = 24
    Left = 472
    Top = 296
    Bitmap = {
      494C010105000900040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000003000000001002000000000000048
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000787FC30053808700378359002F7C4A002F883A00369F3600299A
      2900339F33004BAB4B007BC47B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000060B7
      6000037C0D00007F000000870000008F00000F9700000F9700000F9800000F90
      0000008F00000088000000800000068606000A8D0A0012920A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000088B
      080010AF000020D7000020D000001FC800001FC800001FC700001FBF000010B7
      000010AF000010A800000FA000000F9F00000090000000870000048504000C92
      0C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000991
      090010B8000020DF000020D7000020CF00001FC800001FC800001FC000001FB8
      000010B0000010AF000010A700000F9F00000F9F00000F980000008F00000181
      010086CB86000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000A93
      0A0010B0000020E0000020D8000020D700001FCF00001FC800001FC700001FC0
      000010B8000010B0000010A800000FA700000F9F00000F9F00000F9700000088
      00006EBA6E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D99
      0D000F9800002FE7000020E0000020D8000020D000001FCF00001FC800001FC7
      00001FBF000010B7000010B0000010A800000FA000000F9F00000F9F00000090
      00007EBF7E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000687060020E000002FE7000020DF000020D7000020D000001FC800001FC8
      00001FC000001FB8000010B7000010AF000010A700000FA000000F9F00000090
      0000969571000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014A214000FA700002FE800002FE0000020DF000020D7000020CF00001FC8
      00001FC800001FC000001FB8000010B0000010AF000010A700000F9F0000078A
      0700E1BBB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000159E15000FA7000020DF000020D700000FA700000F900F000F8F
      1000008F00000F9800000FA7000010B7000010B000000FA70000008800006EAA
      6200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000139C1300048C040020974F005FB0D0004098CF002F88
      BF003090C0004FA7CF0040A78F0000870F000F9700000080000030890D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000041C56E00147DA9003090CF0060BFF0007FC8
      FF007FC8FF005FB0EF002F88BF00309A8A0023A8230026B32600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000618DE00002708A000F70AF002F90CF007FC7FF0080CFFF008FD0
      FF0090D7FF0090D7FF0080CFFF001080AB001DAB270000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000025FA1001078B000006FA0006FC0FF007FC8FF008FCFFF0090D7
      FF008FD7FF007FD0FF008FD7FF0070C7F000196F940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002FC17B000F70AF001078B000107FB00070C0FF007FC8FF008FCFFF0090D7
      FF007FD0FF0060C8FF007FD0FF0090D7FF002F90CF008DAEB000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000023AA83001077AF001077AF002088C00070C0FF007FC8FF008FCFFF0090D7
      FF008FD7FF007FD0FF008FD7FF0090D7FF005FB0EF001E7BAC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000010936F001077AF000F77AF002F8FCF0070C0FF007FC7FF0080CFFF008FD0
      FF0090D7FF0090D7FF0090D7FF008FD0FF006FC0F0001077AF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000007F4F000F77AF001F7FB0001078B0006FBFFF0070C0FF007FC8FF0080CF
      FF008FCFFF008FCFFF008FCFFF0080CFFF0060C0FF000970A800A8C0BE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000028835D000F70AF002088C0001078B0003090D0006FC0FF0070C0FF007FC7
      FF007FC8FF007FC8FF007FC8FF007FC7FF0040A7E0000F70AF00B7CCCD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A8773000F6FA0002088C0003097CF001F87BF001F80BF0050AFEF0070C0
      FF0070C0FF0070C0FF0070C0FF006FBFFF001F7FBF00107FB000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D3AC81000068A0002088C0003098D0003FA0DF003FA0DF002088BF001077
      B0002087C0002F8FCF002F8FCF00107FB0003FA0D0000D6D9D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A8E9F000F77AF003098D00040A7DF004FAFE00050B8F0005FBF
      F00040A8DF001F87BF004FB0E00050B8F0002F97CF003E7B8000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E1BB91005A8E9F000F6FA0001F80BF003FA0DF005FBFF0005FBF
      F0004FB0E000208FCF0060C0FF0050B7EF000B6FA50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B79A780031707B0000679F002088C0003FA0
      DF001F87BF000F6FAF001F7FB00009738F00A6D2AF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006BAAB000207C
      9B002C849A0071A9AA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFEFDF00BFE0BF0090CA
      900090CA9000BFE0BF00DFEFDF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2DFE000D9D3C700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B0B0E1008080CF007F7FCE007F7FCE00796FBF009591BA00000000000000
      0000000000000000000000000000F0D2B300EAC09600F6E4D200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006F81B40058868E00537B83005D9274006BC06B0048B0
      480051B351006CBF6C008CCE8C00B4C28600CEBB840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B0D9B0003CA43C001FA82F0020B730002FBF
      3F0020B830001FAF2000109F1000309E3000B0D9B00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B4B89C00C66B6C00CF7F80008D75500049AC
      4400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002026AB004050D000204FDF002050DF008F8FD0000D089D00000000000000
      000000000000000000009F810F00EFA04000EF9F2000DF882000F0D2B3000000
      00000000000000000000000000000000000000000000000000000000000080CB
      80000A74350004920D000F980F001FA81F0020B820002FC02F0030C830003FCF
      3F003FD03F003FD03F0030C730002FBF2F001FAF1F001C9E100069B04F00DFF1
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000068B868003FB850005FDF700050E06F004FDF5F0040D8
      50003FD74F0030D0400030CF3F0020C7300010A710005FB45F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000839A6500CF787F00F0AFB000FFEFEF00F0D0D000CF78
      80008E87580041C1430000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002D33B8007F97FF003F80FF003F88FF00FFFFFF00100FA400000000000000
      0000000000006DA73200E0A75F00FFC76F00F0A82F00F0B85F00D2801E000000
      0000000000000000000000000000000000000000000000000000B0DEB0000F98
      0F001FAF1F002FBF2F003FD03F004FDF4F0050E7500050E8500050E8500050E8
      500050E8500050E8500050E750004FDF4F003FD03F0030C730001FAF1F000F98
      0F00C0E5C0000000000000000000000000000000000000000000000000000000
      0000000000006FBB770050CF700070E890005FE77F0050E06F004FDF5F0040D8
      50003FD74F0030D0400030CF3F002FC83F0020C72F0010AF1F006FBB6F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000879B6F00CF788000FFD7DF00F0B7BF00FFE8EF00FFE0E000FFE0
      E000F0D7DF00D07F80008984520040BA42000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002D33B8007F97FF003F80FF003F88FF00FFFFFF00100FA400000000000000
      000000000000CF774700F0C08000FFC76F00F0A82F00F0BF5F00DF882F00FCF6
      F00000000000000000000000000000000000000000000000000090D1900010A0
      100020B8200030C8300040D8400050E7500050E8500050E8500050E850002FC0
      2F003F809F003FD0400050E8500050E7500040D8400030C8300020B8200010A0
      10008FD18F000000000000000000000000000000000000000000000000000000
      0000D0E8D00030B7400070E89F0070E890005FE77F0050E06F004FDF5F0040D8
      50003FD74F0030D0400030CF3F002FC83F0020C72F001FC72F000F9F0F00D0E8
      D000000000000000000000000000000000000000000000000000000000000000
      0000CAB2A600D07F8000FFD7DF00FFD7DF00F0B8C000FFEFEF00FFDFE000FFE0
      E000FFE0E000FFE7EF0090A0D000B07F900083814D0032B93400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000272AAD007F97FF003F80FF003F88FF00FFFFFF00100FA400000000000000
      000000000000E7AB7E00F0C88F00FFC87000F0A82F00F0BF5F00DF8F3000D0E0
      C30000000000000000000000000000000000000000000000000080CB800010A0
      10002FBF2F003FCF3F004FDF4F0050E7500050E8500040D840002FC02F0050A0
      8F000000FF001F5FAF002FC02F004FE74F004FDF4F003FCF3F002FBF2F000FA0
      0F00B0DEB0000000000000000000000000000000000000000000000000000000
      000090CA900050D0600070E89F0070E890005FE77F0050E06F004FDF5F0040D8
      50003FD74F0030D0400030CF3F002FC83F0020C72F001FC72F0010AF1F0090CA
      900000000000000000000000000000000000000000000000000000000000E6C0
      C200D07F8000FFD8DF00FFD7DF00FFD7DF00FFBFC000FFEFF000FFD8DF00FFDF
      E000FFDFE000FFE0E0004098EF006FB8F0006FA0E000B08090007D78470095BC
      8900000000000000000000000000000000000000000000000000000000000000
      00002723A9007F97FF003F80FF003F88FF00FFFFFF00100FA400000000000000
      000000000000E7A87700F0C88F00FFC87000F0A82F00F0B85000DF90300099B7
      800000000000000000000000000000000000000000000000000080CB800010A0
      10002FBF2F003FCF3F004FDF4F004FE74F0030C7300040D7400050E750007F98
      D0000000FF00103FCF0050E850002FBF2F003FD03F003FCF3F002FBF2F000F9F
      0F00E0F2E0000000000000000000000000000000000000000000000000000000
      000080C3800050D76F0070E89F006FE890005FE77F0050E06F004FDF5F0040D8
      50003FD74F0030D0400030CF3F002FC83F0020C72F001FC72F0010B01F0080C3
      8000000000000000000000000000000000000000000000000000EED5D600D080
      8F00FFDFE000FFD8DF00FFD8DF00FFDFE0007FA85F00DFDFCF00FFD8DF00FFD8
      DF00FFD8E000FFDFE0004FA0EF005FBFFF006FC0FF007FA7DF00FFDFDF00D088
      8F00DAA0A400FAF4F40000000000000000000000000000000000000000000000
      00002D2FB4007F97FF003F80FF003F88FF00FFFFFF000E0EA200000000000000
      000000000000E7A77700F0C88F00FFC87000F0A82F00F0B85000DF903000D086
      860000000000000000000000000000000000000000000000000095BE86000F9F
      0F002FBF2F003FCF3F0040D8400020B8200050EF50005FF05F004FCF4F00A0A7
      F0000000FF003060BF005FF05F005FF75F0030C8300030C730002FBF2F001B96
      1600000000000000000000000000000000000000000000000000000000000000
      00007FC27F0050D76F0070E89F006FE890005FE77F0050E06F004FDF5F0040D8
      50003FD74F0030D0400030CF3F002FC83F0020C72F001FC72F0010B01F0080C3
      8000000000000000000000000000000000000000000000000000E6C0C200FFD7
      DF00FFDFE000FFDFE000FFE0E0007FC07000009F0F003FAF3000FFD8DF00FFD8
      DF00FFD8DF00FFD8E0005FA8A00070CFB0005FC0FF00709FDF00FFE7EF00FFE8
      EF00EFBFC000EBCBCD0000000000000000000000000000000000000000000000
      00002D2FB4007F97FF003F80FF003F88FF00FFFFFF00040B9800000000000000
      000000000000E7A47700F0C89000FFC87000F0A82F00F0B85000DF903000FCE0
      E000000000000000000000000000000000000000000000000000BBB89D000098
      000020B8200030C8300040D840002FBF2F005FF05F0050E8500090E09000AFAF
      FF000000FF00909FEF0040D740005FF05F002FBF2F0030C830001FAF1F007EBB
      7000000000000000000000000000000000000000000000000000000000000000
      00007FC27F0050D76F0070E89F006FE890005FE77F0050E06F004FDF5F0040D8
      50003FD74F0030D0400030CF3F002FC83F0020C72F001FC72F0010B01F0080C3
      8000000000000000000000000000000000000000000000000000E6C0C200FFD8
      DF00FFE0E000FFE0E00070C06F000FA7100030D060000FA71000BFD0AF00FFD7
      DF00FFD8DF00FFD8DF005FB0EF0070D7F0006FCFFF0070A0DF00FFE0E000FFE7
      EF00F0C8CF00EED5D60000000000000000000000000000000000000000000000
      00002D2FB4007F97FF003F80FF003F88FF00FFFFFF00010A9600000000000000
      000000000000E7A47600F0C89000FFCF7F00F0A82000F0B85000DF903000FCE0
      E0000000000000000000000000000000000000000000000000000000000040A7
      380010A7100030C7300030C8300030C830003FD03F003FC83F00E0F7E000AFA8
      FF000000FF00C0C0FF003FC03F0040D8400020B7200020B820000F9F0F00DDD7
      C500000000000000000000000000000000000000000000000000000000000000
      00007FC27F0050D76F0070E89F006FE890005FE77F0050E06F004FDF5F0040D8
      50003FD74F0030D0400030CF3F002FC83F0020C72F001FC72F0010B01F0080C3
      8000000000000000000000000000000000000000000000000000E6C0C200FFDF
      DF00FFE7EF0070BF6F000FA7100030D060003FDF6F0030CF5F000F9F0F00FFD8
      DF00FFD7DF00FFD7DF005F98DF0070D7FF0070D8FF0070A0DF00FFE0E000FFE0
      E000EFC7CF00EED5D60000000000000000000000000000000000000000000000
      00002D30B6007F97FF003F80FF003F88FF00FFFFFF00030D9B00000000000000
      000000000000E7A37600F0CF9000FFCF7F00F0A82000F0B84F00DF903F00FCD9
      D20000000000000000000000000000000000000000000000000000000000D0D1
      B60003900B0020B020001FAF1F0040D8400050E7500060CF6000F0F7F0003F38
      FF000000FF007070FF0080D0800050E850005FF05F0030C7300061941B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007FC27F0050D76F0070E89F006FE890005FE77F0050E06F004FDF5F0040D8
      50003FD74F0030D0400030CF3F002FC83F0020C72F001FC72F0010B01F0080C3
      8000000000000000000000000000000000000000000000000000E6C0C200F0DF
      DF006FBF6F000FA71F0030D760003FDF6F0040DF700040E070001FB8300070B8
      6F00FFD0DF00FFD7DF00F0D0DF009FA7DF00509FE0007F98DF00FFDFE000FFE0
      E000EFC7CF00EFD5D70000000000000000000000000000000000000000000000
      00001B2BA6007F97FF003F80FF003F88FF00FFFFFF00040E9C00000000000000
      000000000000E7A37600F0CF9000FFCF7F00F0A82000F0B74F00DF903F00FCD9
      D200000000000000000000000000000000000000000000000000000000000000
      0000163E87000F971F0020B720005FF05F004FDF4F00A0D8B0007FB0CF00307F
      BF002070BF005090C000BFD7DF003FC83F005FF05F002FBF2F00D2903B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007FC27F0050D76F0070E89F006FE890005FE77F0050E06F004FDF5F0040D8
      50003FD74F0030D0400030CF3F002FC8300020C72F001FC72F0010B01F0080C3
      8000000000000000000000000000000000000000000000000000DCB9B2004FAF
      40000FA81F0030D760003FDF6F0040DF700040E070004FE87F0040E07000009F
      0F00DFD7C000FFD0D000909FD000BFB0DF00EFCFDF00EFD0DF00FFD8E000FFDF
      E000EFC0C000E6D7D20000000000000000000000000000000000000000000000
      00000F2290007F97FF003F80FF003F88FF00FFFFFF00050F9D00000000000000
      000000000000E7A06F00F0CF9000FFCF8000F0A82000F0B74F00DF903F00FCD8
      D200000000000000000000000000000000000000000000000000000000000000
      0000000000007797EF000C9330002FB82F0020A05F002087BF0040AFE0005FC0
      FF005FC0FF004FB0EF002F90CF001F8870001FAF2000A6AC3700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007FC27F0050D76F0070E89F006FE890005FE77F0050E06F004FDF5F0040D8
      50003FD74F0030D0400030CF3F002FC8300020C72F001FC72F0010AF1F0080C3
      80000000000000000000000000000000000000000000F0F8F0003FB13F0010A8
      200030D760003FDF6F0040DF700040E070004FE87F004FE87F0050EF800030CF
      50002FA72F00FFD0D0005098E0007FC0F00060A0E000B0B0DF00FFD8DF00FFD8
      E000D1C2A5001FA41F00EFF8EF00000000000000000000000000000000000000
      00000C368F00101FB0001028BF001028BF004047BF000A1C9A00000000000000
      000000000000EDAC8800DF802000E0984F00E0974000E0984000D27E1C00FCD1
      D300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000075492002F90CF005FC0FF0050B7FF0050B0
      FF0050B0FF0050B7FF005FBFFF0040AFE0003879870000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007FC27F0050D76F0070E89F006FE8900070E88F00B0EFB000C0F0C000D0F0
      D000D0F0CF00BFEFBF009FE79F0040D04F0020C72F001FC7200010AF100080C3
      80000000000000000000000000000000000000000000C0E5C0000098000030D0
      5F003FDF6F0040DF700040E070004FE87F004FE87F0050EF800050EF800050F0
      800010A81F00AFC890005F98DF00BFE7FF00BFE0FF00AFA8D000FFD8DF00D0CF
      BF000F9800000F9E0F00C0E5C000000000000000000000000000000000000000
      000000000000CB9F6200EFBF8F00EFBF8000D69C61004BE08100000000000000
      000000000000B1C28800DF904000FFE8C000FFE8C000FFE8C000E79B5B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D2B491001D82AD005FC0FF0050B7FF005FB7FF005FB7
      FF005FB7FF005FB7FF005FB7FF005FB8FF003098D000A0B8B300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007FC27F0050D76F007FE8A000CFF7D000DFF7DF00BFEFBF00AFE8AF00A0E8
      A0009FE89F008FE78F008FE08000AFE7A00090DF8F0020C72F0010AF1F0080C3
      80000000000000000000000000000000000000000000000000006FC46F0010A8
      1F003FDF6F0040E070004FE77F004FE87F0050EF800050EF800050F0800050F0
      8F0040DF6F0000980000AFAFD0008097D0007098DF00B0B0D000AFC790000098
      00001FA41F00CFEBCF0000000000000000000000000000000000000000000000
      000000000000DF986000EFC89000EFC89000DF98600000000000000000000000
      0000000000000C950000DF904000FFEFCF00FFEFCF00FFEFCF00D39747000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000699198004FB0EF005FB7FF005FB7FF0060B8FF0060B8
      FF0060B8FF0060B8FF0060B8FF0060B8FF005FC0FF002C85B200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007FC27F005FD76F00DFF7DF00CFF0CF00BFEFBF00AFEFAF00A0E8A0009FE8
      9F0090E7900080E0800070DF70006FDF6F006FDF6F007FD7700010AF1F0080C3
      8000000000000000000000000000000000000000000000000000F0F8F0002FAA
      2F0020C040004FE77F004FE87F0050EF800050EF800050F0800050F08F0050F0
      8F005FF08F0020BF30005FB05000FFCFD000FFCFD00080B8700000980000189F
      1800E0F2E0000000000000000000000000000000000000000000000000000000
      000000000000DF986000EFC89000EFC89000DF975F0000000000000000000000
      000000000000988D1900EFC08F00FFEFD000FFEFD000FFEFD000E0A75F004593
      1500000000000000000000000000000000000000000000000000000000000000
      000000000000000000003B849C003FA0E00040A0E0005FB0F0006FBFFF006FBF
      FF006FBFFF006FBFFF006FBFFF006FBFFF0060BFFF002088C000D2A362000000
      0000000000000000000000000000000000000000000000000000000000000000
      000060B46000B0EFBF00CFF7CF00BFEFBF00B0EFB000A0E8A000A0E8A00090E7
      900080E0800070DF70006FDF6F0060DF60005FD85F004FD74F0040C040006FBB
      6F0000000000000000000000000000000000000000000000000000000000CFEB
      CF00009800003FD8600050EF800050EF800050F0800050F08F0050F08F005FF0
      8F005FF78F0050EF8000009F0F00C0C7A00050AF4F000098000014A3140068B8
      6800000000000000000000000000000000000000000000000000000000000000
      000000000000DF986000EFC89000EFC89000DF975F0000000000000000000000
      0000B39D3B00F0D7AF00FFF0DF00FFF0DF00FFF0DF00FFF0DF00FFF0D000D8A0
      5100F6E4D2000000000000000000000000000000000000000000000000000000
      00000000000000000000006FA00000679F0000679F0000679F002F88C0006FBF
      FF0070C0FF0070C0FF0070C0FF0070C0FF0070C0FF003098D000BFCDC3000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004FAC4F00CFF0CF00C0F0C000B0EFB000A0E8A000A0E8A00090E7900080E0
      80007FE07F006FDF6F006FDF6F005FD85F004FD74F0040D740004FC84F004FAC
      4F00000000000000000000000000000000000000000000000000000000000000
      000027A227000FA7100050EF800050F0800050F08F0050F08F005FF08F005FF7
      8F005FF78F005FF78F0020BF300000980000009800001CB31C00000000000000
      000000000000000000000000000000000000000000000000000000000000F9EE
      E700469A2B00DF986000F0C89F00EFC89000DF975F006FD27A006CE1850066EF
      8600E0B07000FFF7E000FFF7E000FFF7E000FFF7E000FFF7E000FFF7E000FFE7
      CF00E7B787000000000000000000000000000000000000000000000000000000
      000000000000000000000067A00000679F0000679F0000679F0000679F001078
      B00070C0FF007FC8FF007FC8FF007FC7FF007FC7FF003097D000D0DBD4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000090CA9000BFEFBF00B0EFB000A0E8A000A0E8A0009FE79F008FE78F007FE0
      7F006FDF6F006FDF6F005FD85F0050D7500040D7400040D740003FC73F0090CA
      9000000000000000000000000000000000000000000000000000000000000000
      00000000000024A8240020BF3F0050F08F0050F08F005FF08F005FF78F005FF7
      8F0050EF80001FB72F0000980000059C050024BB240000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7BB
      9F00DF975F00E0B78000F0CF9F00F0C89F00E0B07F00DF905F0097B7670066EF
      8600E0B07000FFF8EF00F0D8B000E0A76000E0A86000EFB88000FFF8EF00FFE8
      CF00E7B787000000000000000000000000000000000000000000000000000000
      0000000000000000000000679F0000679F0000679F0000679F0000679F000067
      9F001078B0007FC7F00080CFFF006FB8F0003090C0000068A000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0E8D0008FD78F00AFE8AF00A0E8A0009FE79F008FE78F007FE07F006FDF
      6F006FDF6F0060D8600050D7500040D7400040D7400030D030001FB01F00D0E8
      D000000000000000000000000000000000000000000000000000000000000000
      00000000000075CB75000A9D0A003FD75F005FF08F005FF78F005FF78F003FD7
      5F0000A00F000098000014A7140038CF38000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7BB
      9F00E0B08000F0CF9F00F0CF9F00F0CF9F00F0C89F00E0A770008FBF6B0048D1
      5900E0B07000FFF8EF00EFC790004AC3320048D03C00B3A54700FFF8EF00FFE8
      CF00E7B787000000000000000000000000000000000000000000000000000000
      000000000000000000002C7A9E0000679F0000679F0000679F0000679F000067
      9F0000679F001077AF002080BF000067A00000679F000B6B9900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077BB770090E09F009FE89F0090E7900080E0800070DF70006FDF
      6F0060D8600050D850004FD74F0040D740003FD03F002FC02F006FBB6F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000051C05A0000A00F0050EF7F0050EF800020B830000098
      0000069C060032C0320000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECCC
      B600E0A77000F0D0A000F0CF9F00F0CF9F00F0CF9F00DF9F600056A334000000
      0000C4913800FFFFEF00EFC7900051CA390000000000B4A64800FFFFEF00EFC0
      9000F3DBC3000000000000000000000000000000000000000000000000000000
      00000000000000000000B4B49E0000679F0000679F0000679F0000679F000067
      9F0000679F0000679F0000679F0000679F0000679F005A867300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005FB45F006FCF700080E0800070DF70006FDF6F0060DF
      60005FD85F004FD74F0040D740003FCF3F0020B720005FB45F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001CA51C0010AF1F000FA00F00009800001EAE
      1E0059D359000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEA17B00EFC09000F0CFA000F0CF9F00E0B07F007C892B00000000000000
      00007DB44100F0CF9F00EFC08F0050C3380000000000BFA45E00FFEFD000E4B6
      8100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000598D9E0000679F0000679F0000679F000067
      9F0000679F0000679F0000679F0000679F0004718F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B0D9B0003CA43C003FB83F004FC74F004FC8
      4F0040C7400030BF30001FAF2000309E3000B0D9B00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009BD19B0004980400089B080037B837000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBF6F200D5956500E0AF7F00E0A770009C85300000000000000000000000
      000000000000B3942F00E0A0500043982B0000000000E7B67B00E3AA6400FCF6
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005778600000679F0000679F000067
      9F0000679F0000679F000068A0001D7C6C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFEFDF00BFE0BF0090CA
      900090CA9000BFE0BF00DFEFDF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0E5C000D2E9D200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9EEE700F3DDCF00F3DDCF00C1DFB80000000000000000000000
      000000000000C0D9B400D8B78300FCF6F00000000000F0D2B300F6E4D2000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084BAB5003F92
      9800368C990078ADAB00CBB28400000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000300000000100010000000000400200000000000000000000
      000000000000000000000000FFFFFF00F801FF000000000000000000E0003F00
      0000000000000000E0000F000000000000000000E00007000000000000000000
      E00007000000000000000000E00007000000000000000000F000070000000000
      00000000F00007000000000000000000F8000F000000000000000000FC001F00
      0000000000000000FE003F000000000000000000F8007F000000000000000000
      F8007F000000000000000000F0003F000000000000000000F0003F0000000000
      00000000F0003F000000000000000000F0001F000000000000000000F0001F00
      0000000000000000F0003F000000000000000000F0003F000000000000000000
      F8003F000000000000000000F8007F000000000000000000FE007F0000000000
      00000000FFC3FF000000000000000000FF81FFFF3FFFF03E3FFC007FFE007FFE
      0FFFF03C1FE0000FFC003FFC03FFF0381FC00007F8001FF800FFF0380FC00007
      F0000FF0003FF0380FC00007F0000FE0000FF0380FC00007F0000FC00003F038
      0FC0000FF0000FC00003F0380FC0000FF0000FC00003F0380FE0000FF0000FC0
      0003F0380FE0001FF0000FC00003F0380FF0001FF0000FC00003F0380FF8003F
      F0000F800001F0380FFE007FF0000F800001F8381FFC003FF0000FC00003F878
      1FFC003FF0000FC00007F8780FFC001FF0000FE0000FF87007FC001FF0000FF0
      003FE00007FC001FF0000FF8007FE00007FC003FF0000FF800FFE00007FC003F
      F8001FFC03FFE01087FC003FFC003FFE07FFF0308FFE007FFE007FFE1FFFF078
      8FFF00FFFF81FFFF3FFFF8789FFFC1FF00000000000000000000000000000000
      000000000000}
  end
end
