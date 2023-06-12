import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_ddd/presentation/sign_in/sign_in_page.dart';

part 'app_router.gr.dart';

@Singleton()
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SignInRoute.page, initial: true),
      ];
}
