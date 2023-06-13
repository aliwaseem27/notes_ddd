import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/auth/auth_bloc.dart';
import 'package:notes_ddd/injection.dart';
import 'package:notes_ddd/presentation/routes/app_router.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});

  final _appRouter = getIt<AppRouter>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested())),
      ],
      child: MaterialApp.router(
        title: 'Notes',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ).copyWith(
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
