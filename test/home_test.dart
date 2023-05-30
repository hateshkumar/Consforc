import 'package:consforc/config/export.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(kAppFile, (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    expect(find.byType(MaterialApp), findsOneWidget);
  });

  testWidgets('Consforc subHeaderText renders correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(ConsforcTheme(
        data: ConsforcTheme.themeData,
        child: const MaterialApp(
          home: HomeView(),
        )));

    expect(find.byType(ToucheDetector), findsOneWidget);
    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.byType(SingleChildScrollView), findsOneWidget);
    expect(find.byType(Column), findsOneWidget);
    expect(find.byType(Container), findsNWidgets(3));
    expect(find.byType(Row), findsNWidgets(2));
    expect(find.byType(CircularAvatarWidget), findsOneWidget);
    expect(find.byType(SearchWidget), findsOneWidget);
    expect(find.byType(ConsforcText), findsNWidgets(2));
    expect(find.byType(CategoryWidget), findsOneWidget);
    expect(find.byType(ProductWidget), findsOneWidget);
    expect(find.byType(PopularCourseWidget), findsOneWidget);
  });
}
