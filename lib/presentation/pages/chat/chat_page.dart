import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_types/src/room.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:kochat/application/authentication/cubit/authentication_cubit.dart';
// import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:kochat/application/chat/chat_data_cubit.dart';
import 'package:kochat/application/room/room_cubit.dart';
import 'package:kochat/injection.dart';
import 'package:kochat/util/file_util.dart';
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

  final authenticationCubit = getIt<AuthenticationCubit>();
  @override
  void initState() {
    super.initState();
  }

  void _handleAtachmentPressed() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) => SafeArea(
        child: SizedBox(
          height: 144,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextButton(
                onPressed: () async {
                  Navigator.pop(context);
                  // _handleImageSelection();
                  final data = await FileUtil.pickImages();
                  //send directly
                  if (data != null) {
                    //send image
                    roomCubit.uploadImage(data, widget.room.id);
                    //set name and size
                    chatDataCubit.setCurrFile(data);
                  }
                },
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Photo'),
                ),
              ),
              TextButton(
                onPressed: () async {
                  Navigator.pop(context);
                  // _handleFileSelection();
                },
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('File'),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Cancel'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final updatedMessage = message.copyWith(previewData: previewData);

    FirebaseChatCore.instance.updateMessage(updatedMessage, widget.room.id);
  }
  // void _handleImageSelection() async {
  //   final result = await ImagePicker().pickImage(
  //     imageQuality: 70,
  //     maxWidth: 1440,
  //     source: ImageSource.gallery,
  //   );

  //   if (result != null) {
  //     _setAttachmentUploading(true);
  //     final file = File(result.path);
  //     final size = file.lengthSync();
  //     final bytes = await result.readAsBytes();
  //     final image = await decodeImageFromList(bytes);
  //     final name = result.name;

  //     try {
  //       final reference = FirebaseStorage.instance.ref(name);
  //       await reference.putFile(file);
  //       final uri = await reference.getDownloadURL();

  //       final message = types.PartialImage(
  //         height: image.height.toDouble(),
  //         name: name,
  //         size: size,
  //         uri: uri,
  //         width: image.width.toDouble(),
  //       );

  //       FirebaseChatCore.instance.sendMessage(
  //         message,
  //         widget.room.id,
  //       );
  //       _setAttachmentUploading(false);
  //     } finally {
  //       _setAttachmentUploading(false);
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => chatDataCubit
            ..setRoomData(
                widget.room, authenticationCubit.state.getCurrentUserId),
        ),
        BlocProvider(
          create: (context) => roomCubit..streamMessages(widget.room),
        ),
      ],
      child: BlocListener<RoomCubit, RoomState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            onImageUploaded: (e) {
              //create partial image.
              final file = chatDataCubit.state.file;
              if (file != null) {
                final partialImage = types.PartialImage(
                  size: file.lengthSync(),
                  name: file.path.split('/').last,
                  uri: e.uri,
                );

                roomCubit.sendMessage(partialImage, widget.room.id);
              }
            },
            onMessageSent: (value) {},
            onWatchMessages: (value) {
              chatDataCubit.setMessages(value.messages);
            },
          );
        },
        child: BlocBuilder<ChatDataCubit, ChatDataState>(
          builder: (context, state) {
            return Scaffold(
              body: Chat(
                  messages: chatDataCubit.state.messages,
                  showUserNames: true,
                  showUserAvatars: true,
                  isAttachmentUploading: false,
                  onPreviewDataFetched: _handlePreviewDataFetched,
                  theme: DefaultChatTheme(
                    inputMargin: const EdgeInsets.all(10),
                    inputTextColor: Colors.white,
                    inputBackgroundColor: Colors.blueGrey.shade300,
                    inputBorderRadius:
                        const BorderRadius.all(Radius.circular(10)),
                  ),
                  onAttachmentPressed: _handleAtachmentPressed,
                  onSendPressed: (text) {
                    final messages = types.PartialText(
                      text: text.text,
                    );
                    context.read<RoomCubit>().sendMessage(
                          messages,
                          chatDataCubit.state.getRoomId,
                        );
                    chatDataCubit.updateLastMessage(messages);
                  },
                  user: chatDataCubit.state.getAuthor()),
            );
          },
        ),
      ),
    );
  }
}
