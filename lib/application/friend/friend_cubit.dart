import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_chat_types/src/user.dart';
import 'package:kochat/domain/friend/friend_failure.dart';
import 'package:kochat/domain/friend/friend_repository.dart';

part 'friend_state.dart';
part 'friend_cubit.freezed.dart';

@injectable
class FriendCubit extends Cubit<FriendState> {
  FriendCubit(this.friendRepository) : super(const FriendState.initial());
  final FriendRepository friendRepository;
  void streamFriends() {
    friendRepository.watchAllFriend().listen((event) {
      event.fold(
        (l) => emit(FriendState.onFail(l)),
        (r) => emit(FriendState.onWatchFriends(friends: r)),
      );
    });
  }
}
