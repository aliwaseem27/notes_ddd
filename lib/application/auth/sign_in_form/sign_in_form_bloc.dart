import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes_ddd/domain/auth/auth_failure.dart';
import 'package:notes_ddd/domain/auth/i_auth_facade.dart';
import 'package:notes_ddd/domain/auth/value_objects.dart';

part 'sign_in_form_event.dart';

part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacede;

  SignInFormBloc(this._authFacede) : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) {
      event.when(
        emailChanged: (emailStr) {
          emit(state.copyWith(
            emailAddress: EmailAddress(emailStr),
            authFailureOrSuccessOption: none(),
          ));
        },
        passwordChanged: (passwordStr) {
          emit(state.copyWith(
            password: Password(passwordStr),
            authFailureOrSuccessOption: none(),
          ));
        },
        registerWithEmailAndPasswordPressed:
            _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacede.registerWithEmailAndPassword,
        ),
        signInWithEmailAndPasswordPressed:
            _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacede.signInWithEmailAndPassword,
        ),
        signInWithGooglePressed: () async {
          emit(state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          ));
          final failureOrSuccess = await _authFacede.signInWithGoogle();
          emit(state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: some(failureOrSuccess),
          ));
        },
      );
    });
  }

  _performActionOnAuthFacadeWithEmailAndPassword(
      Future<Either<AuthFailure, Unit>> Function({
    required EmailAddress emailAddress,
    required Password password,
  })
          forwardedCall) async {
    Either<AuthFailure, Unit>? failureOrSuccess;
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));
      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }
    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: AutovalidateMode.always,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
