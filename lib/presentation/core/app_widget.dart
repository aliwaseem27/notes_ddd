import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_ddd/presentation/routes/app_router.dart';

@injectable
class AppWidget extends StatelessWidget {
  final AppRouter appRouter ;
  const AppWidget(this.appRouter, {super.key} );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Notes',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ).copyWith(
        inputDecorationTheme:  InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
        ),
      ),
      routerConfig: appRouter.config(),
    );
  }
}
