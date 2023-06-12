// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:flutter/material.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:notes_ddd/application/auth/auth_bloc.dart' as _i11;
import 'package:notes_ddd/application/auth/sign_in_form/sign_in_form_bloc.dart'
    as _i10;
import 'package:notes_ddd/domain/auth/i_auth_facade.dart' as _i8;
import 'package:notes_ddd/infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'package:notes_ddd/infrastructure/core/firebase_injectable_module.dart'
    as _i12;
import 'package:notes_ddd/presentation/core/app_widget.dart' as _i4;
import 'package:notes_ddd/presentation/routes/app_router.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.factory<_i4.AppWidget>(() => _i4.AppWidget(
          gh<_i3.AppRouter>(),
          key: gh<_i5.Key>(),
        ));
    gh.lazySingleton<_i6.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i7.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i8.IAuthFacade>(() => _i9.FirebaseAuthFacade(
          gh<_i6.FirebaseAuth>(),
          gh<_i7.GoogleSignIn>(),
        ));
    gh.factory<_i10.SignInFormBloc>(
        () => _i10.SignInFormBloc(gh<_i8.IAuthFacade>()));
    gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(gh<_i8.IAuthFacade>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i12.FirebaseInjectableModule {}
