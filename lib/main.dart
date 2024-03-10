import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kochat/firebase_options.dart';
import 'package:kochat/injection.dart';
import 'package:kochat/presentation/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();
  runApp(const App());
}
