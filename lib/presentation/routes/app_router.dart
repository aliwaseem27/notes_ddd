import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_ddd/presentation/notes/note_form/note_form_page.dart';
import 'package:notes_ddd/presentation/notes/notes_overview/notes_overview_page.dart';
import 'package:notes_ddd/presentation/sign_in/sign_in_page.dart';
import 'package:notes_ddd/presentation/splash/splash_page.dart';

import 'package:notes_ddd/domain/notes/note.dart';

part 'app_router.gr.dart';

@lazySingleton
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: "/Splash", page: SplashRoute.page, initial: true),
        AutoRoute(path: "/SignInForm", page: SignInRoute.page),
        AutoRoute(page: NotesOverviewRoute.page),
        AutoRoute(page: NoteFormRoute.page, fullscreenDialog: true),
      ];
}
