import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kochat/domain/auth/auth_failure.dart';
import 'package:kochat/domain/auth/auth_repository.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepository) : super(const AuthState.initial());
  final AuthRepository authRepository;

  void registerUsingEmail(String email, String password) async {
    emit(const AuthState.loading());
    final result = await authRepository.registerWithEmailAndPassword(
      emailAddress: email,
      password: password,
    );
    //if success create user

    result.fold(
      (l) {
        emit(AuthState.registerFailed(l));
      },
      (r) {
        emit(const AuthState.registerSuccess());
      },
    );
  }

  void signInUsingEmail(String email, String password) async {
    emit(const AuthState.loading());
    final result = await authRepository.signInWithEmailAndPassword(
      emailAddress: email,
      password: password,
    );
    //if success create user

    result.fold(
      (l) {
        emit(AuthState.loginFailed(l));
      },
      (r) {
        emit(AuthState.loginSuccess(r));
      },
    );
  }

  void registerUsingGoogle() async {
    emit(const AuthState.loading());
    final result = await authRepository.registerWithGoogle();
    result.fold(
      (l) {
        emit(AuthState.loginFailed(l));
      },
      (r) {
        emit(AuthState.loginSuccess(r));
      },
    );
  }

  void checkAuth() async {
    emit(const AuthState.loading());
    final result = await authRepository.authCheck();
    //if success create user

    result.fold(
      (l) {
        emit(const AuthState.onAuthChecked(null));
      },
      (r) {
        emit(AuthState.onAuthChecked(r));
      },
    );
  }
}
