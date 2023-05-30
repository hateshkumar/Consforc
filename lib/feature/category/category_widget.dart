import 'package:consforc/config/export.dart';

class CategoryWidget extends StatelessWidget {
  final HomeCubit homeCubit;

  const CategoryWidget({Key? key, required this.homeCubit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CubitProvider(
        create: (context) => homeCubit,
        builder: (context, state, bloc) {
          return BehaviorSubjectBuilder<int>(
              subject: bloc.selectedCategorySubject$,
              builder: (context, snapshot) {
                return CategoryItemWidget(
                  list: bloc.categoryList,
                  selectedIndex: snapshot.data!,
                  onPressed: (int index) {
                    bloc.changeCategory(index);
                  },
                );
              });
        });
  }
}
