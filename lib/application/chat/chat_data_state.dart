part of 'chat_data_cubit.dart';

@freezed
class ChatDataState with _$ChatDataState {
  const ChatDataState._();
  const factory ChatDataState({
    @Default([]) List<Message> messages,
    File? file,
    Room? room,
    required User currentUser,
  }) = _ChatDataState;
  factory ChatDataState.initial() =>
      const ChatDataState(currentUser: User(id: ""));
  String get getRoomId => room?.id ?? "";

  User getAuthor() {
    if (room != null) {
      return room!.users.firstWhere((element) => element.id == currentUser.id);
    }
    throw Exception();
  }
}
