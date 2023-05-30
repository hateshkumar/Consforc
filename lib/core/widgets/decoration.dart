import 'package:consforc/config/export.dart';

class ContainerDecoration {
  static BoxDecoration boxDecoration(
      {Color? bg, Color? border, double? width = 1, double? radius}) {
    return radius != null
        ? BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: bg,
            border: Border.all(width: width!, color: border!),
          )
        : BoxDecoration(
            color: bg,
            border: Border.all(width: width!, color: border!),
          );
  }

  static BoxDecoration sideRadiusDecoration(
      {Color? bg, Color? border, double? width = 1, double? radius}) {
    return BoxDecoration(
      color: bg ?? Colors.transparent,
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(radius ?? 16),
          bottomRight: Radius.circular(radius ?? 16)),
      border: Border.all(
        color: border ?? APPColors.appWhite,
        width: 1.0,
      ),
    );
  }
}
