import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_failure.freezed.dart';

@freezed
abstract class FriendFailure with _$FriendFailure {
  const factory FriendFailure.serverError() = ServerError;
}
