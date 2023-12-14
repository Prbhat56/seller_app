import 'dart:ui';
import 'package:seller_app/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Gradient button style
  static BoxDecoration get gradientPurpleADToPurpleDDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(0.1, 0),
          end: Alignment(1.0, 1),
          colors: [
            appTheme.purpleA100D8,
            appTheme.purple300D8,
          ],
        ),
      );
  static BoxDecoration get gradientSecondaryContainerToDeepOrangeDDecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(0.1, 0),
          end: Alignment(0.84, 0),
          colors: [
            theme.colorScheme.secondaryContainer,
            appTheme.deepOrange700D8,
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlack => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        shadowColor: appTheme.black900.withOpacity(0.1),
        elevation: 2,
      );
  static ButtonStyle get outlineBlackTL21 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray500,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21.h),
        ),
        shadowColor: appTheme.black900.withOpacity(0.1),
        elevation: 20,
      );
  static ButtonStyle get outlineBlueGrayF => ElevatedButton.styleFrom(
        backgroundColor: appTheme.green900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21.h),
        ),
        shadowColor: appTheme.blueGray1003f.withOpacity(0.25),
        elevation: 20,
      );
  static ButtonStyle get outlineDeepOrangeTL21 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21.h),
        ),
        shadowColor: appTheme.deepOrange400.withOpacity(0.25),
        elevation: 20,
      );
  static ButtonStyle get outlineGray => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        side: BorderSide(
          color: appTheme.gray200,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get outlineIndigo => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.h),
        ),
        shadowColor: appTheme.indigo30028,
        elevation: 10,
      );
  static ButtonStyle get outlineIndigoTL28 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.h),
        ),
        shadowColor: appTheme.indigo30028,
        elevation: 10,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
