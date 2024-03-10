import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kochat/presentation/routes/kopi_router.dart';
import 'package:kochat/presentation/widgets/primary_button.dart';
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
                    label: "Create Account",
                    onTap: () {
                      context.router.push(const SignUpRoute()); 
                    },
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                          child: Divider(
                        color: Colors.grey.shade400,
                        thickness: 1.5,
                      )),
                      const SizedBox(width: 20),
                      Text(
                        "Or Sign Up with",
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                          child: Divider(
                        color: Colors.grey.shade400,
                        thickness: 1.5,
                      )),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: SignInButton(
                      Buttons.google,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      text: "Sign up with Google",
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: SignInButton(
                      Buttons.apple,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      text: "Sign up with Apple",
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                        style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          const TextSpan(text: "I already have an account"),
                          const TextSpan(text: " "),
                          TextSpan(
                            text: "Sign In",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () =>
                                  context.router.push(const SignInRoute()),
                            style: TextStyle(
                              color: KopiColor.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
