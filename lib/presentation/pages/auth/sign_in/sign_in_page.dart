import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kochat/application/auth/auth_cubit.dart';
import 'package:kochat/application/authentication/cubit/authentication_cubit.dart';
import 'package:kochat/injection.dart';
import 'package:kochat/presentation/routes/kopi_router.dart';
import 'package:kochat/presentation/widgets/primary_button.dart';
import 'package:kochat/theme/kopi_color.dart';
import 'package:sign_in_button/sign_in_button.dart';

@RoutePage()
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailCtr = TextEditingController(text: "anan@gmail.com");
  final pwdCtr = TextEditingController(text: "123456");
  final authCubi = getIt<AuthCubit>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => authCubi,
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {
              EasyLoading.dismiss();
            },
            loading: (e) {
              EasyLoading.show();
            },
            loginFailed: (e) {
              EasyLoading.dismiss();
            },
            loginSuccess: (value) {
              EasyLoading.dismiss();
              getIt<KopiRouter>().replaceAll([const HomeRoute()]);
            },
          );
        },
        child: Scaffold(
          appBar: AppBar(),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Please Sign In !",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text("Sign in account...")
                  ],
                ),
                const SizedBox(height: 50),
                Column(
                  children: [
                    TextFormField(
                      controller: emailCtr,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Email",
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: pwdCtr,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Passpord",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Spacer(),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, state) {
                        return PrimaryButton(
                          isLoading: state.maybeMap(
                            orElse: () {
                              return false;
                            },
                            loading: (e) {
                              return true;
                            },
                          ),
                          onTap: () {
                            authCubi.signInUsingEmail(
                                emailCtr.text, pwdCtr.text);
                          },
                          label: "Sign In",
                        );
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
                          "Or Sign In with",
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
                        elevation: 10,
                        Buttons.google,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        text: "Sign in with Google",
                        onPressed: () async {
                          authCubi.registerUsingGoogle();
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: SignInButton(
                        elevation: 10,
                        Buttons.apple,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        text: "Sign in with Apple",
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
                            const TextSpan(text: "I don't have an account"),
                            const TextSpan(text: " "),
                            TextSpan(
                              text: "Sign Up",
                              recognizer: TapGestureRecognizer()
                                ..onTap = () =>
                                    context.router.push(const SignUpRoute()),
                              style: TextStyle(
                                color: KopiColor.primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
