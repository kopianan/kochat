import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'authentication_state.dart';
part 'authentication_cubit.freezed.dart';

@lazySingleton
class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationState.initial());

  void setChatCurrentUser(User user) {
    emit(state.copyWith(currentChatUser: user));
  }
}
