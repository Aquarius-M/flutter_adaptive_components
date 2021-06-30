import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../adaptive_style.dart';

Future showAdaptiveOK({
  required BuildContext context,
  Key? key,
  final AdaptiveStyle style = AdaptiveStyle.adaptive,

  ///弹窗里的设置
  final Widget? title,
  final Widget? content,
  final Text? buttontext,
  void Function()? onTap,

  ///显示弹窗设置
  final RouteSettings? routeSettings,
  final bool barrierDismissible = true,
  final bool useRootNavigator = false,

  ///IOS端Dialog独有
  final ScrollController? scrollController,
  final Curve insetAnimationCurve = Curves.decelerate,
  final Duration insetAnimationDuration = const Duration(milliseconds: 100),

  ///Android端Dialog独有
  /// An [EdgeInsetsGeometry] with infinite offsets in each direction.
  ///
  /// Can be used as an infinite upper bound for [clamp].
  EdgeInsetsGeometry? titlePadding,
  EdgeInsetsGeometry actionsPadding = EdgeInsets.zero,
  EdgeInsetsGeometry contentPadding =
      const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
}) async {
  void adaptivePop() {
    return Navigator.of(context).pop();
  }

  final theme = Theme.of(context);
  return style.isCupertinoStyle(theme)
      ? showCupertinoDialog(
          context: context,
          barrierDismissible: barrierDismissible,
          useRootNavigator: useRootNavigator,
          routeSettings: routeSettings,
          builder: (context) {
            return CupertinoAlertDialog(
              key: key,
              scrollController: scrollController,
              insetAnimationCurve: insetAnimationCurve,
              insetAnimationDuration: insetAnimationDuration,
              title: title ?? Text('Title'),
              content: content ?? Text('This is a message'),
              actions: [
                CupertinoDialogAction(
                  child: buttontext ?? Text('Ok'),
                  onPressed: onTap ??
                      () {
                        adaptivePop();
                      },
                ),
              ],
            );
          },
        )
      : showDialog(
          context: context,
          barrierDismissible: barrierDismissible,
          useRootNavigator: useRootNavigator,
          routeSettings: routeSettings,
          builder: (context) {
            return AlertDialog(
              key: key,
              title: title ?? Text('Title'),
              content: content ?? Text('This is a message'),
              actions: [
                TextButton(
                  child: buttontext ?? Text('Ok'),
                  onPressed: onTap ??
                      () {
                        adaptivePop();
                      },
                ),
              ],
            );
          },
        );
}
