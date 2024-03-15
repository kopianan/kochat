part of 'authentication_cubit.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const AuthenticationState._();
  factory AuthenticationState.initial() =>
      AuthenticationState(currentChatUser: null);
  factory AuthenticationState({User? currentChatUser}) = _AuthenticationState;

  String get getCurrentUserId => currentChatUser?.uid ?? "";
}
