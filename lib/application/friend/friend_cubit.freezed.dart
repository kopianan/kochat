// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FriendState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FriendFailure failure) onFail,
    required TResult Function(List<User> friends) onWatchFriends,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FriendFailure failure)? onFail,
    TResult? Function(List<User> friends)? onWatchFriends,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FriendFailure failure)? onFail,
    TResult Function(List<User> friends)? onWatchFriends,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnFail value) onFail,
    required TResult Function(_OnWatchFriends value) onWatchFriends,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnFail value)? onFail,
    TResult? Function(_OnWatchFriends value)? onWatchFriends,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnFail value)? onFail,
    TResult Function(_OnWatchFriends value)? onWatchFriends,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendStateCopyWith<$Res> {
  factory $FriendStateCopyWith(
          FriendState value, $Res Function(FriendState) then) =
      _$FriendStateCopyWithImpl<$Res, FriendState>;
}

/// @nodoc
class _$FriendStateCopyWithImpl<$Res, $Val extends FriendState>
    implements $FriendStateCopyWith<$Res> {
  _$FriendStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FriendStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FriendState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FriendFailure failure) onFail,
    required TResult Function(List<User> friends) onWatchFriends,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FriendFailure failure)? onFail,
    TResult? Function(List<User> friends)? onWatchFriends,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FriendFailure failure)? onFail,
    TResult Function(List<User> friends)? onWatchFriends,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnFail value) onFail,
    required TResult Function(_OnWatchFriends value) onWatchFriends,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnFail value)? onFail,
    TResult? Function(_OnWatchFriends value)? onWatchFriends,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnFail value)? onFail,
    TResult Function(_OnWatchFriends value)? onWatchFriends,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FriendState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$OnFailImplCopyWith<$Res> {
  factory _$$OnFailImplCopyWith(
          _$OnFailImpl value, $Res Function(_$OnFailImpl) then) =
      __$$OnFailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FriendFailure failure});

  $FriendFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$OnFailImplCopyWithImpl<$Res>
    extends _$FriendStateCopyWithImpl<$Res, _$OnFailImpl>
    implements _$$OnFailImplCopyWith<$Res> {
  __$$OnFailImplCopyWithImpl(
      _$OnFailImpl _value, $Res Function(_$OnFailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$OnFailImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FriendFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FriendFailureCopyWith<$Res> get failure {
    return $FriendFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$OnFailImpl implements _OnFail {
  const _$OnFailImpl(this.failure);

  @override
  final FriendFailure failure;

  @override
  String toString() {
    return 'FriendState.onFail(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnFailImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnFailImplCopyWith<_$OnFailImpl> get copyWith =>
      __$$OnFailImplCopyWithImpl<_$OnFailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FriendFailure failure) onFail,
    required TResult Function(List<User> friends) onWatchFriends,
  }) {
    return onFail(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FriendFailure failure)? onFail,
    TResult? Function(List<User> friends)? onWatchFriends,
  }) {
    return onFail?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FriendFailure failure)? onFail,
    TResult Function(List<User> friends)? onWatchFriends,
    required TResult orElse(),
  }) {
    if (onFail != null) {
      return onFail(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnFail value) onFail,
    required TResult Function(_OnWatchFriends value) onWatchFriends,
  }) {
    return onFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnFail value)? onFail,
    TResult? Function(_OnWatchFriends value)? onWatchFriends,
  }) {
    return onFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnFail value)? onFail,
    TResult Function(_OnWatchFriends value)? onWatchFriends,
    required TResult orElse(),
  }) {
    if (onFail != null) {
      return onFail(this);
    }
    return orElse();
  }
}

abstract class _OnFail implements FriendState {
  const factory _OnFail(final FriendFailure failure) = _$OnFailImpl;

  FriendFailure get failure;
  @JsonKey(ignore: true)
  _$$OnFailImplCopyWith<_$OnFailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnWatchFriendsImplCopyWith<$Res> {
  factory _$$OnWatchFriendsImplCopyWith(_$OnWatchFriendsImpl value,
          $Res Function(_$OnWatchFriendsImpl) then) =
      __$$OnWatchFriendsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<User> friends});
}

/// @nodoc
class __$$OnWatchFriendsImplCopyWithImpl<$Res>
    extends _$FriendStateCopyWithImpl<$Res, _$OnWatchFriendsImpl>
    implements _$$OnWatchFriendsImplCopyWith<$Res> {
  __$$OnWatchFriendsImplCopyWithImpl(
      _$OnWatchFriendsImpl _value, $Res Function(_$OnWatchFriendsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friends = null,
  }) {
    return _then(_$OnWatchFriendsImpl(
      friends: null == friends
          ? _value._friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$OnWatchFriendsImpl implements _OnWatchFriends {
  const _$OnWatchFriendsImpl({final List<User> friends = const []})
      : _friends = friends;

  final List<User> _friends;
  @override
  @JsonKey()
  List<User> get friends {
    if (_friends is EqualUnmodifiableListView) return _friends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friends);
  }

  @override
  String toString() {
    return 'FriendState.onWatchFriends(friends: $friends)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnWatchFriendsImpl &&
            const DeepCollectionEquality().equals(other._friends, _friends));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_friends));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnWatchFriendsImplCopyWith<_$OnWatchFriendsImpl> get copyWith =>
      __$$OnWatchFriendsImplCopyWithImpl<_$OnWatchFriendsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FriendFailure failure) onFail,
    required TResult Function(List<User> friends) onWatchFriends,
  }) {
    return onWatchFriends(friends);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FriendFailure failure)? onFail,
    TResult? Function(List<User> friends)? onWatchFriends,
  }) {
    return onWatchFriends?.call(friends);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FriendFailure failure)? onFail,
    TResult Function(List<User> friends)? onWatchFriends,
    required TResult orElse(),
  }) {
    if (onWatchFriends != null) {
      return onWatchFriends(friends);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnFail value) onFail,
    required TResult Function(_OnWatchFriends value) onWatchFriends,
  }) {
    return onWatchFriends(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnFail value)? onFail,
    TResult? Function(_OnWatchFriends value)? onWatchFriends,
  }) {
    return onWatchFriends?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnFail value)? onFail,
    TResult Function(_OnWatchFriends value)? onWatchFriends,
    required TResult orElse(),
  }) {
    if (onWatchFriends != null) {
      return onWatchFriends(this);
    }
    return orElse();
  }
}

abstract class _OnWatchFriends implements FriendState {
  const factory _OnWatchFriends({final List<User> friends}) =
      _$OnWatchFriendsImpl;

  List<User> get friends;
  @JsonKey(ignore: true)
  _$$OnWatchFriendsImplCopyWith<_$OnWatchFriendsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
