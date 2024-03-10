import 'package:firebase_auth/firebase_auth.dart';
import 'package:kochat/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });
  Future<Either<AuthFailure, Unit>> registerWithGoogle();
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<Either<AuthFailure, User>> authCheck();
}
