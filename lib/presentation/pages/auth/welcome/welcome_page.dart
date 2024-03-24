import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kochat/presentation/routes/kopi_router.dart';
import 'package:kochat/presentation/widgets/primary_button.dart';
import 'package:kochat/presentation/widgets/secondary_button.dart';
import 'package:kochat/theme/kopi_color.dart';

import 'package:sign_in_button/sign_in_button.dart';

@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to\nKochat!",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30),
                    Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries")
                  ],
                ),
              ),
              Column(
                children: [
                  PrimaryButton(
                    label: "Sign In",
                    onTap: () {
                      context.router.push(const SignInRoute());
                    },
                  ),
                  const SizedBox(height: 20),
                  SecondaryButton(
                    label: "Create Account",
                    onTap: () {
                      context.router.push(const SignUpRoute());
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
