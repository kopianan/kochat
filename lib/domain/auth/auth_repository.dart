import 'package:firebase_auth/firebase_auth.dart';
import 'package:kochat/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });
  Future<Either<AuthFailure, User>> registerWithGoogle();
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });
  Future<Either<AuthFailure, User>> authCheck();
}
