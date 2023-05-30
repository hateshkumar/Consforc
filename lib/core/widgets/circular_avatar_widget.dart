import 'package:consforc/config/export.dart';

class CircularAvatarWidget extends StatelessWidget {
  final double? width, height, radius;
  final Color? backgroundColor;
  final PngGenImage? png;
  final SvgGenImage? svg;

  const CircularAvatarWidget(
      {Key? key,
      this.width,
      this.height,
      this.radius,
      this.backgroundColor,
      this.png,
      this.svg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor ?? APPColors.appLightGrey,
      radius: radius ?? 7.w,
      child: svg != null
          ? Center(
            child: svg!
                .svg(width: width ?? 5.w, height: height ?? 2.5.h),
          )
          :  png!.png(width: width ?? 8.w, height: height ?? 4.5.h)

    );
  }
}
