import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:injectable/injectable.dart';
import 'package:kochat/domain/room/room_failure.dart';
import 'package:kochat/domain/room/room_repository.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:mime/mime.dart';

@Singleton(as: RoomRepository)
class RoomDatasource implements RoomRepository {
  RoomDatasource(this.fbChat, this.fbStorage);
  final FirebaseChatCore fbChat;
  final FirebaseStorage fbStorage;

  @override
  Stream<Either<RoomFailure, List<types.Room>>> watchRooms() async* {
    yield* fbChat.rooms(orderByUpdatedAt: true).map(
      (event) {
        return right(event);
      },
    );
  }

  @override
  Stream<Either<RoomFailure, List<types.Message>>> watchMessages(
      types.Room room) async* {
    yield* fbChat.messages(room, limit: 100).map(
      (event) {
        return right(event);
      },
    );
  }

  @override
  Future<Either<RoomFailure, Unit>> sendMessage<T>(
      T message, String roomId) async {
    try {
      fbChat.sendMessage(message, roomId);
      return right(unit);
    } catch (e) {
      return left(const RoomFailure.serverError());
    }
  }

  @override
  Future<Either<RoomFailure, types.Room>> updateRoom(types.Room room) async {
    try {
      fbChat.updateRoom(room);
      return right(room);
    } catch (e) {
      return left(const RoomFailure.serverError());
    }
  }

  @override
  Future<Either<RoomFailure, types.Room>> createSingleRoom(
      types.User otherUser) async {
    try {
      final room = await fbChat.createRoom(otherUser);
      return right(room);
    } catch (e) {
      return left(const RoomFailure.serverError());
    }
  }

  @override
  Future<Either<RoomFailure, String>> uploadImage<T>(
      File file, String roomId) async {
    //check file first.
    final mimeType = lookupMimeType(file.path);
    String path = 'other';
    if (mimeType != null) {
      path = mimeType.split('/').first;
    }
    final ref = fbStorage.ref(roomId).child(path);
    await ref.putFile(file);
    final uri = await ref.getDownloadURL();
    return right(uri);
  }
}
