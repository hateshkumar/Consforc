import 'package:consforc/config/export.dart';

class ProductWidget extends StatelessWidget {
  final HomeCubit homeCubit;

  const ProductWidget({Key? key, required this.homeCubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PagePadding.custom(2.w, 2.w, 0, 0),
      child: Column(
        children: [
          SizedBox(
            height: 3.w,
          ),
          ViewAllWidget(
            title: 'ON SALE',
            showViewAllBtn: true,
            callback: () {},
          ),
          SizedBox(
            height: 4.w,
          ),
          SizedBox(
            height: Platform.isIOS? 18.h:21.h,
            child: ProductItemWidget(
              list: homeCubit.productList,
              onPressed: (int index) {},
            ),
          )
        ],
      ),
    );
  }
}
