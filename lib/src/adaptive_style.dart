import 'package:flutter/material.dart';

enum AdaptiveStyle {
  adaptive,
  material,
  cupertino,
}

extension AdaptiveStyleEx on AdaptiveStyle {
  bool isCupertinoStyle(ThemeData theme) =>
      this == AdaptiveStyle.cupertino ||
      (this == AdaptiveStyle.adaptive && theme.isCupertinoStyle);
}

extension ThemeDataEx on ThemeData {
  // ignore: lines_longer_than_80_chars
  // TODO(mono): Add platform == TargetPlatform.macOS when it is supported on stable
  /// Return true is the platform is suitable for Cupertino(iOS) style
  bool get isCupertinoStyle =>
      platform == TargetPlatform.iOS; // || platform == TargetPlatform.macOS;
}
