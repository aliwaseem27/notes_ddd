import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_ddd/presentation/sign_in/sign_in_page.dart';
import 'package:notes_ddd/presentation/splash/splash_page.dart';

part 'app_router.gr.dart';

@lazySingleton
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: "/Splash",page: SplashRoute.page),
        AutoRoute(path: "/", page: SignInRoute.page, initial: true),
      ];
}
