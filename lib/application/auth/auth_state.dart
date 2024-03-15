part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.registerSuccess() = _RegisterSuccess;
  const factory AuthState.loginSuccess(User currUser) = _LoginSuccess;
  const factory AuthState.onAuthChecked(User? user) = _OnAuthChecked;
  const factory AuthState.registerFailed(AuthFailure failure) = _RegisterFailed;
  const factory AuthState.loginFailed(AuthFailure failure) = _LoginFailed;
}
