part of 'chat_data_cubit.dart';

@freezed
class ChatDataState with _$ChatDataState {
  const ChatDataState._();
  const factory ChatDataState({
    @Default([]) List<Message> messages,
    Room? room,
  }) = _ChatDataState;
  factory ChatDataState.initial() => const ChatDataState();
  String get getRoomId => room?.id ?? "";

  User getAuthor() {
    if (room != null) {
      return room!.users.first;
    }
    throw Exception();
  }
}
