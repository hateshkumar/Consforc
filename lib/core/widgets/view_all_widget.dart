import 'package:consforc/config/export.dart';

class ViewAllWidget extends StatelessWidget {
  final Function? callback;
  final String title;
  final bool? showViewAllBtn;

  const ViewAllWidget({Key? key, required this.title, this.callback ,this.showViewAllBtn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PagePadding.custom(0, 2.w, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ConsforcText.subHeaderText(
            text: title,
            fontSize: 10.sp,
            color: APPColors.appPrimaryTextColor,
            fontWeight: FontWeight.bold,
          ),
          showViewAllBtn!?  Padding(
            padding: PagePadding.onlyRight(3.w),
            child: GestureDetector(
              onTap: () {
                callback!.call();
              },
              child: ConsforcText.subHeaderText(
                text: kViewAll,
                fontSize: 10.sp,
                letterSpacing: 0.7,
                wordSpacing: 1.2,
                color: APPColors.appPrimaryColor,
                fontWeight: FontWeight.normal,
              ),
            ),
          ):const SizedBox.shrink(),
        ],
      ),
    );
  }
}
