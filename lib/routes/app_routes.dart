import 'package:flutter/material.dart';
import 'package:myapp/presentation/splash_screen/splash_screen.dart';
import 'package:myapp/presentation/face_detection_screen/face_detection_screen.dart';
import 'package:myapp/presentation/settings_screen/settings_screen.dart';
import 'package:myapp/presentation/menubar_screen/menubar_screen.dart';
import 'package:myapp/presentation/menu_screen/menu_screen.dart';
import 'package:myapp/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String faceDetectionScreen = '/face_detection_screen';

  static const String settingsScreen = '/settings_screen';

  static const String menubarScreen = '/menubar_screen';

  static const String menuScreen = '/menu_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    faceDetectionScreen: (context) => FaceDetectionScreen(),
    settingsScreen: (context) => SettingsScreen(),
    menubarScreen: (context) => MenubarScreen(),
    menuScreen: (context) => MenuScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
