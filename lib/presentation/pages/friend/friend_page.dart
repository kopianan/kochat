import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:kochat/application/friend/friend_cubit.dart';
import 'package:kochat/injection.dart';

@RoutePage()
class FriendPage extends StatelessWidget {
  const FriendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => getIt<FriendCubit>()..streamFriends(),
        child: BlocBuilder<FriendCubit, FriendState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () {
                return Container();
              },
              onWatchFriends: (e) {
                return ListView.builder(
                  itemCount: e.friends.length,
                  itemBuilder: (context, index) {
                    final friend = e.friends[index];
                    return ListTile(
                      onTap: () {
                        //create room
                        FirebaseChatCore.instance.createRoom(friend);
                      },
                      title: Text(
                        friend.firstName ?? "No Name",
                        style: const TextStyle(color: Colors.green),
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
