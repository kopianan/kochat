import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kochat/domain/room/room_failure.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as chatType;
import 'package:flutter_chat_types/src/room.dart';
import 'package:flutter_chat_types/src/message.dart';

abstract class RoomRepository {
  Stream<Either<RoomFailure, List<chatType.Room>>> watchRooms();
  Stream<Either<RoomFailure, List<Message>>> watchMessages(Room room);
  Future<Either<RoomFailure, Unit>> sendMessage<T>(T message, String roomId);
  Future<Either<RoomFailure, String>> uploadImage<T>(File file, String roomId);
  Future<Either<RoomFailure, Room>> updateRoom(Room room);
  Future<Either<RoomFailure, Room>> createSingleRoom(chatType.User otherUser);
}
