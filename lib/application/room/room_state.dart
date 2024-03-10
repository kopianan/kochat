part of 'room_cubit.dart';

@freezed
class RoomState with _$RoomState {
  const factory RoomState.initial() = _Initial;
  const factory RoomState.onWatchRoomError() = _OnWatchRoomError;
  const factory RoomState.onWatchMessageError() = _OnWatchMessageError;
  const factory RoomState.onMessageSent(dynamic partialMessage) =
      _OnMessageSent;
  const factory RoomState.onWatchMessages(List<Message> messages) =
      _OnWatchMessages;
  const factory RoomState.onWatchRooms(List<Room> room) = _OnWatchRooms;
}
