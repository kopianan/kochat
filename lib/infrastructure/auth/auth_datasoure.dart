import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:kochat/domain/auth/auth_failure.dart';
import 'package:kochat/domain/auth/auth_repository.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as chatType;

@Singleton(as: AuthRepository)
class AuthDatasoure implements AuthRepository {
  AuthDatasoure(this.firebaseAuth, this.fbChatCore, this.googleSignIn);
  final auth.FirebaseAuth firebaseAuth;
  final FirebaseChatCore fbChatCore;
  final GoogleSignIn googleSignIn;

  void _createUserOnFirestore(auth.User user) async {
    final chatUser = chatType.User(
      firstName: user.displayName ?? "",
      id: user.uid,
      imageUrl: user.photoURL ?? 'https://i.pravatar.cc/300',
      createdAt: DateTime.now().millisecondsSinceEpoch,
      updatedAt: DateTime.now().millisecondsSinceEpoch,
    );

    await fbChatCore.createUserInFirestore(chatUser);
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      final response = await firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      final user = response.user;
      if (user != null) {
        _createUserOnFirestore(user);
        return right(unit);
      }
      return left(const AuthFailure.userNotFound());
    } on auth.FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else if (e.code == 'invalid-email') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, auth.User>> authCheck() async {
    final user = firebaseAuth.currentUser;
    if (user == null) {
      return left(const AuthFailure.unAuthenticated());
    }
    return right(user);
  }

  @override
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword(
      {required String emailAddress, required String password}) async {
    try {
      final user = await firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      final fbUser = user.user;
      if (fbUser != null) {
        return right(fbUser);
      }
      return left(const AuthFailure.userNotFound());
    } on auth.FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return left(const AuthFailure.userNotFound());
      } else if (e.code == 'wrong-password') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, User>> registerWithGoogle() async {
    try {
      final googleUser = await googleSignIn.signIn();

      if (googleUser != null) {
        final googleAuth = await googleUser.authentication;
        //user exist.
        final credential = auth.GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        final result = await firebaseAuth.signInWithCredential(credential);
        final user = result.user;
        if (user != null) {
          _createUserOnFirestore(user);
          return right(user);
        }
        return left(const AuthFailure.userNotFound());
      } else {
        return left(const AuthFailure.cancelledByUser());
      }
    } on auth.FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        //maybe do logic here
        return left(const AuthFailure.userNotFound());
      }
      return left(const AuthFailure.serverError());
    }
  }
}
