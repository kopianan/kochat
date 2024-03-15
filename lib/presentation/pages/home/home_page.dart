import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:kochat/application/authentication/cubit/authentication_cubit.dart';
import 'package:kochat/application/room/room_cubit.dart';
import 'package:flutter_chat_types/src/room.dart';
import 'package:kochat/injection.dart';
import 'package:kochat/presentation/routes/kopi_router.dart';

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
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                context.router.replaceAll([const SplashRoute()]);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: BlocProvider(
        create: (context) => getIt<RoomCubit>()..streamRooms(),
        child: BlocBuilder<RoomCubit, RoomState>(
          builder: (context, state) {
            return state.maybeMap(orElse: () {
              return Container();
            }, onWatchRooms: (e) {
              return ListView.separated(
                itemCount: e.room.length,
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemBuilder: (context, index) {
                  final room = e.room[index];
                  var last = room.lastMessages?[0] as types.TextMessage?;

                  return ListTile(
                    onTap: () {
                      context.router.push(ChatRoute(room: room));
                    },
                    trailing: Text(
                        DateTime.fromMillisecondsSinceEpoch(room.updatedAt ?? 0)
                            .hour
                            .toString()),
                    title: Text(room.name ?? ""),
                    subtitle: Text(last?.text ?? ""),
                    leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(room.imageUrl ?? "")),
                  );
                },
              );
            });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(getIt<AuthenticationCubit>().state.currentChatUser) ; 
          context.router.push(const FriendRoute());
        },
      ),
    );
  }
}
