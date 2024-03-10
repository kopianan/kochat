import 'package:dartz/dartz.dart';
import 'package:kochat/domain/friend/friend_failure.dart';
import 'package:flutter_chat_types/src/user.dart';

abstract class FriendRepository {
  Stream<Either<FriendFailure, List<User>>> watchAllFriend();
}
