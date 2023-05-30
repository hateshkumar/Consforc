import 'package:consforc/config/export.dart';

class VariantItemWidget extends StatelessWidget {
  final VariantModel item;

  const VariantItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:Platform.isIOS? 4.2.h : 5.h,
      width: Platform.isIOS? item.name!.length * 7.2 :  item.name!.length * 8.5,
      decoration: ContainerDecoration.boxDecoration(
          bg: APPColors.appPrimaryColor2.withOpacity(0.15),
          border: APPColors.appWhite,
          radius: 30,
          width: 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 1.w,
          ),
          Platform.isIOS?
          item.image!.svg(width: 2.5.w, height: 2.h)
              :

          item.image!.svg(width: 3.w, height: 2.3.h),
          SizedBox(
            width: 0.5.w,
          ),
          if (item.price != null)
            Padding(
              padding: const PagePadding.onlyRight(2),
              child: ConsforcText.subHeaderText(
                text: item.price,
                fontSize: Platform.isIOS? 7.sp : 8.sp,
                color: APPColors.appPrimaryTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ConsforcText.subHeaderText(
            text: item.name,
            fontSize: Platform.isIOS? 7.sp : 8.sp,
            color: APPColors.appPrimaryTextColor,
            fontWeight: FontWeight.normal,
          ),

        ],
      ),
    );
  }
}
