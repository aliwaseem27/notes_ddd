part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.authInitial() = AuthInitial;
  const factory AuthState.authenticated() = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
}
