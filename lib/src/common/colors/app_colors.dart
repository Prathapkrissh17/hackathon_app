import 'package:flutter/material.dart';

/// Defines the color palette for the App UI Kit.
abstract class AppColors {
  /// Black
  static const Color black = Color(0xFF000000);

  /// White
  static const Color white = Color(0xFFFFFFFF);

  /// Transparent
  static const Color transparent = Color(0x00000000);

  /// The grey primary color and swatch.
  static const MaterialColor grey = Colors.grey;

  /// BADGE Colors
  ///
  /// Used in work type chips
  ///
  /// The brand red color
  static const Color badgeRed = Color(0xFFFF6968);

  static const Color badgePurple = Color(0xFF8865FF);

  static const Color badgeGreen = Color(0xFF96DA45);

  /// Color schemes
  static const Color backgroundDark = Color(0xff0d0d0d);
  static const Color backgroundLight = Color(0xffffffff);

  static const Color errorContainerDark = Color(0xff8c1d18);
  static const Color errorContainerLight = Color(0xfff9dedc);

  static const Color errorDark = Color(0xfff2b8b5);
  static const Color errorLight = Color(0xffb3261e);

  static const Color inversePrimaryDark = Color(0xff6750a4);
  static const Color inversePrimaryLight = Color(0xffd0bcff);

  static const Color inverseSurfaceDark = Color(0xff181818);
  static const Color inverseSurfaceLight = Color(0xffe9e9e9);

  static const Color onBackgroundDark = Color(0xff808080);
  static const Color onBackgroundLight = Color(0xff1d1b20);

  static const Color onErrorContainerDark = Color(0xfff9dedc);
  static const Color onErrorContainerLight = Color(0xff410e0b);

  static const Color onErrorDark = Color(0xff601410);
  static const Color onErrorLight = Color(0xffffffff);

  static const Color onInverseSurfaceDark = Color(0xfffcfbfb);
  static const Color onInverseSurfaceLight = Color(0xff252525);

  static const Color onPrimaryContainerDark = Color(0xffeaddff);
  static const Color onPrimaryContainerLight = Color(0xff4b4b87);

  static const Color onPrimaryDark = Color(0xff000000);
  static const Color onPrimaryLight = Color(0xffffffff);

  static const Color onSecondaryContainerDark = Color(0xff999999);
  static const Color onSecondaryContainerLight = Color(0xff4d4d4d);

  static const Color onSecondaryDark = Color(0xff332d41);
  static const Color onSecondaryLight = Color(0xffffffff);

  static const Color onSurfaceContainerDark = Color(0xffe7e7e7);
  static const Color onSurfaceContainerLight = Color(0xff383838);

  static const Color onSurfaceDark = Color(0xffebebeb);
  static const Color onSurfaceLight = Color(0xff4d4d4d);

  static const Color onSurfaceVariantDark = Color(0xffafafaf);
  static const Color onSurfaceVariantLight = Color(0xff7f7f7f);

  static const Color onTertiaryContainerDark = Color(0xffffd8e4);
  static const Color onTertiaryContainerLight = Color(0xff31111d);

  static const Color onTertiaryDark = Color(0xff492532);
  static const Color onTertiaryLight = Color(0xffffffff);

  static const Color outlineDark = Color(0xff4d4d4d);
  static const Color outlineLight = Color(0xff79747e);

  static const Color outlineVariantDark = Color(0xff646464);
  static const Color outlineVariantLight = Color(0xffc0c0c0);

  static const Color primaryDark = Color(0xffd0bcff);
  static const Color primaryLight = Color(0xff4b4b87);

  static const Color primaryContainerDark = Color(0xff4b4b87);
  static const Color primaryContainerLight = Color(0xffeaddff);

  static const Color scrimDark = Color(0xff000000);
  static const Color scrimLight = Color(0xff000000);

  static const Color secondaryContainerDark = Color(0xff1a1a1a);
  static const Color secondaryContainerLight = Color(0xfff2f2f2);

  static const Color secondaryDark = Color(0xffccc2dc);
  static const Color secondaryLight = Color(0xff625b71);

  static const Color selectionContainerDark = Color(0xFF383641);
  static const Color selectionContainerLight = Color(0xFFDDDDE7);

  static const Color shadowDark = Color(0xff000000);
  static const Color shadowLight = Color(0xFF000000);

  static const Color surfaceContainerDark = Color(0xff292929);
  static const Color surfaceContainerLight = Color(0xffffffff);

  static const Color surfaceDark = Color(0xff1f1f1f);
  static const Color surfaceLight = Color(0xfff6f6f6);

  static const Color surfaceTintDark = Color(0xFFC2C1FF);
  static const Color surfaceTintLight = Color(0xFF5555A9);

  static const Color surfaceVariantDark = Color(0xff1c1c1c);
  static const Color surfaceVariantLight = Color(0xffeaeaea);

  static const Color tertiaryContainerDark = Color(0xff633b48);
  static const Color tertiaryContainerLight = Color(0xffffd8e4);

  static const Color tertiaryDark = Color(0xffefb8c8);
  static const Color tertiaryLight = Color(0xff7d5260);

  /// The red primary color and swatch.
  static const MaterialColor red = Colors.red;

  /// The light blue color.
  static const MaterialColor lightBlue = Colors.lightBlue;

  /// BRAND Colors
  ///
  /// Used in Chips
  ///
  /// The brand red color
  static const Color brandRed = Color(0xFFFF6968);

  /// The brand green color
  static const Color brandGreen = Color(0xFF96DA45);

  /// The brand blue color
  static const Color brandBlue = Color(0xFF2AC3FF);

  /// The brand orange color
  static const Color brandOrange = Color(0xFFFFA07B);

  /// LABEL Colors
  ///
  /// Used in Icons and chips
  ///
  /// The label green color.
  static const MaterialColor labelGreen = Colors.green;

  /// The label light blue color.
  static const MaterialColor labelLightBlue = Colors.lightBlue;

  /// The label deep purple color.
  static const MaterialColor labelDeepPurple = Colors.deepPurple;

  /// The label red color.
  static const MaterialColor labelRed = Colors.red;

  /// The label yellow color.
  static const MaterialColor labelYellow = Colors.yellow;

  /// The label brown color.
  static const MaterialColor labelBrown = Colors.brown;

  /// The label lime color.
  static const MaterialColor labelLime = Colors.lime;

  /// The label pink color.
  static const MaterialColor labelPink = Colors.pink;

  /// The label orange color.
  static const MaterialColor labelOrange = Colors.orange;

  static const MaterialColor primary = MaterialColor(0xFF4B4B87, <int, Color>{
    50: Color(0xFFF6F6F9),
    100: Color(0xFFEDEDF3),
    200: Color(0xFFDBDBE7),
    300: Color(0xFFC9C9DB),
    400: Color(0xFFB7B7CF),
    500: Color(0xFFA5A5C3),
    600: Color(0xFF9393B7),
    700: Color(0xFF8181AB),
    800: Color(0xFF6F6F9F),
    900: Color(0xFF4B4B87),
  });

  /// The secondary color of application.
  static const MaterialColor secondary = MaterialColor(0xFF963F6E, <int, Color>{
    50: Color(0xFFFFECF3),
    100: Color(0xFFFFD8E9),
    200: Color(0xFFFFAFD6),
    300: Color(0xFFF28ABE),
    400: Color(0xFFD371A3),
    500: Color(0xFFB55788),
    600: Color(0xFF963F6E),
    700: Color(0xFF7A2756),
    800: Color(0xFF5F0F40),
    900: Color(0xFF3D0026),
  });

  /// The orange color.
  static const Color orange = Color(0xFFFB8B24);

  /// The secondary color of application.
  static const MaterialColor neutral = MaterialColor(0xFF1A1A1A, <int, Color>{
    50: Color(0xFFF2F2F2),
    100: Color(0xFFE5E5E5),
    200: Color(0xFFCCCCCC),
    300: Color(0xFFB3B2B2),
    400: Color(0xFF999999),
    500: Color(0xFF8C8C8C),
    600: Color(0xFF666666),
    700: Color(0xFF4D4D4D),
    800: Color(0xFF333333),
    900: Color(0xFF1A1A1A),
  });

  static const MaterialColor redRipple = MaterialColor(0xFF1A1A1A, <int, Color>{
    100: Color(0xFFFF6F6E),
    300: Color(0xFFFF5D5C),
    500: Color(0xFFFF5454),
    700: Color(0xFFFF5858),
    800: Color(0xFFFF5252),
    900: Color(0xFFFF4D4D),
  });

  static const MaterialColor blueRipple =
      MaterialColor(0xFF1A1A1A, <int, Color>{
    100: Color(0xFF00CBFF),
    300: Color(0xFF00C8FE),
    500: Color(0xFF00C3F9),
    700: Color(0xFF00B9EC),
    800: Color(0xFF00B4E7),
    900: Color(0xFF00B2E3),
  });

  static const MaterialColor greenRipple =
      MaterialColor(0xFF1A1A1A, <int, Color>{
    100: Color(0xFF88DD71),
    300: Color(0xFF71DA6F),
    500: Color(0xFF6ED56B),
    700: Color(0xFF6DCA5E),
    800: Color(0xFF67C65A),
    900: Color(0xFF69C356),
  });

  static const MaterialColor orangeRipple =
      MaterialColor(0xFF1A1A1A, <int, Color>{
    100: Color(0xFFFF906A),
    300: Color(0xFFFF8058),
    500: Color(0xFFFF774F),
    700: Color(0xFFFF7A53),
    800: Color(0xFFFF754E),
    900: Color(0xFFFF7149),
  });

  ///
  static const Color forestGreen = Color(0xFF3B715A); // 3B715A
  static const Color deepSeaBlue = Color(0xFF1B546A); // 1B546A
  static const Color darkRed = Color(0xFF7F2022); // 7F2022
  static const Color oliveGreen = Color(0xFF7F6A20); // 7F6A20
  static const Color tealGreen = Color(0xFF4F9778); // 4F9778
  static const Color oceanBlue = Color(0xFF236E8B); // 236E8B
  static const Color crimsonRed = Color(0xFFB82E31); // B82E31
  static const Color goldenYellow = Color(0xFFB8992E); // B8992E
  static const Color mintGreen = Color(0xFF68B092); // 68B092
  static const Color skyBlue = Color(0xFF2B88AB); // 2B88AB
  static const Color coralPink = Color(0xFFDB7072); // DB7072
  static const Color sandyBeige = Color(0xFFD6BB5C); // D6BB5C
  static const Color seafoamGreen = Color(0xFF8AC2AA); // 8AC2AA
  static const Color aquaBlue = Color(0xFF58B3D5); // 58B3D5
  static const Color rosePink = Color(0xFFE5999A); // E5999A
  static const Color paleYellow = Color(0xFFE0CC85); // E0CC85
  static const Color darkCyan = Color(0xFF008465); // 008465
  static const Color darkMagenta = Color(0xFF008465); // 008465

  /// Material Color Generator Function with Customizable Shades Factor
  static MaterialColor generateShades(Color primaryColor) {
    return MaterialColor(
      // 0xFF1A1A1A,
      primaryColor.value,
      <int, Color>{
        100: _calculateLighterColor(primaryColor, 0.14), // Slightly lighter
        300: _calculateLighterColor(primaryColor, 0.08), // Moderately lighter
        500: Color.lerp(primaryColor, Colors.grey, 0.2)!, // Primary color
        700: _calculateDarkerColor(primaryColor, 0.08), // Slightly darker
        800: _calculateDarkerColor(primaryColor, 0.16), // Moderately darker
        900: _calculateDarkerColor(primaryColor, 0.24), // Even darker
      },
    );
  }

  /// Lighter Color Generator Function with Customizable Shades Factor
  static Color _calculateLighterColor(Color color, double factor) {
    return Color.lerp(
        Color.fromRGBO(
          color.red + ((255 - color.red) * factor).round(),
          color.green + ((255 - color.green) * factor).round(),
          color.blue + ((255 - color.blue) * factor).round(),
          1,
        ),
        Colors.grey,
        0.2)!;
  }

  /// Darker Color Generator Function with Customizable Shades Factor
  static Color _calculateDarkerColor(Color color, double factor) {
    return Color.lerp(
        Color.fromRGBO(
          (color.red * (1 - factor)).round(),
          (color.green * (1 - factor)).round(),
          (color.blue * (1 - factor)).round(),
          1,
        ),
        Colors.grey,
        0.2)!;
  }
}
