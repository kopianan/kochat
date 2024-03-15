import 'package:bloc/bloc.dart';

import 'package:flutter_chat_types/src/message.dart';
import 'package:flutter_chat_types/src/user.dart';
import 'package:flutter_chat_types/src/room.dart';
import 'package:firebase_auth/firebase_auth.dart' as fbAuth;
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'chat_data_state.dart';
part 'chat_data_cubit.freezed.dart';

@injectable
class ChatDataCubit extends Cubit<ChatDataState> {
  ChatDataCubit() : super(ChatDataState.initial());

  void updateLastMessage<T>(T message) {
    Room? updatedRoom;
    if (message is types.PartialText) {
      final textMessage = types.TextMessage.fromPartial(
        author: state.getAuthor(),
        id: const Uuid().v4(),
        partialText: message,
      );
      updatedRoom = state.room?.copyWith(
          updatedAt: DateTime.now().millisecondsSinceEpoch,
          lastMessages: [textMessage]);
    }
    emit(state.copyWith(room: updatedRoom));
  }

  void setRoomData(Room room, String currUserId) {
    emit(state.copyWith(
      room: room,
      currentUser: User(id: currUserId),
    ));
  }

  void setMessages(List<Message> messages) {
    emit(state.copyWith(messages: messages));
  }
}
