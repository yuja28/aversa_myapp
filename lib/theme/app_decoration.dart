import 'package:flutter/material.dart';
import 'package:myapp/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fill => BoxDecoration(
        color: appTheme.gray300,
      );
  static BoxDecoration get outline2 => BoxDecoration(
        color: appTheme.lightGreenA200,
        border: Border.all(
          color: appTheme.whiteA700,
          width: getHorizontalSize(
            10,
          ),
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration(
        color: appTheme.blueGray200,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.24),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              6.9,
              7.67,
            ),
          ),
        ],
      );
  static BoxDecoration get fill4 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get gradientnamegreen900namegreen502d => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            appTheme.green900,
            appTheme.green100C6,
            appTheme.green502d,
          ],
        ),
      );
  static BoxDecoration get fill1 => BoxDecoration(
        color: appTheme.blueGray50,
      );
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.5),
        border: Border.all(
          color: appTheme.black900,
          width: getHorizontalSize(
            2,
          ),
          strokeAlign: strokeAlignOutside,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fill3 => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fill2 => BoxDecoration(
        color: appTheme.indigo10019,
      );
  static BoxDecoration get txtOutline => BoxDecoration();
}

class BorderRadiusStyle {
  static BorderRadius customBorderTL40 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        40,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        40,
      ),
    ),
  );

  static BorderRadius roundedBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24,
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius roundedBorder50 = BorderRadius.circular(
    getHorizontalSize(
      50,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
