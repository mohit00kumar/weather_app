import 'package:flutter/material.dart';

// S(mediaQueryData: MediaQuery.of(context)); <<< Include this line  to initialize in the file you wanna use these sizes

class S {
  S({required MediaQueryData mediaQueryData}) {
    height = mediaQueryData.size.height;
    rawWidth = mediaQueryData.size.width;
    width = mediaQueryData.size.width > 500
        ? (393 * mediaQueryData.size.height) / 852
        : mediaQueryData.size.width;
    topInset = mediaQueryData.viewInsets.top;
    bottomInset = mediaQueryData.viewInsets.bottom;
    topPadding = mediaQueryData.padding.top;
    bottomPadding = mediaQueryData.padding.bottom;
    aspectRatio = mediaQueryData.size.aspectRatio;
    croppedHeight = mediaQueryData.size.height -
        mediaQueryData.padding.top -
        mediaQueryData.padding.bottom -
        kToolbarHeight;
    setSizeVariants();
  }

  static late double height;
  static late double width;
  static late double rawWidth;
  static late double topInset;
  static late double bottomInset;
  static late double topPadding;
  static late double bottomPadding;
  static late double aspectRatio;
  static late double croppedHeight;
  static late double bh;
  static late double bw;

// Font sizes
  static late double fSm; //14
  static late double fMd; //16
  static late double fLg; //18
  static late double fXl; //24
  static late double fXxl; //32

  //Padding and Margin
  static late double pXxs; //4
  static late double pXs; //6
  static late double pSm; //8
  static late double pMd; //16
  static late double pLg; //24
  static late double pXl; //32

  // Default spacing between sections
  static late double defaultSpace; //24
  static late double spaceBtwItems; //16
  static late double spaceBtwSections; //32
  static late double spaceBtwInputFields; //16

  // Icon sizes
  static late double iconXs; //12
  static late double iconSm; //16
  static late double iconMd; //24
  static late double iconLg; //32

  // Button sizes
  static late double buttonHeight; //18
  static late double buttonRadius; //12
  static late double buttonWidth; //120
  static late double buttonElevation; //4

  // AppBar height
  static late double appBarHeight; //56

  // Image sizes
  static late double imageThumbSize; //80

  // Border radius
  static late double borderRadiusSm; //4
  static late double borderRadiusMd; //8
  static late double borderRadiusLg; //12

  // Divider height
  static late double dividerHeight; //1.0

  // Product item dimensions
  static late double productImageSize; //120
  static late double productImageRadius; //16
  static late double productItemHeight; //160

  // Input field
  static late double inputFieldRadius; //12

  // Card sizes
  static late double cardRadiusLg; //16
  static late double cardRadiusMd; //12
  static late double cardRadiusSm; // 10
  static late double cardRadiusXs; //6
  static late double cardElevation; //2

  // Image carousel height
  static late double imageCarouselHeight; //200

  // Loading indicator size
  static late double loadingIndicatorSize; //36

  // Grid view spacing
  static late double gridViewSpacing; //16

  setSizeVariants() {
    // Font sizes
    fSm = width * 0.0332; //14
    fMd = width * 0.038; //16
    fLg = width * 0.0427; //18
    fXl = width * 0.057; //24
    fXxl = width * 0.076; //32

    //Padding and Margin

    pXxs = width * 0.0095; //4   and 0.00475 for 2
    pXs = width * 0.0142; //6
    pSm = width * 0.019; //8
    pMd = width * 0.038; //16
    pLg = width * 0.057; //24
    pXl = width * 0.076; //32

    // Default spacing between sections
    defaultSpace = width * 0.057; //24
    spaceBtwItems = width * 0.038; //16
    spaceBtwSections = width * 0.076; //32
    spaceBtwInputFields = width * 0.038; //16

    // Icon sizes
    iconXs = width * 0.0284; //12
    iconSm = width * 0.038; //16
    iconMd = width * 0.057; //24
    iconLg = width * 0.076; //32

    // Button sizes
    buttonHeight = width * 0.0427; //18
    buttonRadius = width * 0.0284; //12
    buttonWidth = width * 0.285; //120
    buttonElevation = width * 0.0095; //4

    // AppBar height
    appBarHeight = width * 0.133; //56

    // Image sizes
    imageThumbSize = width * 0.19; //80

    // Border radius
    borderRadiusSm = width * 0.0095; //4
    borderRadiusMd = width * 0.019; //8
    borderRadiusLg = width * 0.0284; //12

    // Divider height
    dividerHeight = width * 0.00237; //1.0

    // Product item dimensions
    productImageSize = width * 0.285; //120
    productImageRadius = width * 0.038; //16
    productItemHeight = width * 0.38; //160

    // Input field
    inputFieldRadius = width * 0.0284; //12

    // Card sizes
    cardRadiusLg = width * 0.038; //16
    cardRadiusMd = width * 0.0284; //12
    cardRadiusSm = width * 0.0237; // 10
    cardRadiusXs = width * 0.0142; //6
    cardElevation = width * 0.00475; //2

    // Image carousel height
    imageCarouselHeight = width * 0.475; //200

    // Loading indicator size
    loadingIndicatorSize = width * 0.0855; //36

    // Grid view spacing
    gridViewSpacing = width * 0.038; //16

    bh = croppedHeight - width * 2;
    bw = width - width * 0.38;
  }
}