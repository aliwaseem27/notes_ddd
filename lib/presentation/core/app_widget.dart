import 'package:flutter/material.dart';
import 'package:notes_ddd/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:notes_ddd/presentation/sign_in/sign_in_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ).copyWith(
        inputDecorationTheme:  InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
        ),
      ),
      home: SignInPage(),
    );
  }
}
