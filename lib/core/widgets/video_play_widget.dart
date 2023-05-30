import 'package:consforc/config/export.dart';

class VideoPlayWidget extends StatelessWidget {
  final PngGenImage image;

  const VideoPlayWidget({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        image.png(width: 25.w),
        Positioned(
          right: 0,
          bottom: 0,
          child: CircularAvatarWidget(
            radius: 5.w,
            backgroundColor: APPColors.appPrimaryTextColor,
            svg: Assets.svgs.play,
          ),
        ),
      ],
    );
  }
}
