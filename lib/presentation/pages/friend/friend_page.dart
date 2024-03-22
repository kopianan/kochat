import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:kochat/application/friend/friend_cubit.dart';
import 'package:kochat/application/room/room_cubit.dart';
import 'package:kochat/injection.dart';
import 'package:kochat/presentation/routes/kopi_router.dart';

@RoutePage()
class FriendPage extends StatelessWidget {
  const FriendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<FriendCubit>()..streamFriends(),
          ),
          BlocProvider(
            create: (context) => getIt<RoomCubit>(),
          ),
        ],
        child: BlocListener<RoomCubit, RoomState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              onRoomCreated: (r) {
                context.router.popAndPush(ChatRoute(room: r.room));
              },
            );
          },
          child: BlocBuilder<FriendCubit, FriendState>(
            builder: (context, state) {
              return state.maybeMap(
                orElse: () {
                  return Container();
                },
                onWatchFriends: (e) {
                  return Padding(
                    padding: const EdgeInsets.all(15),
                    child: CustomScrollView(
                      slivers: [
                        BlocBuilder<RoomCubit, RoomState>(
                          builder: (context, state) {
                            return SliverList.separated(
                              separatorBuilder: (context, index) {
                                return const Divider(
                                  height: 20,
                                );
                              },
                              itemCount: e.friends.length,
                              itemBuilder: (context, index) {
                                final friend = e.friends[index];
                                return ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  onTap: () {
                                    context
                                        .read<RoomCubit>()
                                        .createRoom(friend);
                                  },
                                  title: Text(friend.firstName ?? ""),
                                  leading: CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        NetworkImage(friend.imageUrl ?? ""),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
