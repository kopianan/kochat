import 'package:dartz/dartz.dart';
import 'package:flutter_chat_types/src/user.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:injectable/injectable.dart';
import 'package:kochat/domain/friend/friend_failure.dart';
import 'package:kochat/domain/friend/friend_repository.dart';

@Singleton(as: FriendRepository)
class FriendDatasource implements FriendRepository {
  FriendDatasource(this.fbChatCore);
  final FirebaseChatCore fbChatCore;

  @override
  Stream<Either<FriendFailure, List<User>>> watchAllFriend() async* {
    yield* fbChatCore.users().map((event) => right(event));
  }
}
