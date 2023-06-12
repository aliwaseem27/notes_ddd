import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_ddd/bloc_observer.dart';

import 'package:notes_ddd/injection.dart';
import 'package:notes_ddd/presentation/core/app_widget.dart';
import 'package:notes_ddd/presentation/routes/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjectable(Environment.prod);
  runApp(AppWidget(getIt<AppRouter>()));
  Bloc.observer = AppBlocObserver();
}
