import 'package:consforc/config/export.dart';

class ProductItemWidget extends StatelessWidget {
  final List<ProductModel> list;
  final Function onPressed;

  const ProductItemWidget({
    Key? key,
    required this.list,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          ProductModel item = list[index];
          return Container(
            width: 89.w,
            margin: PagePadding.horizontalSymmetric(2.w),
            padding: PagePadding.all(2.5.h),
            decoration: ContainerDecoration.boxDecoration(
                bg: Colors.transparent,
                border: APPColors.appBorder,
                radius: 16,
                width: 0.5),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ConsforcText.subHeaderText(
                            text: item.name,
                            fontSize: 10.sp,
                            color: APPColors.appPrimaryTextColor,
                            wordSpacing: 1.3,
                            letterSpacing: 0.4,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          ConsforcText.subHeaderText(
                            text: item.price,
                            fontSize: 10.sp,
                            color: APPColors.appPrimaryTextColor,
                            textDecoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.normal,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          ConsforcText.subHeaderText(
                            text: item.discount_price,
                            fontSize: 10.sp,
                            color: APPColors.appPrimaryTextColor,
                            fontWeight: FontWeight.normal,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      const Expanded(child: VariantWidget()),
                    ],
                  ),
                ),
                VideoPlayWidget(
                  image: item.image!,
                ),
              ],
            ),
          );
        });
  }
}
