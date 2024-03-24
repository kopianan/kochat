import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kochat/application/authentication/cubit/authentication_cubit.dart';
import 'package:kochat/application/room/room_cubit.dart';
import 'package:flutter_chat_types/src/room.dart';
import 'package:kochat/injection.dart';
import 'package:kochat/main.dart';
import 'package:kochat/presentation/routes/kopi_router.dart';
import 'package:kochat/util/date_formatter.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<AuthenticationCubit>()..getCurrentUser(),
          ),
          BlocProvider(
            create: (context) => getIt<RoomCubit>()..streamRooms(),
          ),
        ],
        child: BlocBuilder<AuthenticationCubit, AuthenticationState>(
          builder: (context, state) {
            return BlocBuilder<RoomCubit, RoomState>(
              builder: (context, state) {
                return state.maybeMap(orElse: () {
                  return Container();
                }, onWatchRooms: (e) {
                  return CustomScrollView(slivers: [
                    SliverAppBar(
                      titleTextStyle: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30),
                      title: const Text(
                        "Kochat",
                      ),
                      actions: [
                        PopupMenuButton<String>(
                          icon: const Icon(Icons.more_vert), // Menu button icon
                          onSelected: (value) {
                            if (value == 'logout') {
                              FirebaseAuth.instance.signOut();
                              GoogleSignIn().signOut();
                              context.router.replaceAll([const SplashRoute()]);
                            }
                          },
                          itemBuilder: (BuildContext context) => [
                            const PopupMenuItem<String>(
                              value: 'logout',
                              child: Text('Logout'),
                            ),
                          ],
                        )
                      ],
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      sliver: SliverList.separated(
                        itemCount: e.room.length,
                        separatorBuilder: (context, index) {
                          return const Divider();
                        },
                        itemBuilder: (context, index) {
                          final room = e.room[index];
                          var last =
                              room.lastMessages?[0] as types.TextMessage?;

                          return ListTile(
                            contentPadding: EdgeInsets.zero,
                            onTap: () {
                              context.router.push(ChatRoute(room: room));
                            },
                            trailing: Text(
                                DateFormatter().formatIntDate(room.updatedAt)),
                            title: Text(room.name ?? ""),
                            subtitle: Text(last?.text ?? ""),
                            leading: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    NetworkImage(room.imageUrl ?? "")),
                          );
                        },
                      ),
                    )
                  ]);
                });
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.message),
        onPressed: () async {
          initEasyLoading();
          EasyLoading.show();
          await Future.delayed(const Duration(seconds: 2));
          EasyLoading.dismiss();
          // print(getIt<AuthenticationCubit>().state.currentChatUser);
          // context.router.push(const FriendRoute());
        },
      ),
    );
  }
}
