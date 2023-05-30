
import 'package:consforc/config/export.dart';



class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Routes.configureRoutes(NavigatorHelper.router);
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (_, orientation, device) {
      return ConsforcTheme(
          data: ConsforcTheme.themeData,
          child: MaterialApp(
            themeMode: ThemeMode.light,
            debugShowCheckedModeBanner: false,
            title: 'Consforc',
            builder: (context, child) => DefaultTextStyle(
              style: Theme.of(context).textTheme.bodyText1!,
              child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  body: child),
            ),
            navigatorKey: NavigatorHelper.navigatorKey,
            navigatorObservers: <NavigatorObserver>[
              // routeObserver,
             ConsforcNavigatorObserver(),
            ],
            initialRoute: '/main_view',
            onGenerateRoute: NavigatorHelper.router.generator,
            theme: ConsforcTheme.generateThemeDataFromconsforcThemeData(
                ConsforcTheme.themeData),
          )

      );
    });
  }

}
