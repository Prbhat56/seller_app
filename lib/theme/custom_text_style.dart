import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray400,
        fontSize: 17.fSize,
      );
  static get bodyLargeSegoeFluentIconsGray80001 =>
      theme.textTheme.bodyLarge!.segoeFluentIcons.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyLargeSofiaProOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.sofiaPro.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumGray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumOnPrimaryContainer_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumRobotoBlack900 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumSofiaProErrorContainer =>
      theme.textTheme.bodyMedium!.sofiaPro.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 14.fSize,
      );
  static get bodyMediumSofiaProErrorContainer14 =>
      theme.textTheme.bodyMedium!.sofiaPro.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 14.fSize,
      );
  static get bodyMediumSofiaProOnPrimary =>
      theme.textTheme.bodyMedium!.sofiaPro.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumSofiaProPrimary =>
      theme.textTheme.bodyMedium!.sofiaPro.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodyMediumSofiaProPrimary14 =>
      theme.textTheme.bodyMedium!.sofiaPro.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallDeeporange400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.deepOrange400,
      );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallGray50002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50002,
        fontSize: 12.fSize,
      );
  static get bodySmallGray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
      );
  static get bodySmallInterBlack900 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallInterBlack9008 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 8.fSize,
      );
  static get bodySmallOnError => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 12.fSize,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get bodySmallPrimary12 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get bodySmallTeal500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.teal500,
        fontSize: 12.fSize,
      );
  // Display style
  static get displayMediumAclonica => theme.textTheme.displayMedium!.aclonica;
  static get displayMediumAclonicaOrange100 =>
      theme.textTheme.displayMedium!.aclonica.copyWith(
        color: appTheme.orange100,
      );
  static get displayMediumAclonicaPrimary =>
      theme.textTheme.displayMedium!.aclonica.copyWith(
        color: theme.colorScheme.primary,
      );
  // Label style
  static get labelLargeInter => theme.textTheme.labelLarge!.inter;
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeSofiaProErrorContainer =>
      theme.textTheme.labelLarge!.sofiaPro.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get labelMediumInter => theme.textTheme.labelMedium!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelMediumInterBluegray400 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeInterBlack900 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.85),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeInterOnPrimary =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  static get titleMediumGreenA700f4 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.greenA700F4,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRedA700e5 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA700E5,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSofiaProOnPrimaryContainer =>
      theme.textTheme.titleMedium!.sofiaPro.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumSofiaProWhiteA700 =>
      theme.textTheme.titleMedium!.sofiaPro.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
      );
  static get titleSmallGray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterOnPrimaryContainer =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRobotoBlack900 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallSofiaProOnPrimaryContainer =>
      theme.textTheme.titleSmall!.sofiaPro.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get aclonica {
    return copyWith(
      fontFamily: 'Aclonica',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get segoeFluentIcons {
    return copyWith(
      fontFamily: 'Segoe Fluent Icons',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get sofiaPro {
    return copyWith(
      fontFamily: 'Sofia Pro',
    );
  }

  TextStyle get aBeeZee {
    return copyWith(
      fontFamily: 'ABeeZee',
    );
  }
}
