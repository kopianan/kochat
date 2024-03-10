import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_types/src/room.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
// import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:kochat/application/chat/chat_data_cubit.dart';
import 'package:kochat/application/room/room_cubit.dart';
import 'package:kochat/injection.dart';
import 'package:uuid/uuid.dart';

@RoutePage()
class ChatPage extends StatefulWidget {
  const ChatPage({super.key, required this.room});

  final Room room;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final chatDataCubit = getIt<ChatDataCubit>();
  final roomCubit = getIt<RoomCubit>();
  @override
  void dispose() {
    final currRoom = chatDataCubit.state.room;
    if (currRoom != null) {
      roomCubit.updateRoom(currRoom);
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => chatDataCubit..setRoomData(widget.room),
        ),
        BlocProvider(
          create: (context) => roomCubit..streamMessages(widget.room),
        ),
      ],
      child: BlocListener<RoomCubit, RoomState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            onMessageSent: (value) {},
            onWatchMessages: (value) {
              print(value);

              chatDataCubit.setMessages(value.messages);
            },
          );
        },
        child: Scaffold(
          body: BlocBuilder<ChatDataCubit, ChatDataState>(
            builder: (context, state) {
              return Chat(
                messages: state.messages,
                showUserNames: true,
                onSendPressed: (text) {
                  final messages = types.PartialText(
                    text: text.text,
                  );
                  roomCubit.sendMessage(messages, state.getRoomId);
                  chatDataCubit.updateLastMessage(messages);
                },
                user: state.getAuthor(),
              );
            },
          ),
        ),
      ),
    );
  }
}
