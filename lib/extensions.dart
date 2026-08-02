import 'package:auto_ecole_3s/app_textstyle.dart';
import 'package:auto_ecole_3s/style/app_size.dart';
import 'package:flutter/material.dart';
import 'package:auto_ecole_3s/l10n/app_localizations.dart';
enum FormFactorType {
  mobile,
  tablet,
  desktop,
}

extension StyledContext on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);
  double get width => mq.size.width;
  double get height => mq.size.height;

  ThemeData get theme => Theme.of(this);

  FormFactorType get formFactor {
    if (width < 600) {
      return FormFactorType.mobile;
    } else if (width < 1200) {
      return FormFactorType.tablet;
    }
    return FormFactorType.desktop;
  }

  bool get isMobile => formFactor == FormFactorType.mobile;
  bool get isTablet => formFactor == FormFactorType.tablet;
  bool get isDesktop => formFactor == FormFactorType.desktop;

  AppTextStyle get appTextStyle {
    switch (formFactor) {
      case FormFactorType.mobile:
        return AppTextStyle.mobile;
      case FormFactorType.tablet:
        return AppTextStyle.tablet;
      case FormFactorType.desktop:
        return AppTextStyle.desktop;
    }
  }
  AppInsets get insets {
    switch (formFactor) {
      case FormFactorType.mobile:
        return SmallInsets();
      case FormFactorType.tablet:
        return LargeInsets();
      case FormFactorType.desktop:
        return LargeInsets();
    }
  }
  AppLocalizations get texts => AppLocalizations.of(this)??lookupAppLocalizations(const Locale('fr'));
  ColorScheme get colorScheme => theme.colorScheme;
}
