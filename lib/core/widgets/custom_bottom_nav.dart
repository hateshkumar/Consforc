import 'package:consforc/config/export.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation(
      {Key? key,
      required this.currentIndex,
      required this.list,
      required this.onTap})
      : super(key: key);

  final int currentIndex;
  final List<Widget> list;

  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
        child: Container(
          decoration: ContainerDecoration.boxDecoration(
            bg: APPColors.appPrimaryColor,
            border: APPColors.appPrimaryColor,
            radius: 80,
            width: 1
          ),
          child: Padding(
            padding: Platform.isIOS
                ? EdgeInsets.symmetric(horizontal: 10.w, vertical: 1.h)
                : EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                item(kHome, Assets.svgs.home.path, 0),
                item(kSaved, Assets.svgs.saved.path, 1),
                item(kCourse, Assets.svgs.course.path, 2),
                item(kLibrary, Assets.svgs.playlist_home.path, 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InkWell item(String label, String path, int index) {
    return InkWell(
        onTap: () {
          onTap(index);
        },
        child: SizedBox(
          height: Platform.isIOS ? 5.h : 6.h,
          width: 10.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(path,width: 6.w,height: 3.h,
                  color: currentIndex == index
                      ? APPColors.appWhite
                      : APPColors.appWhite.withOpacity(0.6)),
              SizedBox(
                height:  0.5.h,
              ),
              ConsforcText.subHeaderText(
                  text: label,
                  fontSize: Platform.isIOS ? 7.2.sp : 8.2.sp,
                  fontWeight: FontWeight.bold,
                  color: currentIndex == index
                      ? APPColors.appWhite
                      : APPColors.appWhite.withOpacity(0.6)),
            ],
          ),
        ));
  }
}
