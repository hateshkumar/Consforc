import 'package:consforc/config/export.dart';

class CategoryItemWidget extends StatelessWidget {
  final List<CategoryModel> list;
  final int selectedIndex;
  final Function onPressed;

  const CategoryItemWidget(
      {Key? key,
      required this.list,
      required this.onPressed,
      required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Platform.isIOS? 5.h : 6.h,
      margin: PagePadding.custom(2.w, 2.w, 2.w, 0.w),
      child: ListView.builder(
          itemCount: list.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            CategoryModel item = list[index];
            return InkWell(
              onTap: () {
                onPressed.call(index);
              },
              child: Container(
                padding: PagePadding.custom(5.w, 5.w, 2.w, 2.w),
                margin: PagePadding.horizontalSymmetric(1.w),
                decoration: ContainerDecoration.boxDecoration(
                  radius: 32,
                  width: 1,
                  bg: selectedIndex == index
                      ? APPColors.appPrimaryColor
                      : APPColors.appPrimaryColor2.withOpacity(0.15),
                  border: selectedIndex == index
                      ? APPColors.appPrimaryColor
                      : APPColors.appWhite,
                ),
                child: Center(
                  child: ConsforcText.subHeaderText(
                    text: item.name,
                    fontWeight: FontWeight.bold,
                    color: selectedIndex == index
                        ? APPColors.appWhite
                        : APPColors.appBlack2,
                    fontSize: 10.sp,
                    letterSpacing: 0.6,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
