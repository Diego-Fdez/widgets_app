//This code defines a class called ScreenUtil that is used to perform scaling calculations in a Flutter user interface.
// It provides methods for scaling sizes based on the width and height of the screen, as well as for scaling font sizes.

import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class ScreenUtil {
  late double screenWidth;
  late double screenHeight;

// Class Constructor Receiving Flutter Context
  ScreenUtil(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    screenWidth = mediaQuery.size.width;
    screenHeight = mediaQuery.size.height;
  }
}

// Method for scaling a size based on the width of the screen
double scaleWidth(double size, ScreenUtil screenUtil) {
  if (Platform.operatingSystem == 'android') {
    return (size * screenUtil.screenWidth / 375.0) - 2;
  } else {
    return size * screenUtil.screenWidth / 375.0;
  }
}

// Method for scaling a size based on the height of the screen
double scaleHeight(double size, ScreenUtil screenUtil) {
  if (Platform.operatingSystem == 'android') {
    return (size * screenUtil.screenWidth / 667.0) - 2;
  } else {
    return size * screenUtil.screenWidth / 667.0;
  }
}

// Method to scale a font size based on the width of the screen
double scaleSp(double size, ScreenUtil screenUtil) {
  if (Platform.operatingSystem == 'android') {
    return (size * screenUtil.screenWidth / 375.0) - 2;
  } else {
    return size * screenUtil.screenWidth / 375.0;
  }
}
