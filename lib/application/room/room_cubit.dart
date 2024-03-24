import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_chat_types/src/room.dart';
import 'package:flutter_chat_types/src/message.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kochat/domain/room/room_failure.dart';
import 'package:kochat/domain/room/room_repository.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:uuid/uuid.dart';
part 'room_state.dart';
part 'room_cubit.freezed.dart';

@injectable
class RoomCubit extends Cubit<RoomState> {
  RoomCubit(this.roomRepository) : super(const RoomState.initial());
  final RoomRepository roomRepository;

  StreamSubscription<Either<RoomFailure, List<Message>>>? _messageSubscription;
  StreamSubscription<Either<RoomFailure, List<Room>>>? _roomSubscription;

  void streamRooms() {
    _roomSubscription?.cancel();
    _roomSubscription = roomRepository.watchRooms().listen((event) {
      event.fold(
        (l) => emit(const RoomState.onWatchRoomError()),
        (r) => emit(RoomState.onWatchRooms(r)),
      );
    });
  }

  void streamMessages(Room room) {
    _messageSubscription?.cancel();
    _messageSubscription = roomRepository.watchMessages(room).listen((event) {
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

  void uploadImage(File file, String roomId) async {
    emit(const RoomState.loading());
    final result = await roomRepository.uploadImage(file, roomId);
    result.fold(
      (l) => null,
      (r) => emit(RoomState.onImageUploaded(r)),
    );
  }

  void updateRoom(types.Room room) async {
    final result = await roomRepository.updateRoom(room);
  }

  void createRoom(types.User otherUser) async {
    emit(const RoomState.loading());
    final result = await roomRepository.createSingleRoom(otherUser);
    result.fold(
      (l) => null,
      (r) => emit(RoomState.onRoomCreated(r)),
    );
  }
}
