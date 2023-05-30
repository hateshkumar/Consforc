import 'package:consforc/config/export.dart';

class MainCubit extends ConsforcBaseCubit {
  MainCubit() : super(ConsforcBaseState.idle());

  final List<Widget> menuWidgets = [
    const HomeView(),
    const HomeView(),
    const HomeView(),
    const HomeView(),
  ];

  final BehaviorSubject<int> currentIndex = BehaviorSubject<int>.seeded(0);

  var categoryList = [
    CategoryModel(true, "All"),
    CategoryModel(false, "Design"),
    CategoryModel(false, "Communication"),
    CategoryModel(false, "Development"),
    CategoryModel(false, "Design"),
    CategoryModel(false, "Communication"),
    CategoryModel(false, "Development"),
    CategoryModel(false, "Design"),
    CategoryModel(false, "Communication"),
    CategoryModel(false, "Development"),
  ];

  var productList = [
    ProductModel(true, "Spoken English", "\$49.99", "\$9.99", Assets.png.girl),
    ProductModel(
        true, "Spoken English", "\$49.99", "\$9.99", Assets.png.divider),
    ProductModel(true, "Spoken English", "\$49.99", "\$9.99", Assets.png.girl),
    ProductModel(
        true, "Spoken English", "\$49.99", "\$9.99", Assets.png.divider),
  ];

  var courseList = [
    ProductModel(
        true, "Product Design", "\$49.99", "\$9.99", Assets.png.divider),
    ProductModel(
        true, "Project Management", "\$49.99", "\$9.99", Assets.png.girl),
    ProductModel(
        true, "Spoken English", "\$49.99", "\$9.99", Assets.png.divider),
    ProductModel(true, "Spoken English", "\$49.99", "\$9.99", Assets.png.girl),
  ];

  var variantList = [
    VariantModel('Live classes', Assets.svgs.happy, price: '26'),
    VariantModel('Weekly exams', Assets.svgs.graduation),
    VariantModel('Recorded videos', Assets.svgs.playlist, price: '40'),
    VariantModel('Study notes', Assets.svgs.notebook),
  ];

  BehaviorSubject<int> selectedBottomPageIndex$ = BehaviorSubject.seeded(0);

  BehaviorSubject<int> selectedCategorySubject$ =
      BehaviorSubject<int>.seeded(0);

  void changeCategory(int index) {
    selectedCategorySubject$.sink.add(index);
  }
}
