part of 'friend_cubit.dart';

@freezed
class FriendState with _$FriendState {
  const factory FriendState.initial() = _Initial;
  const factory FriendState.onFail(FriendFailure failure) = _OnFail;
  const factory FriendState.onWatchFriends({@Default([]) List<User> friends}) =
      _OnWatchFriends;
}
