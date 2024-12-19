object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmMain'
  ClientHeight = 480
  ClientWidth = 663
  Color = clWhite
  Constraints.MinHeight = 480
  Constraints.MinWidth = 640
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  StyleElements = []
  TextHeight = 15
  object headerPanel: TscGPPanel
    Left = 0
    Top = 0
    Width = 663
    Height = 25
    Align = alTop
    FluentUIOpaque = False
    TabOrder = 0
    BlurBackground = False
    BlurBackgroundAmount = 5
    BackgroundStyle = gppbsColor
    ContentMarginLeft = 0
    ContentMarginRight = 0
    ContentMarginTop = 0
    ContentMarginBottom = 0
    CustomImageIndex = -1
    DragForm = True
    DragTopForm = True
    DrawTextMode = scdtmGDIPlus
    FillGradientAngle = 90
    FillGradientBeginAlpha = 255
    FillGradientEndAlpha = 255
    FillGradientBeginColorOffset = 25
    FillGradientEndColorOffset = 25
    FrameWidth = 0
    FillColor = 12541696
    FillColorAlpha = 255
    FillColor2 = clNone
    FrameColor = clNone
    FrameColorAlpha = 255
    FrameRadius = 0
    ShowCaption = False
    CaptionGlowEffect.Enabled = False
    CaptionGlowEffect.Color = clBtnShadow
    CaptionGlowEffect.AlphaValue = 255
    CaptionGlowEffect.GlowSize = 7
    CaptionGlowEffect.Offset = 0
    CaptionGlowEffect.Intensive = True
    CaptionGlowEffect.StyleColors = True
    Color = clNone
    TransparentBackground = True
    StorePaintBuffer = True
    Sizeable = False
    WallpaperIndex = -1
    WordWrap = False
    object CloseBtn: TscGPGlyphButton
      Left = 631
      Top = 0
      Width = 32
      Height = 25
      Align = alRight
      FluentUIOpaque = False
      TabOrder = 0
      OnClick = CloseBtnClick
      Animation = False
      Badge.Color = clRed
      Badge.ColorAlpha = 255
      Badge.Font.Charset = DEFAULT_CHARSET
      Badge.Font.Color = clWhite
      Badge.Font.Height = -11
      Badge.Font.Name = 'Tahoma'
      Badge.Font.Style = [fsBold]
      Badge.Visible = False
      Caption = 'CloseBtn'
      CaptionCenterAlignment = False
      CanFocused = False
      CustomDropDown = False
      DrawTextMode = scdtmGDIPlus
      FluentLightEffect = False
      Layout = blGlyphLeft
      TransparentBackground = True
      ColorValue = clRed
      Options.NormalColor = 191
      Options.HotColor = 221
      Options.PressedColor = clWhite
      Options.FocusedColor = 191
      Options.DisabledColor = 191
      Options.NormalColor2 = clNone
      Options.HotColor2 = clNone
      Options.PressedColor2 = clNone
      Options.FocusedColor2 = clNone
      Options.DisabledColor2 = clNone
      Options.NormalColorAlpha = 255
      Options.HotColorAlpha = 255
      Options.PressedColorAlpha = 255
      Options.FocusedColorAlpha = 255
      Options.DisabledColorAlpha = 5
      Options.NormalColor2Alpha = 255
      Options.HotColor2Alpha = 255
      Options.PressedColor2Alpha = 255
      Options.FocusedColor2Alpha = 255
      Options.DisabledColor2Alpha = 255
      Options.FrameNormalColor = clNone
      Options.FrameHotColor = clNone
      Options.FramePressedColor = clNone
      Options.FrameFocusedColor = clNone
      Options.FrameDisabledColor = clNone
      Options.FrameWidth = 1
      Options.FrameNormalColorAlpha = 70
      Options.FrameHotColorAlpha = 100
      Options.FramePressedColorAlpha = 150
      Options.FrameFocusedColorAlpha = 255
      Options.FrameDisabledColorAlpha = 30
      Options.FontNormalColor = clWhite
      Options.FontHotColor = clWhite
      Options.FontPressedColor = clDarkred
      Options.FontFocusedColor = clWhite
      Options.FontDisabledColor = clSilver
      Options.ShapeFillGradientAngle = 90
      Options.ShapeFillGradientPressedAngle = -90
      Options.ShapeFillGradientColorOffset = 25
      Options.ShapeCornerRadius = 10
      Options.ShapeStyle = scgpRect
      Options.ShapeStyleLineSize = 0
      Options.ArrowSize = 9
      Options.ArrowAreaSize = 0
      Options.ArrowType = scgpatDefault
      Options.ArrowThickness = 2
      Options.ArrowThicknessScaled = False
      Options.ArrowNormalColor = clNone
      Options.ArrowHotColor = clNone
      Options.ArrowPressedColor = clNone
      Options.ArrowFocusedColor = clNone
      Options.ArrowDisabledColor = clNone
      Options.ArrowNormalColorAlpha = 200
      Options.ArrowHotColorAlpha = 255
      Options.ArrowPressedColorAlpha = 255
      Options.ArrowFocusedColorAlpha = 200
      Options.ArrowDisabledColorAlpha = 125
      Options.StyleColors = True
      Options.PressedHotColors = False
      GlyphOptions.NormalColor = clWhite
      GlyphOptions.HotColor = clWhite
      GlyphOptions.PressedColor = 191
      GlyphOptions.FocusedColor = clWhite
      GlyphOptions.DisabledColor = clWhite
      GlyphOptions.NormalColorAlpha = 200
      GlyphOptions.HotColorAlpha = 255
      GlyphOptions.PressedColorAlpha = 255
      GlyphOptions.FocusedColorAlpha = 255
      GlyphOptions.DisabledColorAlpha = 100
      GlyphOptions.Kind = scgpbgkClose
      GlyphOptions.Thickness = 2
      GlyphOptions.ThicknessScaled = False
      GlyphOptions.Size = 0
      GlyphOptions.StyleColors = True
      TextMargin = -1
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      SplitButton = False
      RepeatClick = False
      RepeatClickInterval = 100
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
      ToggleMode = False
    end
    object MinimizeBtn: TscGPGlyphButton
      Left = 599
      Top = 0
      Width = 32
      Height = 25
      Align = alRight
      FluentUIOpaque = False
      TabOrder = 1
      OnClick = MinimizeBtnClick
      Animation = False
      Badge.Color = clRed
      Badge.ColorAlpha = 255
      Badge.Font.Charset = DEFAULT_CHARSET
      Badge.Font.Color = clWhite
      Badge.Font.Height = -11
      Badge.Font.Name = 'Tahoma'
      Badge.Font.Style = [fsBold]
      Badge.Visible = False
      Caption = 'CloseBtn'
      CaptionCenterAlignment = False
      CanFocused = False
      CustomDropDown = False
      DrawTextMode = scdtmGDIPlus
      FluentLightEffect = False
      Layout = blGlyphLeft
      TransparentBackground = True
      ColorValue = clRed
      Options.NormalColor = 47325
      Options.HotColor = 1298420
      Options.PressedColor = clWhite
      Options.FocusedColor = 47325
      Options.DisabledColor = 47325
      Options.NormalColor2 = clNone
      Options.HotColor2 = clNone
      Options.PressedColor2 = clNone
      Options.FocusedColor2 = clNone
      Options.DisabledColor2 = clNone
      Options.NormalColorAlpha = 255
      Options.HotColorAlpha = 255
      Options.PressedColorAlpha = 255
      Options.FocusedColorAlpha = 255
      Options.DisabledColorAlpha = 5
      Options.NormalColor2Alpha = 255
      Options.HotColor2Alpha = 255
      Options.PressedColor2Alpha = 255
      Options.FocusedColor2Alpha = 255
      Options.DisabledColor2Alpha = 255
      Options.FrameNormalColor = clNone
      Options.FrameHotColor = clNone
      Options.FramePressedColor = clNone
      Options.FrameFocusedColor = clNone
      Options.FrameDisabledColor = clNone
      Options.FrameWidth = 1
      Options.FrameNormalColorAlpha = 70
      Options.FrameHotColorAlpha = 100
      Options.FramePressedColorAlpha = 150
      Options.FrameFocusedColorAlpha = 255
      Options.FrameDisabledColorAlpha = 30
      Options.FontNormalColor = clWhite
      Options.FontHotColor = clWhite
      Options.FontPressedColor = 47325
      Options.FontFocusedColor = clWhite
      Options.FontDisabledColor = clSilver
      Options.ShapeFillGradientAngle = 90
      Options.ShapeFillGradientPressedAngle = -90
      Options.ShapeFillGradientColorOffset = 25
      Options.ShapeCornerRadius = 10
      Options.ShapeStyle = scgpRect
      Options.ShapeStyleLineSize = 0
      Options.ArrowSize = 9
      Options.ArrowAreaSize = 0
      Options.ArrowType = scgpatDefault
      Options.ArrowThickness = 2
      Options.ArrowThicknessScaled = False
      Options.ArrowNormalColor = clNone
      Options.ArrowHotColor = clNone
      Options.ArrowPressedColor = clNone
      Options.ArrowFocusedColor = clNone
      Options.ArrowDisabledColor = clNone
      Options.ArrowNormalColorAlpha = 200
      Options.ArrowHotColorAlpha = 255
      Options.ArrowPressedColorAlpha = 255
      Options.ArrowFocusedColorAlpha = 200
      Options.ArrowDisabledColorAlpha = 125
      Options.StyleColors = True
      Options.PressedHotColors = False
      GlyphOptions.NormalColor = clWhite
      GlyphOptions.HotColor = clWhite
      GlyphOptions.PressedColor = 47325
      GlyphOptions.FocusedColor = clWhite
      GlyphOptions.DisabledColor = clWhite
      GlyphOptions.NormalColorAlpha = 200
      GlyphOptions.HotColorAlpha = 255
      GlyphOptions.PressedColorAlpha = 255
      GlyphOptions.FocusedColorAlpha = 255
      GlyphOptions.DisabledColorAlpha = 100
      GlyphOptions.Kind = scgpbgkMinus
      GlyphOptions.Thickness = 2
      GlyphOptions.ThicknessScaled = False
      GlyphOptions.Size = 0
      GlyphOptions.StyleColors = True
      TextMargin = -1
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      SplitButton = False
      RepeatClick = False
      RepeatClickInterval = 100
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
      ToggleMode = False
    end
    object scImage1: TscImage
      Left = 0
      Top = 0
      Width = 25
      Height = 25
      Align = alLeft
      FluentUIOpaque = False
      TabOrder = 2
      CustomImages = scImageCollection1
      CustomImageIndex = 0
      DragForm = True
      DragTopForm = True
      StyleKind = scpsPanel
      ShowCaption = False
      BorderStyle = scpbsNone
      WallpaperIndex = -1
      LightBorderColor = clBtnHighlight
      ShadowBorderColor = clNone
      CaptionGlowEffect.Enabled = False
      CaptionGlowEffect.Color = clBtnShadow
      CaptionGlowEffect.AlphaValue = 255
      CaptionGlowEffect.GlowSize = 7
      CaptionGlowEffect.Offset = 0
      CaptionGlowEffect.Intensive = True
      CaptionGlowEffect.StyleColors = True
      Color = 12541696
      Caption = 'scImage1'
      StorePaintBuffer = False
      WordWrap = False
      Proportional = True
      Stretch = True
      ExplicitTop = -6
    end
    object scGPLabel1: TscGPLabel
      Left = 25
      Top = 0
      Width = 142
      Height = 25
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      FluentUIOpaque = False
      TabOrder = 3
      DragForm = True
      DragTopForm = True
      DrawTextMode = scdtmGDIPlus
      ContentMarginLeft = 5
      ContentMarginRight = 5
      ContentMarginTop = 5
      ContentMarginBottom = 5
      DisabledFontColor = clNone
      FrameWidth = 0
      FillColor = clNone
      FillColorAlpha = 20
      FillColor2 = clNone
      FillColor2Alpha = 255
      FillGradientAngle = 0
      FrameColor = clNone
      FrameColorAlpha = 40
      FrameRadius = 5
      GlowEffect.Enabled = False
      GlowEffect.Color = clBtnShadow
      GlowEffect.AlphaValue = 255
      GlowEffect.GlowSize = 7
      GlowEffect.Offset = 0
      GlowEffect.Intensive = True
      GlowEffect.StyleColors = True
      AutoSize = True
      Caption = 'Notification Log Viewer'
    end
  end
  object menuPanel: TscGPPanel
    Left = 0
    Top = 25
    Width = 663
    Height = 112
    Align = alTop
    FluentUIOpaque = False
    TabOrder = 1
    BlurBackground = False
    BlurBackgroundAmount = 5
    BackgroundStyle = gppbsColor
    ContentMarginLeft = 0
    ContentMarginRight = 0
    ContentMarginTop = 0
    ContentMarginBottom = 0
    CustomImageIndex = -1
    DragForm = False
    DragTopForm = True
    DrawTextMode = scdtmGDIPlus
    FillGradientAngle = 90
    FillGradientBeginAlpha = 255
    FillGradientEndAlpha = 255
    FillGradientBeginColorOffset = 25
    FillGradientEndColorOffset = 25
    FrameWidth = 0
    FillColor = 12219933
    FillColorAlpha = 255
    FillColor2 = clNone
    FrameColor = clNone
    FrameColorAlpha = 255
    FrameRadius = 0
    ShowCaption = False
    CaptionGlowEffect.Enabled = False
    CaptionGlowEffect.Color = clBtnShadow
    CaptionGlowEffect.AlphaValue = 255
    CaptionGlowEffect.GlowSize = 7
    CaptionGlowEffect.Offset = 0
    CaptionGlowEffect.Intensive = True
    CaptionGlowEffect.StyleColors = True
    Caption = 'menuPanel'
    TransparentBackground = True
    StorePaintBuffer = True
    Sizeable = False
    WallpaperIndex = -1
    WordWrap = False
    object ToolPager: TscGPToolPager
      Left = 0
      Top = 0
      Width = 663
      Height = 112
      Align = alTop
      FluentUIOpaque = False
      TabOrder = 0
      Color = clBtnFace
      CanFocused = False
      DrawTextMode = scdtmGDIPlus
      EnableDragReorderTabs = False
      TabsBGFillColor = 12219933
      TabsBGFillColorAlpha = 255
      TransparentBackground = False
      FrameWidth = 0
      FrameScaleWidth = False
      FrameColor = clNone
      FrameColorAlpha = 80
      FrameBGFillColor = clNone
      FrameBGFillColorAlpha = 255
      BorderStyle = scgpbsNone
      MouseWheelSupport = True
      ShowFocusRect = True
      ShowInActiveTab = False
      ShowCloseButtons = False
      TabsLeftOffset = 70
      TabsRightOffset = 15
      TabsTopOffset = 0
      TabGlowEffect.Enabled = False
      TabGlowEffect.Color = clHighlight
      TabGlowEffect.AlphaValue = 255
      TabGlowEffect.GlowSize = 7
      TabGlowEffect.Offset = 0
      TabGlowEffect.Intensive = True
      TabGlowEffect.StyleColors = True
      TabGlowEffect.HotColor = clNone
      TabGlowEffect.PressedColor = clNone
      TabGlowEffect.FocusedColor = clNone
      TabGlowEffect.PressedGlowSize = 7
      TabGlowEffect.PressedAlphaValue = 255
      TabGlowEffect.States = [scsFocused]
      TabOptions.NormalColor = 12219933
      TabOptions.ActiveColor = 13526063
      TabOptions.MouseInColor = 14408667
      TabOptions.FocusedColor = clBtnFace
      TabOptions.NormalColorAlpha = 70
      TabOptions.ActiveColorAlpha = 255
      TabOptions.MouseInColorAlpha = 40
      TabOptions.FocusedColorAlpha = 255
      TabOptions.FrameNormalColor = clNone
      TabOptions.FrameActiveColor = clNone
      TabOptions.FrameMouseInColor = clNone
      TabOptions.FrameFocusedColor = clNone
      TabOptions.FrameWidth = 1
      TabOptions.FrameNormalColorAlpha = 50
      TabOptions.FrameActiveColorAlpha = 80
      TabOptions.FrameMouseInColorAlpha = 60
      TabOptions.FrameFocusedColorAlpha = 80
      TabOptions.FontNormalColor = clWhite
      TabOptions.FontActiveColor = clWhite
      TabOptions.FontMouseInColor = clWhite
      TabOptions.FontFocusedColor = clWhite
      TabOptions.TabStyle = gptsLine
      TabOptions.LineWidth = 0
      TabOptions.ShapeFillGradientAngle = 90
      TabOptions.GradientColorOffset = 30
      TabOptions.ShapeCornerRadius = 5
      TabOptions.StyleColors = True
      TabCloseButtonOptions.NormalColor = clBtnText
      TabCloseButtonOptions.HotColor = clRed
      TabCloseButtonOptions.PressedColor = clRed
      TabCloseButtonOptions.DisabledColor = clBtnText
      TabCloseButtonOptions.NormalColorAlpha = 0
      TabCloseButtonOptions.HotColorAlpha = 220
      TabCloseButtonOptions.PressedColorAlpha = 200
      TabCloseButtonOptions.DisabledColorAlpha = 0
      TabCloseButtonOptions.GlyphNormalColor = clBtnText
      TabCloseButtonOptions.GlyphHotColor = clWhite
      TabCloseButtonOptions.GlyphPressedColor = clWhite
      TabCloseButtonOptions.GlyphDisabledColor = clBtnText
      TabCloseButtonOptions.GlyphNormalColorAlpha = 200
      TabCloseButtonOptions.GlyphHotColorAlpha = 255
      TabCloseButtonOptions.GlyphPressedColorAlpha = 200
      TabCloseButtonOptions.GlyphDisabledColorAlpha = 100
      TabCloseButtonOptions.ShapeKind = scgptcbRounded
      TabCloseButtonOptions.StyleColros = True
      TabSpacing = 10
      TabMargin = 10
      ScrollButtonWidth = 20
      ScrollButtonArrowColor = clBtnText
      ScrollButtonArrowThickness = 2
      ScrollButtonColor = clBtnText
      ScrollButtonTransparent = False
      TabHeight = 30
      Tabs = <
        item
          Page = FiltersPagerTab
          Visible = True
          Enabled = True
          ImageIndex = -1
          Caption = 'Filters'
          CustomOptions.NormalColor = clBtnShadow
          CustomOptions.ActiveColor = clBtnFace
          CustomOptions.MouseInColor = clBtnShadow
          CustomOptions.FocusedColor = clBtnFace
          CustomOptions.NormalColorAlpha = 70
          CustomOptions.ActiveColorAlpha = 230
          CustomOptions.MouseInColorAlpha = 40
          CustomOptions.FocusedColorAlpha = 255
          CustomOptions.FrameNormalColor = clBtnText
          CustomOptions.FrameActiveColor = clBtnText
          CustomOptions.FrameMouseInColor = clBtnText
          CustomOptions.FrameFocusedColor = clBtnText
          CustomOptions.FrameWidth = 2
          CustomOptions.FrameNormalColorAlpha = 50
          CustomOptions.FrameActiveColorAlpha = 80
          CustomOptions.FrameMouseInColorAlpha = 60
          CustomOptions.FrameFocusedColorAlpha = 80
          CustomOptions.FontNormalColor = clBtnText
          CustomOptions.FontActiveColor = clBtnText
          CustomOptions.FontMouseInColor = clBtnText
          CustomOptions.FontFocusedColor = clBtnText
          CustomOptions.TabStyle = gptsShape
          CustomOptions.LineWidth = 0
          CustomOptions.ShapeFillGradientAngle = 90
          CustomOptions.GradientColorOffset = 30
          CustomOptions.ShapeCornerRadius = 5
          CustomOptions.StyleColors = True
          CustomGlowEffect.Enabled = False
          CustomGlowEffect.Color = clHighlight
          CustomGlowEffect.AlphaValue = 255
          CustomGlowEffect.GlowSize = 7
          CustomGlowEffect.Offset = 0
          CustomGlowEffect.Intensive = True
          CustomGlowEffect.StyleColors = True
          CustomGlowEffect.HotColor = clNone
          CustomGlowEffect.PressedColor = clNone
          CustomGlowEffect.FocusedColor = clNone
          CustomGlowEffect.PressedGlowSize = 7
          CustomGlowEffect.PressedAlphaValue = 255
          CustomGlowEffect.States = [scsFocused]
          CustomFrameColor = clNone
          CustomFrameColorAlpha = 255
          ShowCloseButton = True
          UseCustomOptions = False
        end
        item
          Page = scGPToolPagerPage2
          Visible = True
          Enabled = True
          ImageIndex = -1
          Caption = 'Tools'
          CustomOptions.NormalColor = clBtnShadow
          CustomOptions.ActiveColor = clBtnFace
          CustomOptions.MouseInColor = clBtnShadow
          CustomOptions.FocusedColor = clBtnFace
          CustomOptions.NormalColorAlpha = 70
          CustomOptions.ActiveColorAlpha = 230
          CustomOptions.MouseInColorAlpha = 40
          CustomOptions.FocusedColorAlpha = 255
          CustomOptions.FrameNormalColor = clBtnText
          CustomOptions.FrameActiveColor = clBtnText
          CustomOptions.FrameMouseInColor = clBtnText
          CustomOptions.FrameFocusedColor = clBtnText
          CustomOptions.FrameWidth = 2
          CustomOptions.FrameNormalColorAlpha = 50
          CustomOptions.FrameActiveColorAlpha = 80
          CustomOptions.FrameMouseInColorAlpha = 60
          CustomOptions.FrameFocusedColorAlpha = 80
          CustomOptions.FontNormalColor = clBtnText
          CustomOptions.FontActiveColor = clBtnText
          CustomOptions.FontMouseInColor = clBtnText
          CustomOptions.FontFocusedColor = clBtnText
          CustomOptions.TabStyle = gptsShape
          CustomOptions.LineWidth = 0
          CustomOptions.ShapeFillGradientAngle = 90
          CustomOptions.GradientColorOffset = 30
          CustomOptions.ShapeCornerRadius = 5
          CustomOptions.StyleColors = True
          CustomGlowEffect.Enabled = False
          CustomGlowEffect.Color = clHighlight
          CustomGlowEffect.AlphaValue = 255
          CustomGlowEffect.GlowSize = 7
          CustomGlowEffect.Offset = 0
          CustomGlowEffect.Intensive = True
          CustomGlowEffect.StyleColors = True
          CustomGlowEffect.HotColor = clNone
          CustomGlowEffect.PressedColor = clNone
          CustomGlowEffect.FocusedColor = clNone
          CustomGlowEffect.PressedGlowSize = 7
          CustomGlowEffect.PressedAlphaValue = 255
          CustomGlowEffect.States = [scsFocused]
          CustomFrameColor = clNone
          CustomFrameColorAlpha = 255
          ShowCloseButton = True
          UseCustomOptions = False
        end>
      TabIndex = 1
      ActivePage = scGPToolPagerPage2
      FreeOnClose = False
      StorePaintBuffer = True
      ExplicitTop = 3
      object scGPGlyphButton3: TscGPGlyphButton
        Left = 0
        Top = 0
        Width = 70
        Height = 30
        Align = alCustom
        FluentUIOpaque = False
        TabOrder = 0
        Animation = False
        Badge.Color = clRed
        Badge.ColorAlpha = 255
        Badge.Font.Charset = DEFAULT_CHARSET
        Badge.Font.Color = clWhite
        Badge.Font.Height = -11
        Badge.Font.Name = 'Tahoma'
        Badge.Font.Style = [fsBold]
        Badge.Visible = False
        Caption = 'Files'
        CaptionCenterAlignment = True
        CanFocused = False
        CustomDropDown = False
        DrawTextMode = scdtmGDIPlus
        FluentLightEffect = True
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = 12219933
        Options.HotColor = 14408667
        Options.PressedColor = 13526063
        Options.FocusedColor = clNone
        Options.DisabledColor = clNone
        Options.NormalColor2 = clNone
        Options.HotColor2 = clNone
        Options.PressedColor2 = clNone
        Options.FocusedColor2 = clNone
        Options.DisabledColor2 = clNone
        Options.NormalColorAlpha = 255
        Options.HotColorAlpha = 255
        Options.PressedColorAlpha = 255
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
        Options.NormalColor2Alpha = 255
        Options.HotColor2Alpha = 255
        Options.PressedColor2Alpha = 255
        Options.FocusedColor2Alpha = 255
        Options.DisabledColor2Alpha = 255
        Options.FrameNormalColor = clNone
        Options.FrameHotColor = clNone
        Options.FramePressedColor = clNone
        Options.FrameFocusedColor = clNone
        Options.FrameDisabledColor = clBtnText
        Options.FrameWidth = 2
        Options.FrameNormalColorAlpha = 70
        Options.FrameHotColorAlpha = 100
        Options.FramePressedColorAlpha = 150
        Options.FrameFocusedColorAlpha = 255
        Options.FrameDisabledColorAlpha = 30
        Options.FontNormalColor = clWhite
        Options.FontHotColor = 12219933
        Options.FontPressedColor = clWhite
        Options.FontFocusedColor = clBtnText
        Options.FontDisabledColor = clBtnShadow
        Options.ShapeFillGradientAngle = 90
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeFillGradientColorOffset = 25
        Options.ShapeCornerRadius = 10
        Options.ShapeStyle = scgpRect
        Options.ShapeStyleLineSize = 0
        Options.ArrowSize = 9
        Options.ArrowAreaSize = 0
        Options.ArrowType = scgpatDefault
        Options.ArrowThickness = 2
        Options.ArrowThicknessScaled = False
        Options.ArrowNormalColor = clNone
        Options.ArrowHotColor = clNone
        Options.ArrowPressedColor = clNone
        Options.ArrowFocusedColor = clNone
        Options.ArrowDisabledColor = clNone
        Options.ArrowNormalColorAlpha = 200
        Options.ArrowHotColorAlpha = 255
        Options.ArrowPressedColorAlpha = 255
        Options.ArrowFocusedColorAlpha = 200
        Options.ArrowDisabledColorAlpha = 125
        Options.StyleColors = True
        Options.PressedHotColors = False
        GlyphOptions.NormalColor = clWhite
        GlyphOptions.HotColor = 12219933
        GlyphOptions.PressedColor = clWhite
        GlyphOptions.FocusedColor = clNone
        GlyphOptions.DisabledColor = clNone
        GlyphOptions.NormalColorAlpha = 200
        GlyphOptions.HotColorAlpha = 255
        GlyphOptions.PressedColorAlpha = 255
        GlyphOptions.FocusedColorAlpha = 255
        GlyphOptions.DisabledColorAlpha = 100
        GlyphOptions.Kind = scgpbgkDetails
        GlyphOptions.Thickness = 2
        GlyphOptions.ThicknessScaled = False
        GlyphOptions.Size = 15
        GlyphOptions.StyleColors = True
        TextMargin = -1
        ScaleFrameWidth = False
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ShowCaption = True
        SplitButton = False
        RepeatClick = False
        RepeatClickInterval = 100
        DropDownMenu = pmFiles
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        ShowFocusRect = False
        Down = False
        GroupIndex = 0
        AllowAllUp = False
        ToggleMode = False
      end
      object FiltersPagerTab: TscGPToolPagerPage
        Left = 0
        Top = 30
        Width = 663
        Height = 82
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        FluentUIOpaque = False
        TabOrder = 1
        Visible = False
        CanScroll = False
        FillGradientAngle = 90
        FillGradientBeginAlpha = 255
        FillGradientEndAlpha = 255
        FillGradientBeginColorOffset = 25
        FillGradientEndColorOffset = 25
        FillColor = 13526063
        FillColorAlpha = 255
        FillColor2 = clNone
        Color = 13526063
        BGStyleKind = scgspbPanel
        ScrollButtonWidth = 17
        CustomImageIndex = -1
        WallpaperIndex = -1
        HotScroll = False
        AutoSize = False
        MouseWheelSupport = False
        ScrollType = scstHorizontal
        ScrollOffset = 0
        ScrollTimerInterval = 50
        ScrollButtonArrowWidth = 2
        ScrollButtonArrowColor = clBtnText
        ScrollButtonColor = clBtnText
        ScrollButtonBGColor = clBtnFace
        ScrollButtonTransparent = False
        HorzScrollDirection = scgspsdLeftToRight
        VertScrollDirection = scgspsdTopToBottom
        TouchScroll = False
        StorePaintBuffer = False
      end
      object scGPToolPagerPage2: TscGPToolPagerPage
        Left = 0
        Top = 30
        Width = 663
        Height = 82
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        FluentUIOpaque = False
        TabOrder = 2
        CanScroll = True
        FillGradientAngle = 255
        FillGradientBeginAlpha = 255
        FillGradientEndAlpha = 255
        FillGradientBeginColorOffset = 25
        FillGradientEndColorOffset = 25
        FillColor = 13526063
        FillColorAlpha = 255
        FillColor2 = clNone
        BGStyleKind = scgspbFormBackground
        ScrollButtonWidth = 17
        CustomImageIndex = -1
        WallpaperIndex = -1
        HotScroll = False
        AutoSize = False
        MouseWheelSupport = False
        ScrollType = scstHorizontal
        ScrollOffset = 0
        ScrollTimerInterval = 50
        ScrollButtonArrowWidth = 2
        ScrollButtonArrowColor = clBtnText
        ScrollButtonColor = clBtnText
        ScrollButtonBGColor = clBtnFace
        ScrollButtonTransparent = False
        HorzScrollDirection = scgspsdLeftToRight
        VertScrollDirection = scgspsdTopToBottom
        TouchScroll = False
        StorePaintBuffer = False
      end
    end
  end
  object ContentPanel: TscGPPanel
    Left = 0
    Top = 137
    Width = 663
    Height = 319
    Align = alClient
    FluentUIOpaque = False
    TabOrder = 2
    BlurBackground = False
    BlurBackgroundAmount = 5
    BackgroundStyle = gppbsColor
    ContentMarginLeft = 0
    ContentMarginRight = 0
    ContentMarginTop = 0
    ContentMarginBottom = 0
    CustomImageIndex = -1
    DragForm = False
    DragTopForm = True
    DrawTextMode = scdtmGDIPlus
    FillGradientAngle = 90
    FillGradientBeginAlpha = 255
    FillGradientEndAlpha = 255
    FillGradientBeginColorOffset = 25
    FillGradientEndColorOffset = 25
    FrameWidth = 0
    FillColor = clWhite
    FillColorAlpha = 255
    FillColor2 = clNone
    FrameColor = clBtnShadow
    FrameColorAlpha = 255
    FrameRadius = 0
    ShowCaption = False
    CaptionGlowEffect.Enabled = False
    CaptionGlowEffect.Color = clBtnShadow
    CaptionGlowEffect.AlphaValue = 255
    CaptionGlowEffect.GlowSize = 7
    CaptionGlowEffect.Offset = 0
    CaptionGlowEffect.Intensive = True
    CaptionGlowEffect.StyleColors = True
    Color = clWhite
    TransparentBackground = True
    StorePaintBuffer = True
    Sizeable = False
    WallpaperIndex = -1
    WordWrap = False
    object contentScrollBox: TscScrollBox
      Left = 0
      Top = 0
      Width = 663
      Height = 319
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      Align = alClient
      BevelEdges = []
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 0
      UseWheelForScrolling = True
      WallpaperIndex = -1
      CustomBackgroundImageIndex = -1
      FullUpdate = True
      FluentUIOpaque = False
      StorePaintBuffer = False
      MouseWheelSupport = False
      BackgroundStyle = scsbsFormBackground
    end
  end
  object statusBarPanel: TscGPPanel
    Left = 0
    Top = 456
    Width = 663
    Height = 24
    Align = alBottom
    FluentUIOpaque = False
    TabOrder = 3
    BlurBackground = False
    BlurBackgroundAmount = 5
    BackgroundStyle = gppbsColor
    ContentMarginLeft = 0
    ContentMarginRight = 0
    ContentMarginTop = 0
    ContentMarginBottom = 0
    CustomImageIndex = -1
    DragForm = False
    DragTopForm = True
    DrawTextMode = scdtmGDIPlus
    FillGradientAngle = 90
    FillGradientBeginAlpha = 255
    FillGradientEndAlpha = 255
    FillGradientBeginColorOffset = 25
    FillGradientEndColorOffset = 25
    FrameWidth = 0
    FillColor = 15724527
    FillColorAlpha = 255
    FillColor2 = clNone
    FrameColor = clBtnShadow
    FrameColorAlpha = 255
    FrameRadius = 0
    ShowCaption = False
    CaptionGlowEffect.Enabled = False
    CaptionGlowEffect.Color = clBtnShadow
    CaptionGlowEffect.AlphaValue = 255
    CaptionGlowEffect.GlowSize = 7
    CaptionGlowEffect.Offset = 0
    CaptionGlowEffect.Intensive = True
    CaptionGlowEffect.StyleColors = True
    Caption = 'statusBarPanel'
    TransparentBackground = True
    StorePaintBuffer = True
    Sizeable = False
    WallpaperIndex = -1
    WordWrap = False
    object pbRead: TscGPProgressBar
      Left = 0
      Top = 0
      Width = 663
      Height = 5
      Align = alTop
      FluentUIOpaque = False
      TabOrder = 0
      Visible = False
      Vertical = False
      AnimationMode = False
      Active = False
      TransparentBackground = True
      FrameAlpha = 125
      ProgressAlpha = 255
      FrameColor = clBtnShadow
      ProgressColor = clLime
      MinValue = 0
      MaxValue = 100
      Value = 0
    end
  end
  object scStyledForm1: TscStyledForm
    FluentUIBackground = scfuibNone
    FluentUIAcrylicColor = clBtnFace
    FluentUIAcrylicColorAlpha = 100
    FluentUIBorder = True
    FluentUIInactiveAcrylicColorOpaque = False
    DWMClientRoundedCornersType = scDWMRoundedCornersDefault
    DWMClientShadow = True
    DWMClientShadowHitTest = True
    DropDownForm = False
    DropDownAnimation = False
    DropDownBorderColor = clBtnShadow
    StylesMenuSorted = False
    ShowStylesMenu = False
    StylesMenuCaption = 'Styles'
    ClientWidth = 0
    ClientHeight = 0
    ShowHints = True
    Buttons = <>
    ButtonFont.Charset = DEFAULT_CHARSET
    ButtonFont.Color = clWindowText
    ButtonFont.Height = -12
    ButtonFont.Name = 'Segoe UI'
    ButtonFont.Style = []
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -12
    CaptionFont.Name = 'Segoe UI'
    CaptionFont.Style = []
    CaptionAlignment = taLeftJustify
    InActiveClientColor = clWindow
    InActiveClientColorAlpha = 100
    InActiveClientBlurAmount = 5
    Tabs = <>
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clWindowText
    TabFont.Height = -12
    TabFont.Name = 'Segoe UI'
    TabFont.Style = []
    ShowButtons = True
    ShowTabs = True
    TabIndex = 0
    TabsPosition = sctpLeft
    ShowInactiveTab = True
    CaptionWallpaperIndex = -1
    CaptionWallpaperInActiveIndex = -1
    CaptionWallpaperLeftMargin = 1
    CaptionWallpaperTopMargin = 1
    CaptionWallpaperRightMargin = 1
    CaptionWallpaperBottomMargin = 1
    Left = 608
    Top = 24
  end
  object pmFiles: TPopupMenu
    Left = 528
    Top = 23
    object Open1: TMenuItem
      Caption = 'Open'
      OnClick = Open1Click
    end
    object Close1: TMenuItem
      Caption = 'Close'
      OnClick = Close1Click
    end
  end
  object scImageCollection1: TscImageCollection
    Images = <
      item
        BitmapOptions.LeftMargin = 0
        BitmapOptions.TopMargin = 0
        BitmapOptions.RightMargin = 0
        BitmapOptions.BottomMargin = 0
        BitmapOptions.AlphaBlend = False
        BitmapOptions.AlphaBlendBorder = False
        BitmapOptions.AlphaBlendCorners = False
        BitmapOptions.Stretch = True
        BitmapOptions.StretchBorder = False
        BitmapOptions.DrawOnlyBorder = False
        BitmapOptions.DrawInClipRect = False
        BitmapOptions.ContentLeftMargin = 0
        BitmapOptions.ContentRightMargin = 0
        BitmapOptions.ContentTopMargin = 0
        BitmapOptions.ContentBottomMargin = 0
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
          00100804000000B5FA37EA00000002624B474400FF878FCCBF00000009704859
          7300002E2300002E230178A53F760000000774494D4507E80C13052036ED6A55
          EF000001414944415478DA6D914B28446114C77FDF35437994641285B09BB585
          B250169A1DB250CC624C59C8C2B36C58282C3C9AB2B4304ACA4A62A164295958
          2A0B164291BCD2849AB9F773EE37736F7731E7F4D579FCFACEF97714BE6928E5
          9837E268E55795697816E684770609B43DA09A7209CAD8E5933153FAE1CB00A6
          5D479A2839891AB079917A886B92BC5200A658E2906E196193A5820CE7F431C7
          661E68E2941B99DCCF1A111C9E99E08C035AE9E1D105E659605AA01003CCF2C7
          8AC40E31D6596459E92847B48938078B07F6F92541B3C96AB9A357E9217664B6
          6757F2DAFD2C4B42E938DB3EF0C18528E814D11E900C02F74C8A444D23297945
          80942C3B2CC01EAB8C17039E98915F909537A80F02691198B76F2E65FB0E2A0B
          798E11A5BBD8A24612CB788944B688744FA4E51AA34A8769A14A1AAE5BE67CDA
          B82D9EE1F61FED286B9CC8F70E460000002574455874646174653A6372656174
          6500323032342D31322D31395430353A33323A35312B30303A3030759C0D2700
          00002574455874646174653A6D6F6469667900323032342D31322D3139543035
          3A33323A35312B30303A303004C1B59B0000002874455874646174653A74696D
          657374616D7000323032342D31322D31395430353A33323A35342B30303A3030
          01ECBBE30000000049454E44AE426082}
        DrawStyle = idsCenter
        TileOffsetX = 0
        TileOffsetY = 0
      end>
    Left = 544
    Top = 289
  end
end