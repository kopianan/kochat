// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_data_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatDataState {
  List<Message> get messages => throw _privateConstructorUsedError;
  types.Room? get room => throw _privateConstructorUsedError;
  types.User get currentUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatDataStateCopyWith<ChatDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDataStateCopyWith<$Res> {
  factory $ChatDataStateCopyWith(
          ChatDataState value, $Res Function(ChatDataState) then) =
      _$ChatDataStateCopyWithImpl<$Res, ChatDataState>;
  @useResult
  $Res call({List<Message> messages, types.Room? room, types.User currentUser});
}

/// @nodoc
class _$ChatDataStateCopyWithImpl<$Res, $Val extends ChatDataState>
    implements $ChatDataStateCopyWith<$Res> {
  _$ChatDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? room = freezed,
    Object? currentUser = null,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as types.Room?,
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as types.User,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatDataStateImplCopyWith<$Res>
    implements $ChatDataStateCopyWith<$Res> {
  factory _$$ChatDataStateImplCopyWith(
          _$ChatDataStateImpl value, $Res Function(_$ChatDataStateImpl) then) =
      __$$ChatDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Message> messages, types.Room? room, types.User currentUser});
}

/// @nodoc
class __$$ChatDataStateImplCopyWithImpl<$Res>
    extends _$ChatDataStateCopyWithImpl<$Res, _$ChatDataStateImpl>
    implements _$$ChatDataStateImplCopyWith<$Res> {
  __$$ChatDataStateImplCopyWithImpl(
      _$ChatDataStateImpl _value, $Res Function(_$ChatDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? room = freezed,
    Object? currentUser = null,
  }) {
    return _then(_$ChatDataStateImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as types.Room?,
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as types.User,
    ));
  }
}

/// @nodoc

class _$ChatDataStateImpl extends _ChatDataState {
  const _$ChatDataStateImpl(
      {final List<Message> messages = const [],
      this.room,
      required this.currentUser})
      : _messages = messages,
        super._();

  final List<Message> _messages;
  @override
  @JsonKey()
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final types.Room? room;
  @override
  final types.User currentUser;

  @override
  String toString() {
    return 'ChatDataState(messages: $messages, room: $room, currentUser: $currentUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDataStateImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_messages), room, currentUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatDataStateImplCopyWith<_$ChatDataStateImpl> get copyWith =>
      __$$ChatDataStateImplCopyWithImpl<_$ChatDataStateImpl>(this, _$identity);
}

abstract class _ChatDataState extends ChatDataState {
  const factory _ChatDataState(
      {final List<Message> messages,
      final types.Room? room,
      required final types.User currentUser}) = _$ChatDataStateImpl;
  const _ChatDataState._() : super._();

  @override
  List<Message> get messages;
  @override
  types.Room? get room;
  @override
  types.User get currentUser;
  @override
  @JsonKey(ignore: true)
  _$$ChatDataStateImplCopyWith<_$ChatDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
