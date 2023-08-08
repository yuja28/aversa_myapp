import 'package:flutter/material.dart';
import 'package:myapp/core/app_export.dart';
import 'package:myapp/presentation/face_detection_screen/face_detection_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 얼굴 인식 화면으로 이동하는 함수
    void goToFaceDetectionScreen() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FaceDetectionScreen()),
      );
    }

    // 스플래시 화면 노출 후 2초 후에 얼굴 인식 화면으로 이동
    Future.delayed(Duration(seconds: 2), goToFaceDetectionScreen);

    // 스플래시 화면 디자인 반환
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.green900,
                appTheme.green100C6,
                appTheme.green502d,
              ],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAversawebsitefaviconwhite,
                  height: getVerticalSize(203),
                  width: getHorizontalSize(197),
                ),
                Container(
                  margin: getMargin(bottom: 5),
                  decoration: AppDecoration.txtOutline,
                  child: Text(
                    "AVERSA".toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.displaySmall!.copyWith(
                      letterSpacing: getHorizontalSize(2.45),
                      fontFamily: 'Megrim',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}