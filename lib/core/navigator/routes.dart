import 'package:consforc/config/export.dart';

class Routes {
  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = RouteHandlers.notFoundHandler;
    // register all the routes here
    defineRoute(
        router, '/main_view', RouteHandlers.makeHandler(() => const MainView()));
  }

  static void defineRoute(
    FluroRouter router,
    String routePath,
    Handler handler, {
    TransitionType transitionType = TransitionType.material,
  }) {
    router.define(
      routePath,
      handler: handler,
      transitionType: transitionType,
    );
  }

  static void defineFullScreenDialogRoute(
    FluroRouter router,
    String routePath,
    Handler handler, {
    TransitionType transitionType = TransitionType.materialFullScreenDialog,
  }) {
    router.define(
      routePath,
      handler: handler,
      transitionType: transitionType,
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        final tween = Tween<Offset>(begin: begin, end: end);
        final offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
