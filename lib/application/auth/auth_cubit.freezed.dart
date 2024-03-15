// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function(User currUser) loginSuccess,
    required TResult Function(User? user) onAuthChecked,
    required TResult Function(AuthFailure failure) registerFailed,
    required TResult Function(AuthFailure failure) loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function(User currUser)? loginSuccess,
    TResult? Function(User? user)? onAuthChecked,
    TResult? Function(AuthFailure failure)? registerFailed,
    TResult? Function(AuthFailure failure)? loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function(User currUser)? loginSuccess,
    TResult Function(User? user)? onAuthChecked,
    TResult Function(AuthFailure failure)? registerFailed,
    TResult Function(AuthFailure failure)? loginFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_OnAuthChecked value) onAuthChecked,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_LoginFailed value) loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_OnAuthChecked value)? onAuthChecked,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_LoginFailed value)? loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_OnAuthChecked value)? onAuthChecked,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

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
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AuthState.initial()';
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
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function(User currUser) loginSuccess,
    required TResult Function(User? user) onAuthChecked,
    required TResult Function(AuthFailure failure) registerFailed,
    required TResult Function(AuthFailure failure) loginFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function(User currUser)? loginSuccess,
    TResult? Function(User? user)? onAuthChecked,
    TResult? Function(AuthFailure failure)? registerFailed,
    TResult? Function(AuthFailure failure)? loginFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function(User currUser)? loginSuccess,
    TResult Function(User? user)? onAuthChecked,
    TResult Function(AuthFailure failure)? registerFailed,
    TResult Function(AuthFailure failure)? loginFailed,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_OnAuthChecked value) onAuthChecked,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_LoginFailed value) loginFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_OnAuthChecked value)? onAuthChecked,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_LoginFailed value)? loginFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_OnAuthChecked value)? onAuthChecked,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function(User currUser) loginSuccess,
    required TResult Function(User? user) onAuthChecked,
    required TResult Function(AuthFailure failure) registerFailed,
    required TResult Function(AuthFailure failure) loginFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function(User currUser)? loginSuccess,
    TResult? Function(User? user)? onAuthChecked,
    TResult? Function(AuthFailure failure)? registerFailed,
    TResult? Function(AuthFailure failure)? loginFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function(User currUser)? loginSuccess,
    TResult Function(User? user)? onAuthChecked,
    TResult Function(AuthFailure failure)? registerFailed,
    TResult Function(AuthFailure failure)? loginFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_OnAuthChecked value) onAuthChecked,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_LoginFailed value) loginFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_OnAuthChecked value)? onAuthChecked,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_LoginFailed value)? loginFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_OnAuthChecked value)? onAuthChecked,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$RegisterSuccessImplCopyWith<$Res> {
  factory _$$RegisterSuccessImplCopyWith(_$RegisterSuccessImpl value,
          $Res Function(_$RegisterSuccessImpl) then) =
      __$$RegisterSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterSuccessImpl>
    implements _$$RegisterSuccessImplCopyWith<$Res> {
  __$$RegisterSuccessImplCopyWithImpl(
      _$RegisterSuccessImpl _value, $Res Function(_$RegisterSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterSuccessImpl implements _RegisterSuccess {
  const _$RegisterSuccessImpl();

  @override
  String toString() {
    return 'AuthState.registerSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function(User currUser) loginSuccess,
    required TResult Function(User? user) onAuthChecked,
    required TResult Function(AuthFailure failure) registerFailed,
    required TResult Function(AuthFailure failure) loginFailed,
  }) {
    return registerSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function(User currUser)? loginSuccess,
    TResult? Function(User? user)? onAuthChecked,
    TResult? Function(AuthFailure failure)? registerFailed,
    TResult? Function(AuthFailure failure)? loginFailed,
  }) {
    return registerSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function(User currUser)? loginSuccess,
    TResult Function(User? user)? onAuthChecked,
    TResult Function(AuthFailure failure)? registerFailed,
    TResult Function(AuthFailure failure)? loginFailed,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_OnAuthChecked value) onAuthChecked,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_LoginFailed value) loginFailed,
  }) {
    return registerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_OnAuthChecked value)? onAuthChecked,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_LoginFailed value)? loginFailed,
  }) {
    return registerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_OnAuthChecked value)? onAuthChecked,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(this);
    }
    return orElse();
  }
}

abstract class _RegisterSuccess implements AuthState {
  const factory _RegisterSuccess() = _$RegisterSuccessImpl;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<$Res> {
  factory _$$LoginSuccessImplCopyWith(
          _$LoginSuccessImpl value, $Res Function(_$LoginSuccessImpl) then) =
      __$$LoginSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User currUser});
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginSuccessImpl>
    implements _$$LoginSuccessImplCopyWith<$Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl _value, $Res Function(_$LoginSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currUser = null,
  }) {
    return _then(_$LoginSuccessImpl(
      null == currUser
          ? _value.currUser
          : currUser // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$LoginSuccessImpl implements _LoginSuccess {
  const _$LoginSuccessImpl(this.currUser);

  @override
  final User currUser;

  @override
  String toString() {
    return 'AuthState.loginSuccess(currUser: $currUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessImpl &&
            (identical(other.currUser, currUser) ||
                other.currUser == currUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      __$$LoginSuccessImplCopyWithImpl<_$LoginSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function(User currUser) loginSuccess,
    required TResult Function(User? user) onAuthChecked,
    required TResult Function(AuthFailure failure) registerFailed,
    required TResult Function(AuthFailure failure) loginFailed,
  }) {
    return loginSuccess(currUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function(User currUser)? loginSuccess,
    TResult? Function(User? user)? onAuthChecked,
    TResult? Function(AuthFailure failure)? registerFailed,
    TResult? Function(AuthFailure failure)? loginFailed,
  }) {
    return loginSuccess?.call(currUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function(User currUser)? loginSuccess,
    TResult Function(User? user)? onAuthChecked,
    TResult Function(AuthFailure failure)? registerFailed,
    TResult Function(AuthFailure failure)? loginFailed,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(currUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_OnAuthChecked value) onAuthChecked,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_LoginFailed value) loginFailed,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_OnAuthChecked value)? onAuthChecked,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_LoginFailed value)? loginFailed,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_OnAuthChecked value)? onAuthChecked,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccess implements AuthState {
  const factory _LoginSuccess(final User currUser) = _$LoginSuccessImpl;

  User get currUser;
  @JsonKey(ignore: true)
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnAuthCheckedImplCopyWith<$Res> {
  factory _$$OnAuthCheckedImplCopyWith(
          _$OnAuthCheckedImpl value, $Res Function(_$OnAuthCheckedImpl) then) =
      __$$OnAuthCheckedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});
}

/// @nodoc
class __$$OnAuthCheckedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$OnAuthCheckedImpl>
    implements _$$OnAuthCheckedImplCopyWith<$Res> {
  __$$OnAuthCheckedImplCopyWithImpl(
      _$OnAuthCheckedImpl _value, $Res Function(_$OnAuthCheckedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$OnAuthCheckedImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$OnAuthCheckedImpl implements _OnAuthChecked {
  const _$OnAuthCheckedImpl(this.user);

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthState.onAuthChecked(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAuthCheckedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnAuthCheckedImplCopyWith<_$OnAuthCheckedImpl> get copyWith =>
      __$$OnAuthCheckedImplCopyWithImpl<_$OnAuthCheckedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function(User currUser) loginSuccess,
    required TResult Function(User? user) onAuthChecked,
    required TResult Function(AuthFailure failure) registerFailed,
    required TResult Function(AuthFailure failure) loginFailed,
  }) {
    return onAuthChecked(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function(User currUser)? loginSuccess,
    TResult? Function(User? user)? onAuthChecked,
    TResult? Function(AuthFailure failure)? registerFailed,
    TResult? Function(AuthFailure failure)? loginFailed,
  }) {
    return onAuthChecked?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function(User currUser)? loginSuccess,
    TResult Function(User? user)? onAuthChecked,
    TResult Function(AuthFailure failure)? registerFailed,
    TResult Function(AuthFailure failure)? loginFailed,
    required TResult orElse(),
  }) {
    if (onAuthChecked != null) {
      return onAuthChecked(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_OnAuthChecked value) onAuthChecked,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_LoginFailed value) loginFailed,
  }) {
    return onAuthChecked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_OnAuthChecked value)? onAuthChecked,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_LoginFailed value)? loginFailed,
  }) {
    return onAuthChecked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_OnAuthChecked value)? onAuthChecked,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (onAuthChecked != null) {
      return onAuthChecked(this);
    }
    return orElse();
  }
}

abstract class _OnAuthChecked implements AuthState {
  const factory _OnAuthChecked(final User? user) = _$OnAuthCheckedImpl;

  User? get user;
  @JsonKey(ignore: true)
  _$$OnAuthCheckedImplCopyWith<_$OnAuthCheckedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterFailedImplCopyWith<$Res> {
  factory _$$RegisterFailedImplCopyWith(_$RegisterFailedImpl value,
          $Res Function(_$RegisterFailedImpl) then) =
      __$$RegisterFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthFailure failure});

  $AuthFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$RegisterFailedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterFailedImpl>
    implements _$$RegisterFailedImplCopyWith<$Res> {
  __$$RegisterFailedImplCopyWithImpl(
      _$RegisterFailedImpl _value, $Res Function(_$RegisterFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$RegisterFailedImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthFailureCopyWith<$Res> get failure {
    return $AuthFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$RegisterFailedImpl implements _RegisterFailed {
  const _$RegisterFailedImpl(this.failure);

  @override
  final AuthFailure failure;

  @override
  String toString() {
    return 'AuthState.registerFailed(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterFailedImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterFailedImplCopyWith<_$RegisterFailedImpl> get copyWith =>
      __$$RegisterFailedImplCopyWithImpl<_$RegisterFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function(User currUser) loginSuccess,
    required TResult Function(User? user) onAuthChecked,
    required TResult Function(AuthFailure failure) registerFailed,
    required TResult Function(AuthFailure failure) loginFailed,
  }) {
    return registerFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function(User currUser)? loginSuccess,
    TResult? Function(User? user)? onAuthChecked,
    TResult? Function(AuthFailure failure)? registerFailed,
    TResult? Function(AuthFailure failure)? loginFailed,
  }) {
    return registerFailed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function(User currUser)? loginSuccess,
    TResult Function(User? user)? onAuthChecked,
    TResult Function(AuthFailure failure)? registerFailed,
    TResult Function(AuthFailure failure)? loginFailed,
    required TResult orElse(),
  }) {
    if (registerFailed != null) {
      return registerFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_OnAuthChecked value) onAuthChecked,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_LoginFailed value) loginFailed,
  }) {
    return registerFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_OnAuthChecked value)? onAuthChecked,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_LoginFailed value)? loginFailed,
  }) {
    return registerFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_OnAuthChecked value)? onAuthChecked,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (registerFailed != null) {
      return registerFailed(this);
    }
    return orElse();
  }
}

abstract class _RegisterFailed implements AuthState {
  const factory _RegisterFailed(final AuthFailure failure) =
      _$RegisterFailedImpl;

  AuthFailure get failure;
  @JsonKey(ignore: true)
  _$$RegisterFailedImplCopyWith<_$RegisterFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginFailedImplCopyWith<$Res> {
  factory _$$LoginFailedImplCopyWith(
          _$LoginFailedImpl value, $Res Function(_$LoginFailedImpl) then) =
      __$$LoginFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthFailure failure});

  $AuthFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$LoginFailedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginFailedImpl>
    implements _$$LoginFailedImplCopyWith<$Res> {
  __$$LoginFailedImplCopyWithImpl(
      _$LoginFailedImpl _value, $Res Function(_$LoginFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LoginFailedImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthFailureCopyWith<$Res> get failure {
    return $AuthFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoginFailedImpl implements _LoginFailed {
  const _$LoginFailedImpl(this.failure);

  @override
  final AuthFailure failure;

  @override
  String toString() {
    return 'AuthState.loginFailed(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailedImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailedImplCopyWith<_$LoginFailedImpl> get copyWith =>
      __$$LoginFailedImplCopyWithImpl<_$LoginFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function(User currUser) loginSuccess,
    required TResult Function(User? user) onAuthChecked,
    required TResult Function(AuthFailure failure) registerFailed,
    required TResult Function(AuthFailure failure) loginFailed,
  }) {
    return loginFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function(User currUser)? loginSuccess,
    TResult? Function(User? user)? onAuthChecked,
    TResult? Function(AuthFailure failure)? registerFailed,
    TResult? Function(AuthFailure failure)? loginFailed,
  }) {
    return loginFailed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function(User currUser)? loginSuccess,
    TResult Function(User? user)? onAuthChecked,
    TResult Function(AuthFailure failure)? registerFailed,
    TResult Function(AuthFailure failure)? loginFailed,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_OnAuthChecked value) onAuthChecked,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_LoginFailed value) loginFailed,
  }) {
    return loginFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_OnAuthChecked value)? onAuthChecked,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_LoginFailed value)? loginFailed,
  }) {
    return loginFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_OnAuthChecked value)? onAuthChecked,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(this);
    }
    return orElse();
  }
}

abstract class _LoginFailed implements AuthState {
  const factory _LoginFailed(final AuthFailure failure) = _$LoginFailedImpl;

  AuthFailure get failure;
  @JsonKey(ignore: true)
  _$$LoginFailedImplCopyWith<_$LoginFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
