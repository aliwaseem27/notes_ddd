import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/auth/auth_bloc.dart';
import 'package:notes_ddd/presentation/routes/app_router.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          authInitial: (_) {},
          authenticated: (_) {
            // context.router.replaceNamed(...);
            debugPrint("I'm authenticated");
          },
          unauthenticated: (_) {
            context.router.push(const SignInRoute());
            debugPrint("I'm not authenticated");
          },
        );
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Splash Page"),
              ElevatedButton(
                onPressed: () {
                  context.router.replace(const SignInRoute());
                },
                child: const Text("To Sign In Page"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
