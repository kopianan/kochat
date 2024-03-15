import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kochat/application/authentication/cubit/authentication_cubit.dart';
import 'package:kochat/injection.dart';
import 'package:kochat/presentation/routes/kopi_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: getIt<KopiRouter>().config(),
      builder: (context, child) {
        return BlocProvider(
          create: (context) => getIt<AuthenticationCubit>(),
          child: child,
        );
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
    );
  }
}
