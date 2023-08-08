import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:myapp/presentation/event/event.dart';
import 'package:myapp/presentation/moreinfo/moreinfo.dart';
import 'package:myapp/presentation/splash_screen/splash_screen.dart';
import 'package:myapp/theme/theme_helper.dart';
import 'package:myapp/routes/app_routes.dart';
import 'package:myapp/presentation/frequestion/frequestion.dart';
import 'package:myapp/presentation/help&support/help&support.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);


  /// Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'myapp',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // 스플래시 스크린을 시작 화면으로 설정
      routes: {
        '/frequent_questions' : (context) => FrequentQuestionsPage(),
        '/more_information' : (context) => InformationPage(),
        '/add_event' : (context) => EventPage(),
        ...AppRoutes.routes,
      },
    );
  }
}
