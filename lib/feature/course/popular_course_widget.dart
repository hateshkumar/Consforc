import 'package:consforc/config/export.dart';

class PopularCourseWidget extends StatelessWidget {
  final HomeCubit homeCubit;

  const PopularCourseWidget({Key? key, required this.homeCubit})
      : super(key: key);

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
            title: 'Popular Courses'.toUpperCase(),
            showViewAllBtn: false,
            callback: () {},
          ),
          SizedBox(
            height: 2.w,
          ),
          PopularCoursedItemWidget(
            list: homeCubit.courseList,
            onPressed: (int index) {},
          )
        ],
      ),
    );
  }
}
