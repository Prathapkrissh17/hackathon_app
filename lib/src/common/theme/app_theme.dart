import 'package:flutter/material.dart';
import 'package:hackathon_app/src/common/colors/app_colors.dart';
import 'package:hackathon_app/src/common/spacing/app_spacing.dart';
import 'package:hackathon_app/src/common/typography/app_text_styles.dart';

/// {@template app_theme}
/// The Default App [ThemeData].
/// {@endtemplate}
class AppTheme {
  /// {@macro app_theme}
  const AppTheme();

  /// Default `ThemeData` for App UI.
  ThemeData get themeData {
    return ThemeData(
      textTheme: _textTheme,
      appBarTheme: appBarTheme,
      navigationBarTheme: _navigationBarTheme,
      bottomSheetTheme: _bottomSheetTheme,
      chipTheme: _chipTheme,
      colorScheme: _colorScheme,
      dividerTheme: _dividerTheme,
      floatingActionButtonTheme: _floatingActionButtonTheme,
      scaffoldBackgroundColor: _scaffoldBackground,
      tabBarTheme: _tabBarTheme,
      useMaterial3: true,
      extensions: const <ThemeExtension<dynamic>>[
        ColorSchemeExtend(
          surfaceContainer: AppColors.surfaceContainerLight,
          onSurfaceContainer: AppColors.onSurfaceContainerLight,
          selectionContainer: AppColors.selectionContainerLight,
        ),
      ],
    );
  }

  TextTheme get _textTheme => appTextTheme;

  static TextTheme appTextTheme = TextTheme(
    displayLarge: AppTextTheme.displayLarge,
    displayMedium: AppTextTheme.displayMedium,
    displaySmall: AppTextTheme.displaySmall,
    headlineLarge: AppTextTheme.headlineLarge,
    headlineMedium: AppTextTheme.headlineMedium,
    headlineSmall: AppTextTheme.headlineSmall,
    titleLarge: AppTextTheme.titleLarge,
    titleMedium: AppTextTheme.titleMedium,
    titleSmall: AppTextTheme.titleSmall,
    bodyLarge: AppTextTheme.bodyLarge,
    bodyMedium: AppTextTheme.bodyMedium,
    bodySmall: AppTextTheme.bodySmall,
    labelLarge: AppTextTheme.labelLarge,
    labelMedium: AppTextTheme.labelMedium,
    labelSmall: AppTextTheme.labelSmall,
  ).apply(
    bodyColor: AppColors.white,
    displayColor: AppColors.white,
    decorationColor: AppColors.white,
  );

  Color get _scaffoldBackground => AppColors.surfaceLight;

  ColorScheme get _colorScheme {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primaryLight,
      onPrimary: AppColors.onPrimaryLight,
      primaryContainer: AppColors.primaryContainerLight,
      onPrimaryContainer: AppColors.onPrimaryContainerLight,
      secondary: AppColors.secondaryLight,
      onSecondary: AppColors.onSecondaryLight,
      secondaryContainer: AppColors.secondaryContainerLight,
      onSecondaryContainer: AppColors.onSecondaryContainerLight,
      tertiary: AppColors.tertiaryLight,
      onTertiary: AppColors.onTertiaryLight,
      tertiaryContainer: AppColors.tertiaryContainerLight,
      onTertiaryContainer: AppColors.onTertiaryContainerLight,
      error: AppColors.errorLight,
      errorContainer: AppColors.errorContainerLight,
      onError: AppColors.onErrorLight,
      onErrorContainer: AppColors.onErrorContainerLight,
      background: AppColors.backgroundLight,
      onBackground: AppColors.onBackgroundLight,
      outline: AppColors.outlineLight,
      outlineVariant: AppColors.outlineVariantLight,
      onInverseSurface: AppColors.onInverseSurfaceLight,
      inverseSurface: AppColors.inverseSurfaceLight,
      inversePrimary: AppColors.inversePrimaryLight,
      shadow: AppColors.shadowLight,
      surfaceTint: AppColors.surfaceTintLight,
      scrim: AppColors.scrimLight,
      surface: AppColors.surfaceLight,
      onSurface: AppColors.onSurfaceLight,
      surfaceVariant: AppColors.surfaceVariantLight,
      onSurfaceVariant: AppColors.onSurfaceVariantLight,
    );
  }

  FloatingActionButtonThemeData get _floatingActionButtonTheme {
    return const FloatingActionButtonThemeData(
      shape: StadiumBorder(),
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.white,
    );
  }

  static AppBarTheme get appBarTheme {
    return const AppBarTheme(
      centerTitle: false,
      scrolledUnderElevation: 0,
      color: Colors.black,
    );
  }

  DividerThemeData get _dividerTheme {
    return const DividerThemeData(
      color: AppColors.outlineVariantLight,
      space: AppSpacing.lg,
      thickness: AppSpacing.xxxs / 2,
      indent: AppSpacing.lg,
      endIndent: AppSpacing.lg,
    );
  }

  BottomSheetThemeData get _bottomSheetTheme {
    return const BottomSheetThemeData(
      clipBehavior: Clip.hardEdge,
      constraints: BoxConstraints(
        maxWidth: 600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppSpacing.lg),
          topRight: Radius.circular(AppSpacing.lg),
        ),
      ),
    );
  }

  TabBarTheme get _tabBarTheme {
    return TabBarTheme(
      labelColor: _colorScheme.primary,
      labelPadding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: 0,
      ),
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 3,
          color: _colorScheme.primary,
        ),
      ),
      labelStyle: _textTheme.titleSmall,
      dividerColor: Colors.transparent,
      unselectedLabelColor: AppColors.onSurfaceVariantLight,
      indicatorSize: TabBarIndicatorSize.label,
    );
  }

  NavigationBarThemeData get _navigationBarTheme {
    return const NavigationBarThemeData(
      elevation: 5.0,
      backgroundColor: AppColors.surfaceContainerLight,
      surfaceTintColor: AppColors.surfaceContainerLight,
    );
  }
}

ChipThemeData get _chipTheme {
  return const ChipThemeData(
    shape: StadiumBorder(),
    backgroundColor: Colors.transparent,
  );
}

/// {@template app_dark_theme}
/// Dark Mode App [ThemeData].
/// {@endtemplate}
class AppDarkTheme extends AppTheme {
  /// {@macro app_dark_theme}
  const AppDarkTheme();

  @override
  ThemeData get themeData => super.themeData.copyWith(
        extensions: <ThemeExtension<dynamic>>[
          const ColorSchemeExtend(
            surfaceContainer: AppColors.surfaceContainerDark,
            onSurfaceContainer: AppColors.onSurfaceContainerDark,
            selectionContainer: AppColors.selectionContainerDark,
          ),
        ],
      );

  @override
  TextTheme get _textTheme {
    return AppTheme.appTextTheme.apply(
      bodyColor: AppColors.white,
      displayColor: AppColors.white,
      decorationColor: AppColors.white,
    );
  }

  @override
  final Color _scaffoldBackground = AppColors.surfaceDark;

  @override
  ColorScheme get _colorScheme {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primaryDark,
      onPrimary: AppColors.onPrimaryDark,
      primaryContainer: AppColors.primaryContainerDark,
      onPrimaryContainer: AppColors.onPrimaryContainerDark,
      secondary: AppColors.secondaryDark,
      onSecondary: AppColors.onSecondaryDark,
      secondaryContainer: AppColors.secondaryContainerDark,
      onSecondaryContainer: AppColors.onSecondaryContainerDark,
      tertiary: AppColors.tertiaryDark,
      onTertiary: AppColors.onTertiaryDark,
      tertiaryContainer: AppColors.tertiaryContainerDark,
      onTertiaryContainer: AppColors.onTertiaryContainerDark,
      error: AppColors.errorDark,
      errorContainer: AppColors.errorContainerDark,
      onError: AppColors.onErrorDark,
      onErrorContainer: AppColors.onErrorContainerDark,
      background: AppColors.backgroundDark,
      onBackground: AppColors.onBackgroundDark,
      outline: AppColors.outlineDark,
      outlineVariant: AppColors.outlineVariantDark,
      onInverseSurface: AppColors.onInverseSurfaceDark,
      inverseSurface: AppColors.inverseSurfaceDark,
      inversePrimary: AppColors.inversePrimaryDark,
      shadow: AppColors.shadowDark,
      surfaceTint: AppColors.surfaceTintDark,
      scrim: AppColors.scrimDark,
      surface: AppColors.surfaceDark,
      onSurface: AppColors.onSurfaceDark,
      surfaceVariant: AppColors.surfaceVariantDark,
      onSurfaceVariant: AppColors.onSurfaceVariantDark,
    );
  }

  @override
  TabBarTheme get _tabBarTheme {
    return TabBarTheme(
      labelColor: _colorScheme.primary,
      labelPadding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: 0,
      ),
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 3,
          color: _colorScheme.primary,
        ),
      ),
      indicatorSize: TabBarIndicatorSize.label,
      labelStyle: _textTheme.titleSmall,
      dividerColor: Colors.transparent,
      unselectedLabelColor: AppColors.onSurfaceVariantDark,
    );
  }

  @override
  DividerThemeData get _dividerTheme {
    return const DividerThemeData(
      color: AppColors.outlineVariantDark,
      space: AppSpacing.lg,
      thickness: AppSpacing.xxxs / 2,
      indent: AppSpacing.lg,
      endIndent: AppSpacing.lg,
    );
  }

  @override
  NavigationBarThemeData get _navigationBarTheme {
    return const NavigationBarThemeData(
      elevation: 5.0,
      backgroundColor: AppColors.surfaceContainerDark,
      surfaceTintColor: AppColors.surfaceContainerDark,
    );
  }
}

@immutable
class ColorSchemeExtend extends ThemeExtension<ColorSchemeExtend> {
  const ColorSchemeExtend({
    required this.surfaceContainer,
    required this.onSurfaceContainer,
    required this.selectionContainer,
  });

  final Color? surfaceContainer;
  final Color? onSurfaceContainer;
  final Color? selectionContainer;

  @override
  ColorSchemeExtend copyWith(
      {Color? surfaceContainer,
      Color? onSurfaceContainer,
      Color? selectionContainer}) {
    return ColorSchemeExtend(
      surfaceContainer: surfaceContainer ?? this.surfaceContainer,
      onSurfaceContainer: onSurfaceContainer ?? this.onSurfaceContainer,
      selectionContainer: selectionContainer ?? this.selectionContainer,
    );
  }

  @override
  ColorSchemeExtend lerp(ColorSchemeExtend? other, double t) {
    if (other is! ColorSchemeExtend) {
      return this;
    }
    return ColorSchemeExtend(
      surfaceContainer: Color.lerp(
        surfaceContainer,
        other.surfaceContainer,
        t,
      ),
      onSurfaceContainer: Color.lerp(
        onSurfaceContainer,
        other.onSurfaceContainer,
        t,
      ),
      selectionContainer: Color.lerp(
        selectionContainer,
        other.selectionContainer,
        t,
      ),
    );
  }

  @override
  String toString() =>
      'ColorSchemeExtend(surfaceContainer: $surfaceContainer, onSurfaceContainer: $onSurfaceContainer, selectionContainer: $selectionContainer)';
}
