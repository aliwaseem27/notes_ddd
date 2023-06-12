import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:notes_ddd/domain/auth/i_auth_facade.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthInitial()) {
    on<AutheCheckRequested>((event, emit) async {
      final currentUserOption = await _authFacade.getSignedInUser();
      emit(
        currentUserOption.fold(
          () => const AuthState.unauthenticated(),
          (_) => const AuthState.authenticated(),
        ),
      );
    });
    on<SignedOut>((event, emit) async {
      await _authFacade.signOut();
      emit(const AuthState.unauthenticated());
    });
  }
}
