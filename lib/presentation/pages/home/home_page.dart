import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:kochat/application/authentication/cubit/authentication_cubit.dart';
import 'package:kochat/application/room/room_cubit.dart';
import 'package:flutter_chat_types/src/room.dart';
import 'package:kochat/injection.dart';
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
    return SafeArea(
      top: true,
      child: Scaffold(
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  getIt<AuthenticationCubit>()..getCurrentUser(),
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
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: CustomScrollView(slivers: [
                        SliverToBoxAdapter(
                          child: Row(
                            children: [
                              const Text(
                                "Kochat",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              PopupMenuButton<String>(
                                icon: const Icon(
                                    Icons.more_vert), // Menu button icon
                                onSelected: (value) {
                                  if (value == 'logout') {
                                    FirebaseAuth.instance.signOut();
                                    context.router
                                        .replaceAll([const SplashRoute()]);
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
                        ),
                        const SliverPadding(padding: EdgeInsets.only(top: 20)),
                        SliverList.separated(
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
                              trailing: Text(DateFormatter()
                                  .formatIntDate(room.updatedAt)),
                              title: Text(room.name ?? ""),
                              subtitle: Text(last?.text ?? ""),
                              leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      NetworkImage(room.imageUrl ?? "")),
                            );
                          },
                        )
                      ]),
                    );
                  });
                },
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.message),
          onPressed: () {
            print(getIt<AuthenticationCubit>().state.currentChatUser);
            context.router.push(const FriendRoute());
          },
        ),
      ),
    );
  }
}
