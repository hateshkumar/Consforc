import 'package:consforc/config/export.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CubitProvider<ConsforcBaseState, HomeCubit>(
        create: (context) => HomeCubit(),
        builder: (conext, state, bloc) {
          return ToucheDetector(
            child: Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Container(
                height: 28.h,
                padding: PagePadding.onlyTop(8.h),
                decoration: ContainerDecoration.sideRadiusDecoration(
                  border: APPColors.appPrimaryColor,
                    bg: APPColors.appPrimaryColor,  radius: 30, width: 1),
                child: Container(
                  padding: PagePadding.horizontalSymmetric(3.5.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircularAvatarWidget(
                            width: 7.w,
                            height: 3.h,
                            radius: 5.5.w,
                            backgroundColor: APPColors.appPrimaryColor2,
                            svg: Assets.svgs.menu,
                          ),
                          const SearchWidget(title: kSearchHere)
                        ],
                      ),
                      SizedBox(
                        height: 3.5.h,
                      ),
                      ConsforcText.subHeaderText(
                        text: kGoodMorningQubo,
                        fontSize: 16.sp,
                        color: APPColors.appWhite,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 0.8.h,
                      ),
                      ConsforcText.subHeaderText(
                        text: kBeEducated,
                        fontSize: 11.sp,
                        color: APPColors.appWhite,
                        fontWeight: FontWeight.normal,
                      ),
                    ],
                  ),
                ),
              ),
             Expanded(child: SingleChildScrollView(child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(
                   height: 1.5.h,
                 ),
                 CategoryWidget(homeCubit: bloc),
                 SizedBox(
                   height: 3.h,
                 ),
                 ProductWidget(homeCubit: bloc),
                 SizedBox(
                   height: 2.h,
                 ),
                 PopularCourseWidget(homeCubit: bloc),
                 SizedBox(
                   height: 2.h,
                 ),
               ],
             ),))
                ],
              ),
            ),
          );
        });
  }
}
