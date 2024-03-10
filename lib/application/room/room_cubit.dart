import 'package:dartz/dartz.dart';
import 'package:flutter_chat_types/src/room.dart';
import 'package:flutter_chat_types/src/message.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kochat/domain/room/room_repository.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:uuid/uuid.dart';
part 'room_state.dart';
part 'room_cubit.freezed.dart';

@injectable
class RoomCubit extends Cubit<RoomState> {
  RoomCubit(this.roomRepository) : super(const RoomState.initial());
  final RoomRepository roomRepository;

  void streamRooms() {
    roomRepository.watchRooms().listen((event) {
      event.fold(
        (l) => emit(const RoomState.onWatchRoomError()),
        (r) => emit(RoomState.onWatchRooms(r)),
      );
    });
  }

  void streamMessages(Room room) {
    roomRepository.watchMessages(room).listen((event) {
      event.fold(
        (l) => emit(const RoomState.onWatchMessageError()),
        (r) => emit(RoomState.onWatchMessages(r)),
      );
    });
  }

  void sendMessage(dynamic partialMessage, String roomId) {
    final result = roomRepository.sendMessage(partialMessage, roomId);
    emit(RoomState.onMessageSent(partialMessage));
  }

  void updateRoom(types.Room room) async {
    final result = await roomRepository.updateRoom(room);
  }
}
