import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kochat/application/auth/auth_cubit.dart';
import 'package:kochat/domain/auth/auth_repository.dart';

part 'authentication_state.dart';
part 'authentication_cubit.freezed.dart';

@singleton
class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit(this.authRepository)
      : super(AuthenticationState.initial());
  final AuthRepository authRepository;

  void getCurrentUser() async {
    final result = await authRepository.getCurrentUser();
    result.fold(
      (l) => emit(state.copyWith(currentChatUser: null)),
      (r) => emit(state.copyWith(currentChatUser: r)),
    );
  }
}
