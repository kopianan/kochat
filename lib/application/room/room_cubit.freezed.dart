// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RoomState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onWatchRoomError,
    required TResult Function() onWatchMessageError,
    required TResult Function(dynamic partialMessage) onMessageSent,
    required TResult Function(List<Message> messages) onWatchMessages,
    required TResult Function(List<Room> room) onWatchRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onWatchRoomError,
    TResult? Function()? onWatchMessageError,
    TResult? Function(dynamic partialMessage)? onMessageSent,
    TResult? Function(List<Message> messages)? onWatchMessages,
    TResult? Function(List<Room> room)? onWatchRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onWatchRoomError,
    TResult Function()? onWatchMessageError,
    TResult Function(dynamic partialMessage)? onMessageSent,
    TResult Function(List<Message> messages)? onWatchMessages,
    TResult Function(List<Room> room)? onWatchRooms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnWatchRoomError value) onWatchRoomError,
    required TResult Function(_OnWatchMessageError value) onWatchMessageError,
    required TResult Function(_OnMessageSent value) onMessageSent,
    required TResult Function(_OnWatchMessages value) onWatchMessages,
    required TResult Function(_OnWatchRooms value) onWatchRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnWatchRoomError value)? onWatchRoomError,
    TResult? Function(_OnWatchMessageError value)? onWatchMessageError,
    TResult? Function(_OnMessageSent value)? onMessageSent,
    TResult? Function(_OnWatchMessages value)? onWatchMessages,
    TResult? Function(_OnWatchRooms value)? onWatchRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnWatchRoomError value)? onWatchRoomError,
    TResult Function(_OnWatchMessageError value)? onWatchMessageError,
    TResult Function(_OnMessageSent value)? onMessageSent,
    TResult Function(_OnWatchMessages value)? onWatchMessages,
    TResult Function(_OnWatchRooms value)? onWatchRooms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomStateCopyWith<$Res> {
  factory $RoomStateCopyWith(RoomState value, $Res Function(RoomState) then) =
      _$RoomStateCopyWithImpl<$Res, RoomState>;
}

/// @nodoc
class _$RoomStateCopyWithImpl<$Res, $Val extends RoomState>
    implements $RoomStateCopyWith<$Res> {
  _$RoomStateCopyWithImpl(this._value, this._then);

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
    extends _$RoomStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'RoomState.initial()';
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
    required TResult Function() onWatchRoomError,
    required TResult Function() onWatchMessageError,
    required TResult Function(dynamic partialMessage) onMessageSent,
    required TResult Function(List<Message> messages) onWatchMessages,
    required TResult Function(List<Room> room) onWatchRooms,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onWatchRoomError,
    TResult? Function()? onWatchMessageError,
    TResult? Function(dynamic partialMessage)? onMessageSent,
    TResult? Function(List<Message> messages)? onWatchMessages,
    TResult? Function(List<Room> room)? onWatchRooms,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onWatchRoomError,
    TResult Function()? onWatchMessageError,
    TResult Function(dynamic partialMessage)? onMessageSent,
    TResult Function(List<Message> messages)? onWatchMessages,
    TResult Function(List<Room> room)? onWatchRooms,
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
    required TResult Function(_OnWatchRoomError value) onWatchRoomError,
    required TResult Function(_OnWatchMessageError value) onWatchMessageError,
    required TResult Function(_OnMessageSent value) onMessageSent,
    required TResult Function(_OnWatchMessages value) onWatchMessages,
    required TResult Function(_OnWatchRooms value) onWatchRooms,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnWatchRoomError value)? onWatchRoomError,
    TResult? Function(_OnWatchMessageError value)? onWatchMessageError,
    TResult? Function(_OnMessageSent value)? onMessageSent,
    TResult? Function(_OnWatchMessages value)? onWatchMessages,
    TResult? Function(_OnWatchRooms value)? onWatchRooms,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnWatchRoomError value)? onWatchRoomError,
    TResult Function(_OnWatchMessageError value)? onWatchMessageError,
    TResult Function(_OnMessageSent value)? onMessageSent,
    TResult Function(_OnWatchMessages value)? onWatchMessages,
    TResult Function(_OnWatchRooms value)? onWatchRooms,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RoomState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$OnWatchRoomErrorImplCopyWith<$Res> {
  factory _$$OnWatchRoomErrorImplCopyWith(_$OnWatchRoomErrorImpl value,
          $Res Function(_$OnWatchRoomErrorImpl) then) =
      __$$OnWatchRoomErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnWatchRoomErrorImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$OnWatchRoomErrorImpl>
    implements _$$OnWatchRoomErrorImplCopyWith<$Res> {
  __$$OnWatchRoomErrorImplCopyWithImpl(_$OnWatchRoomErrorImpl _value,
      $Res Function(_$OnWatchRoomErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnWatchRoomErrorImpl implements _OnWatchRoomError {
  const _$OnWatchRoomErrorImpl();

  @override
  String toString() {
    return 'RoomState.onWatchRoomError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnWatchRoomErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onWatchRoomError,
    required TResult Function() onWatchMessageError,
    required TResult Function(dynamic partialMessage) onMessageSent,
    required TResult Function(List<Message> messages) onWatchMessages,
    required TResult Function(List<Room> room) onWatchRooms,
  }) {
    return onWatchRoomError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onWatchRoomError,
    TResult? Function()? onWatchMessageError,
    TResult? Function(dynamic partialMessage)? onMessageSent,
    TResult? Function(List<Message> messages)? onWatchMessages,
    TResult? Function(List<Room> room)? onWatchRooms,
  }) {
    return onWatchRoomError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onWatchRoomError,
    TResult Function()? onWatchMessageError,
    TResult Function(dynamic partialMessage)? onMessageSent,
    TResult Function(List<Message> messages)? onWatchMessages,
    TResult Function(List<Room> room)? onWatchRooms,
    required TResult orElse(),
  }) {
    if (onWatchRoomError != null) {
      return onWatchRoomError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnWatchRoomError value) onWatchRoomError,
    required TResult Function(_OnWatchMessageError value) onWatchMessageError,
    required TResult Function(_OnMessageSent value) onMessageSent,
    required TResult Function(_OnWatchMessages value) onWatchMessages,
    required TResult Function(_OnWatchRooms value) onWatchRooms,
  }) {
    return onWatchRoomError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnWatchRoomError value)? onWatchRoomError,
    TResult? Function(_OnWatchMessageError value)? onWatchMessageError,
    TResult? Function(_OnMessageSent value)? onMessageSent,
    TResult? Function(_OnWatchMessages value)? onWatchMessages,
    TResult? Function(_OnWatchRooms value)? onWatchRooms,
  }) {
    return onWatchRoomError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnWatchRoomError value)? onWatchRoomError,
    TResult Function(_OnWatchMessageError value)? onWatchMessageError,
    TResult Function(_OnMessageSent value)? onMessageSent,
    TResult Function(_OnWatchMessages value)? onWatchMessages,
    TResult Function(_OnWatchRooms value)? onWatchRooms,
    required TResult orElse(),
  }) {
    if (onWatchRoomError != null) {
      return onWatchRoomError(this);
    }
    return orElse();
  }
}

abstract class _OnWatchRoomError implements RoomState {
  const factory _OnWatchRoomError() = _$OnWatchRoomErrorImpl;
}

/// @nodoc
abstract class _$$OnWatchMessageErrorImplCopyWith<$Res> {
  factory _$$OnWatchMessageErrorImplCopyWith(_$OnWatchMessageErrorImpl value,
          $Res Function(_$OnWatchMessageErrorImpl) then) =
      __$$OnWatchMessageErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnWatchMessageErrorImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$OnWatchMessageErrorImpl>
    implements _$$OnWatchMessageErrorImplCopyWith<$Res> {
  __$$OnWatchMessageErrorImplCopyWithImpl(_$OnWatchMessageErrorImpl _value,
      $Res Function(_$OnWatchMessageErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnWatchMessageErrorImpl implements _OnWatchMessageError {
  const _$OnWatchMessageErrorImpl();

  @override
  String toString() {
    return 'RoomState.onWatchMessageError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnWatchMessageErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onWatchRoomError,
    required TResult Function() onWatchMessageError,
    required TResult Function(dynamic partialMessage) onMessageSent,
    required TResult Function(List<Message> messages) onWatchMessages,
    required TResult Function(List<Room> room) onWatchRooms,
  }) {
    return onWatchMessageError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onWatchRoomError,
    TResult? Function()? onWatchMessageError,
    TResult? Function(dynamic partialMessage)? onMessageSent,
    TResult? Function(List<Message> messages)? onWatchMessages,
    TResult? Function(List<Room> room)? onWatchRooms,
  }) {
    return onWatchMessageError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onWatchRoomError,
    TResult Function()? onWatchMessageError,
    TResult Function(dynamic partialMessage)? onMessageSent,
    TResult Function(List<Message> messages)? onWatchMessages,
    TResult Function(List<Room> room)? onWatchRooms,
    required TResult orElse(),
  }) {
    if (onWatchMessageError != null) {
      return onWatchMessageError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnWatchRoomError value) onWatchRoomError,
    required TResult Function(_OnWatchMessageError value) onWatchMessageError,
    required TResult Function(_OnMessageSent value) onMessageSent,
    required TResult Function(_OnWatchMessages value) onWatchMessages,
    required TResult Function(_OnWatchRooms value) onWatchRooms,
  }) {
    return onWatchMessageError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnWatchRoomError value)? onWatchRoomError,
    TResult? Function(_OnWatchMessageError value)? onWatchMessageError,
    TResult? Function(_OnMessageSent value)? onMessageSent,
    TResult? Function(_OnWatchMessages value)? onWatchMessages,
    TResult? Function(_OnWatchRooms value)? onWatchRooms,
  }) {
    return onWatchMessageError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnWatchRoomError value)? onWatchRoomError,
    TResult Function(_OnWatchMessageError value)? onWatchMessageError,
    TResult Function(_OnMessageSent value)? onMessageSent,
    TResult Function(_OnWatchMessages value)? onWatchMessages,
    TResult Function(_OnWatchRooms value)? onWatchRooms,
    required TResult orElse(),
  }) {
    if (onWatchMessageError != null) {
      return onWatchMessageError(this);
    }
    return orElse();
  }
}

abstract class _OnWatchMessageError implements RoomState {
  const factory _OnWatchMessageError() = _$OnWatchMessageErrorImpl;
}

/// @nodoc
abstract class _$$OnMessageSentImplCopyWith<$Res> {
  factory _$$OnMessageSentImplCopyWith(
          _$OnMessageSentImpl value, $Res Function(_$OnMessageSentImpl) then) =
      __$$OnMessageSentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic partialMessage});
}

/// @nodoc
class __$$OnMessageSentImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$OnMessageSentImpl>
    implements _$$OnMessageSentImplCopyWith<$Res> {
  __$$OnMessageSentImplCopyWithImpl(
      _$OnMessageSentImpl _value, $Res Function(_$OnMessageSentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partialMessage = freezed,
  }) {
    return _then(_$OnMessageSentImpl(
      freezed == partialMessage
          ? _value.partialMessage
          : partialMessage // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$OnMessageSentImpl implements _OnMessageSent {
  const _$OnMessageSentImpl(this.partialMessage);

  @override
  final dynamic partialMessage;

  @override
  String toString() {
    return 'RoomState.onMessageSent(partialMessage: $partialMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnMessageSentImpl &&
            const DeepCollectionEquality()
                .equals(other.partialMessage, partialMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(partialMessage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnMessageSentImplCopyWith<_$OnMessageSentImpl> get copyWith =>
      __$$OnMessageSentImplCopyWithImpl<_$OnMessageSentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onWatchRoomError,
    required TResult Function() onWatchMessageError,
    required TResult Function(dynamic partialMessage) onMessageSent,
    required TResult Function(List<Message> messages) onWatchMessages,
    required TResult Function(List<Room> room) onWatchRooms,
  }) {
    return onMessageSent(partialMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onWatchRoomError,
    TResult? Function()? onWatchMessageError,
    TResult? Function(dynamic partialMessage)? onMessageSent,
    TResult? Function(List<Message> messages)? onWatchMessages,
    TResult? Function(List<Room> room)? onWatchRooms,
  }) {
    return onMessageSent?.call(partialMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onWatchRoomError,
    TResult Function()? onWatchMessageError,
    TResult Function(dynamic partialMessage)? onMessageSent,
    TResult Function(List<Message> messages)? onWatchMessages,
    TResult Function(List<Room> room)? onWatchRooms,
    required TResult orElse(),
  }) {
    if (onMessageSent != null) {
      return onMessageSent(partialMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnWatchRoomError value) onWatchRoomError,
    required TResult Function(_OnWatchMessageError value) onWatchMessageError,
    required TResult Function(_OnMessageSent value) onMessageSent,
    required TResult Function(_OnWatchMessages value) onWatchMessages,
    required TResult Function(_OnWatchRooms value) onWatchRooms,
  }) {
    return onMessageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnWatchRoomError value)? onWatchRoomError,
    TResult? Function(_OnWatchMessageError value)? onWatchMessageError,
    TResult? Function(_OnMessageSent value)? onMessageSent,
    TResult? Function(_OnWatchMessages value)? onWatchMessages,
    TResult? Function(_OnWatchRooms value)? onWatchRooms,
  }) {
    return onMessageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnWatchRoomError value)? onWatchRoomError,
    TResult Function(_OnWatchMessageError value)? onWatchMessageError,
    TResult Function(_OnMessageSent value)? onMessageSent,
    TResult Function(_OnWatchMessages value)? onWatchMessages,
    TResult Function(_OnWatchRooms value)? onWatchRooms,
    required TResult orElse(),
  }) {
    if (onMessageSent != null) {
      return onMessageSent(this);
    }
    return orElse();
  }
}

abstract class _OnMessageSent implements RoomState {
  const factory _OnMessageSent(final dynamic partialMessage) =
      _$OnMessageSentImpl;

  dynamic get partialMessage;
  @JsonKey(ignore: true)
  _$$OnMessageSentImplCopyWith<_$OnMessageSentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnWatchMessagesImplCopyWith<$Res> {
  factory _$$OnWatchMessagesImplCopyWith(_$OnWatchMessagesImpl value,
          $Res Function(_$OnWatchMessagesImpl) then) =
      __$$OnWatchMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Message> messages});
}

/// @nodoc
class __$$OnWatchMessagesImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$OnWatchMessagesImpl>
    implements _$$OnWatchMessagesImplCopyWith<$Res> {
  __$$OnWatchMessagesImplCopyWithImpl(
      _$OnWatchMessagesImpl _value, $Res Function(_$OnWatchMessagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$OnWatchMessagesImpl(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$OnWatchMessagesImpl implements _OnWatchMessages {
  const _$OnWatchMessagesImpl(final List<Message> messages)
      : _messages = messages;

  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'RoomState.onWatchMessages(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnWatchMessagesImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnWatchMessagesImplCopyWith<_$OnWatchMessagesImpl> get copyWith =>
      __$$OnWatchMessagesImplCopyWithImpl<_$OnWatchMessagesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onWatchRoomError,
    required TResult Function() onWatchMessageError,
    required TResult Function(dynamic partialMessage) onMessageSent,
    required TResult Function(List<Message> messages) onWatchMessages,
    required TResult Function(List<Room> room) onWatchRooms,
  }) {
    return onWatchMessages(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onWatchRoomError,
    TResult? Function()? onWatchMessageError,
    TResult? Function(dynamic partialMessage)? onMessageSent,
    TResult? Function(List<Message> messages)? onWatchMessages,
    TResult? Function(List<Room> room)? onWatchRooms,
  }) {
    return onWatchMessages?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onWatchRoomError,
    TResult Function()? onWatchMessageError,
    TResult Function(dynamic partialMessage)? onMessageSent,
    TResult Function(List<Message> messages)? onWatchMessages,
    TResult Function(List<Room> room)? onWatchRooms,
    required TResult orElse(),
  }) {
    if (onWatchMessages != null) {
      return onWatchMessages(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnWatchRoomError value) onWatchRoomError,
    required TResult Function(_OnWatchMessageError value) onWatchMessageError,
    required TResult Function(_OnMessageSent value) onMessageSent,
    required TResult Function(_OnWatchMessages value) onWatchMessages,
    required TResult Function(_OnWatchRooms value) onWatchRooms,
  }) {
    return onWatchMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnWatchRoomError value)? onWatchRoomError,
    TResult? Function(_OnWatchMessageError value)? onWatchMessageError,
    TResult? Function(_OnMessageSent value)? onMessageSent,
    TResult? Function(_OnWatchMessages value)? onWatchMessages,
    TResult? Function(_OnWatchRooms value)? onWatchRooms,
  }) {
    return onWatchMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnWatchRoomError value)? onWatchRoomError,
    TResult Function(_OnWatchMessageError value)? onWatchMessageError,
    TResult Function(_OnMessageSent value)? onMessageSent,
    TResult Function(_OnWatchMessages value)? onWatchMessages,
    TResult Function(_OnWatchRooms value)? onWatchRooms,
    required TResult orElse(),
  }) {
    if (onWatchMessages != null) {
      return onWatchMessages(this);
    }
    return orElse();
  }
}

abstract class _OnWatchMessages implements RoomState {
  const factory _OnWatchMessages(final List<Message> messages) =
      _$OnWatchMessagesImpl;

  List<Message> get messages;
  @JsonKey(ignore: true)
  _$$OnWatchMessagesImplCopyWith<_$OnWatchMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnWatchRoomsImplCopyWith<$Res> {
  factory _$$OnWatchRoomsImplCopyWith(
          _$OnWatchRoomsImpl value, $Res Function(_$OnWatchRoomsImpl) then) =
      __$$OnWatchRoomsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Room> room});
}

/// @nodoc
class __$$OnWatchRoomsImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$OnWatchRoomsImpl>
    implements _$$OnWatchRoomsImplCopyWith<$Res> {
  __$$OnWatchRoomsImplCopyWithImpl(
      _$OnWatchRoomsImpl _value, $Res Function(_$OnWatchRoomsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
  }) {
    return _then(_$OnWatchRoomsImpl(
      null == room
          ? _value._room
          : room // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ));
  }
}

/// @nodoc

class _$OnWatchRoomsImpl implements _OnWatchRooms {
  const _$OnWatchRoomsImpl(final List<Room> room) : _room = room;

  final List<Room> _room;
  @override
  List<Room> get room {
    if (_room is EqualUnmodifiableListView) return _room;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_room);
  }

  @override
  String toString() {
    return 'RoomState.onWatchRooms(room: $room)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnWatchRoomsImpl &&
            const DeepCollectionEquality().equals(other._room, _room));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_room));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnWatchRoomsImplCopyWith<_$OnWatchRoomsImpl> get copyWith =>
      __$$OnWatchRoomsImplCopyWithImpl<_$OnWatchRoomsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onWatchRoomError,
    required TResult Function() onWatchMessageError,
    required TResult Function(dynamic partialMessage) onMessageSent,
    required TResult Function(List<Message> messages) onWatchMessages,
    required TResult Function(List<Room> room) onWatchRooms,
  }) {
    return onWatchRooms(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onWatchRoomError,
    TResult? Function()? onWatchMessageError,
    TResult? Function(dynamic partialMessage)? onMessageSent,
    TResult? Function(List<Message> messages)? onWatchMessages,
    TResult? Function(List<Room> room)? onWatchRooms,
  }) {
    return onWatchRooms?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onWatchRoomError,
    TResult Function()? onWatchMessageError,
    TResult Function(dynamic partialMessage)? onMessageSent,
    TResult Function(List<Message> messages)? onWatchMessages,
    TResult Function(List<Room> room)? onWatchRooms,
    required TResult orElse(),
  }) {
    if (onWatchRooms != null) {
      return onWatchRooms(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnWatchRoomError value) onWatchRoomError,
    required TResult Function(_OnWatchMessageError value) onWatchMessageError,
    required TResult Function(_OnMessageSent value) onMessageSent,
    required TResult Function(_OnWatchMessages value) onWatchMessages,
    required TResult Function(_OnWatchRooms value) onWatchRooms,
  }) {
    return onWatchRooms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnWatchRoomError value)? onWatchRoomError,
    TResult? Function(_OnWatchMessageError value)? onWatchMessageError,
    TResult? Function(_OnMessageSent value)? onMessageSent,
    TResult? Function(_OnWatchMessages value)? onWatchMessages,
    TResult? Function(_OnWatchRooms value)? onWatchRooms,
  }) {
    return onWatchRooms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnWatchRoomError value)? onWatchRoomError,
    TResult Function(_OnWatchMessageError value)? onWatchMessageError,
    TResult Function(_OnMessageSent value)? onMessageSent,
    TResult Function(_OnWatchMessages value)? onWatchMessages,
    TResult Function(_OnWatchRooms value)? onWatchRooms,
    required TResult orElse(),
  }) {
    if (onWatchRooms != null) {
      return onWatchRooms(this);
    }
    return orElse();
  }
}

abstract class _OnWatchRooms implements RoomState {
  const factory _OnWatchRooms(final List<Room> room) = _$OnWatchRoomsImpl;

  List<Room> get room;
  @JsonKey(ignore: true)
  _$$OnWatchRoomsImplCopyWith<_$OnWatchRoomsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
