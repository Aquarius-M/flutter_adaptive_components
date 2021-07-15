import 'package:flutter/cupertino.dart';
import 'package:flutter_adaptive_components/src/adaptive_bottomsheet/rely.dart';
import 'package:flutter/material.dart';

import '../adaptive_style.dart';

Future showAdaptiveSheet({
  required BuildContext context,
  Key? key,
  final AdaptiveStyle style = AdaptiveStyle.adaptive,

  ///弹窗里的设置
  final Color? bgColor,
  final Color? barrierColor,
  final double? radius,
  final double? minheight,
  required double? maxheight,
  final bool? isSafeArea,
  final Widget? content,
  final EdgeInsetsGeometry? contentpadding,
  final bool? enabledrag,
  final bool? dismissible,
}) {
  return showCustomBottomSheet(
    context: context,
    elevation: 5,
    isDismissible: dismissible ?? true,
    enableDrag: enabledrag ?? true,
    backgroundColor: bgColor ?? Theme.of(context).canvasColor,
    barrierColor: barrierColor,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(radius ?? 15)),
    ),
    builder: (BuildContext context) {
      return SafeArea(
        top: isSafeArea ?? false,
        bottom: isSafeArea ?? false,
        left: isSafeArea ?? false,
        right: isSafeArea ?? false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: contentpadding ?? EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(radius ?? 15)),
              ),
              width: double.infinity,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: minheight ?? 0.0,
                  maxHeight: maxheight ?? double.infinity,
                ),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        height: minheight,
                        child: content ?? Text('content'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
