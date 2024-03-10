import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:kochat/presentation/pages/auth/splash/splash_page.dart';
import 'package:kochat/presentation/pages/chat/chat_page.dart';
import 'package:kochat/presentation/pages/friend/friend_page.dart';
import 'package:kochat/presentation/pages/home/home_page.dart';
import 'package:kochat/presentation/pages/auth/sign_in/sign_in_page.dart';
import 'package:kochat/presentation/pages/auth/sign_up/sign_up_page.dart';
import 'package:kochat/presentation/pages/auth/welcome/welcome_page.dart';
import 'package:flutter_chat_types/src/user.dart';
import 'package:flutter_chat_types/src/room.dart';
part 'kopi_router.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class KopiRouter extends _$KopiRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: ChatRoute.page),
        AutoRoute(
          page: WelcomeRoute.page,
        ),
        AutoRoute(
          page: SignInRoute.page,
        ),
        AutoRoute(
          page: FriendRoute.page,
        ),
        AutoRoute(page: SignUpRoute.page),
      ];
}
