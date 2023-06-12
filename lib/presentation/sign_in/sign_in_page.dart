import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:notes_ddd/injection.dart';
import 'package:notes_ddd/presentation/sign_in/widgets/sign_in_form.dart';
import 'package:auto_route/annotations.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign in"),
      ),
      body: BlocProvider<SignInFormBloc>(
        create: (context) => getIt<SignInFormBloc>(),
        child: SignInForm(),
      ),
    );
  }
}
