import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseInjectableModule {
  // @lazySingleton
  // GoogleSignIn get googleSignIn => GoogleSignIn();
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @singleton
  FirebaseChatCore get fbChatCore => FirebaseChatCore.instance;
  @singleton
  FirebaseStorage get fbStorage => FirebaseStorage.instance;
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn(scopes: ['email']);
  // @lazySingleton
  // Firestore get firestore => Firestore.instance;
}
