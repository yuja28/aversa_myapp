import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Title text style
  static get titleSmallRobotoBlack900 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallRobotoGray500 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w800,
      );
  // Headline text style
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get notoSans {
    return copyWith(
      fontFamily: 'Noto Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get megrim {
    return copyWith(
      fontFamily: 'Megrim',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
