import 'package:consforc/config/export.dart';

class SearchWidget extends StatelessWidget {
  final String title;
  final Function? callBack;

  const SearchWidget({
    Key? key,
    required this.title,
    this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.5.h,
      width: 57.5.w,
      margin: PagePadding.custom(2.w, 4.w, 0.w, 0.w),
      decoration: ContainerDecoration.boxDecoration(
          bg: APPColors.appPrimaryColor2,
          border: APPColors.appWhite.withOpacity(0.4),
          width: 0.8,
          radius: 26),
      child: Row(
        children: [
          SizedBox(
            width: 45.w,
            child: ConsforcTextField.borderLess(
              color: APPColors.appWhite,
              keyBoardType: TextInputType.number,
              textAlign: TextAlign.start,
              fontSize: 10.sp,
              hintFontSize: 12.sp,
              fontWeight: FontWeight.normal,
              hint: title,
              cursoeColor: APPColors.appWhite,
              onChange: (String query) {},
              filledColor: Colors.transparent,
              letterSpacing: 0.4,
              hintColor: APPColors.appWhite,
            ),
          ),
          Container(
            height: 6.h,
            width: 12.w,
              transform: Platform.isIOS? Matrix4.translationValues(2, 0, 0) : Matrix4.translationValues(7, 0, 0),

            decoration: const BoxDecoration(
                color: APPColors.appWhite, shape: BoxShape.circle),
            child: const Icon(
              Icons.search,
              color: APPColors.appPrimaryColor,
              size: 26,
            ),
          ),
        ],
      ),
    );
  }
}
