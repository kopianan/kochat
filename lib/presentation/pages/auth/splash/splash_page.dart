import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kochat/application/auth/auth_cubit.dart';
import 'package:kochat/application/authentication/cubit/authentication_cubit.dart';
import 'package:kochat/injection.dart';
import 'package:kochat/presentation/routes/kopi_router.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthCubit>()..checkAuth(),
        ),
      ],
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            onAuthChecked: (value) {
              if (value.user == null) {
                context.router.replaceAll([const WelcomeRoute()]);
              } else {
                context.router.replaceAll([const HomeRoute()]);
              }
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
              body: state.maybeMap(
            orElse: () {
              return Container();
            },
            loading: (e) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ));
        },
      ),
    );
  }
}
