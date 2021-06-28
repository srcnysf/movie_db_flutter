// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DefaultErrorTearOff {
  const _$DefaultErrorTearOff();

  _UnknownError unknownError(String message) {
    return _UnknownError(
      message,
    );
  }

  _ApiError apiError(int code, String message) {
    return _ApiError(
      code,
      message,
    );
  }

  _BusinessError businessError(int code, String message) {
    return _BusinessError(
      code,
      message,
    );
  }

  _InvalidResponseError invalidResponseError(String message) {
    return _InvalidResponseError(
      message,
    );
  }

  _AuthenticationError authenticationError() {
    return const _AuthenticationError();
  }
}

/// @nodoc
const $DefaultError = _$DefaultErrorTearOff();

/// @nodoc
mixin _$DefaultError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknownError,
    required TResult Function(int code, String message) apiError,
    required TResult Function(int code, String message) businessError,
    required TResult Function(String message) invalidResponseError,
    required TResult Function() authenticationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknownError,
    TResult Function(int code, String message)? apiError,
    TResult Function(int code, String message)? businessError,
    TResult Function(String message)? invalidResponseError,
    TResult Function()? authenticationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_BusinessError value) businessError,
    required TResult Function(_InvalidResponseError value) invalidResponseError,
    required TResult Function(_AuthenticationError value) authenticationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
    TResult Function(_InvalidResponseError value)? invalidResponseError,
    TResult Function(_AuthenticationError value)? authenticationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultErrorCopyWith<$Res> {
  factory $DefaultErrorCopyWith(
          DefaultError value, $Res Function(DefaultError) then) =
      _$DefaultErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$DefaultErrorCopyWithImpl<$Res> implements $DefaultErrorCopyWith<$Res> {
  _$DefaultErrorCopyWithImpl(this._value, this._then);

  final DefaultError _value;
  // ignore: unused_field
  final $Res Function(DefaultError) _then;
}

/// @nodoc
abstract class _$UnknownErrorCopyWith<$Res> {
  factory _$UnknownErrorCopyWith(
          _UnknownError value, $Res Function(_UnknownError) then) =
      __$UnknownErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$UnknownErrorCopyWithImpl<$Res> extends _$DefaultErrorCopyWithImpl<$Res>
    implements _$UnknownErrorCopyWith<$Res> {
  __$UnknownErrorCopyWithImpl(
      _UnknownError _value, $Res Function(_UnknownError) _then)
      : super(_value, (v) => _then(v as _UnknownError));

  @override
  _UnknownError get _value => super._value as _UnknownError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_UnknownError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnknownError implements _UnknownError {
  const _$_UnknownError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DefaultError.unknownError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnknownError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$UnknownErrorCopyWith<_UnknownError> get copyWith =>
      __$UnknownErrorCopyWithImpl<_UnknownError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknownError,
    required TResult Function(int code, String message) apiError,
    required TResult Function(int code, String message) businessError,
    required TResult Function(String message) invalidResponseError,
    required TResult Function() authenticationError,
  }) {
    return unknownError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknownError,
    TResult Function(int code, String message)? apiError,
    TResult Function(int code, String message)? businessError,
    TResult Function(String message)? invalidResponseError,
    TResult Function()? authenticationError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_BusinessError value) businessError,
    required TResult Function(_InvalidResponseError value) invalidResponseError,
    required TResult Function(_AuthenticationError value) authenticationError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
    TResult Function(_InvalidResponseError value)? invalidResponseError,
    TResult Function(_AuthenticationError value)? authenticationError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class _UnknownError implements DefaultError {
  const factory _UnknownError(String message) = _$_UnknownError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UnknownErrorCopyWith<_UnknownError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ApiErrorCopyWith<$Res> {
  factory _$ApiErrorCopyWith(_ApiError value, $Res Function(_ApiError) then) =
      __$ApiErrorCopyWithImpl<$Res>;
  $Res call({int code, String message});
}

/// @nodoc
class __$ApiErrorCopyWithImpl<$Res> extends _$DefaultErrorCopyWithImpl<$Res>
    implements _$ApiErrorCopyWith<$Res> {
  __$ApiErrorCopyWithImpl(_ApiError _value, $Res Function(_ApiError) _then)
      : super(_value, (v) => _then(v as _ApiError));

  @override
  _ApiError get _value => super._value as _ApiError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_ApiError(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ApiError implements _ApiError {
  const _$_ApiError(this.code, this.message);

  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'DefaultError.apiError(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiError &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ApiErrorCopyWith<_ApiError> get copyWith =>
      __$ApiErrorCopyWithImpl<_ApiError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknownError,
    required TResult Function(int code, String message) apiError,
    required TResult Function(int code, String message) businessError,
    required TResult Function(String message) invalidResponseError,
    required TResult Function() authenticationError,
  }) {
    return apiError(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknownError,
    TResult Function(int code, String message)? apiError,
    TResult Function(int code, String message)? businessError,
    TResult Function(String message)? invalidResponseError,
    TResult Function()? authenticationError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_BusinessError value) businessError,
    required TResult Function(_InvalidResponseError value) invalidResponseError,
    required TResult Function(_AuthenticationError value) authenticationError,
  }) {
    return apiError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
    TResult Function(_InvalidResponseError value)? invalidResponseError,
    TResult Function(_AuthenticationError value)? authenticationError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(this);
    }
    return orElse();
  }
}

abstract class _ApiError implements DefaultError {
  const factory _ApiError(int code, String message) = _$_ApiError;

  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ApiErrorCopyWith<_ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BusinessErrorCopyWith<$Res> {
  factory _$BusinessErrorCopyWith(
          _BusinessError value, $Res Function(_BusinessError) then) =
      __$BusinessErrorCopyWithImpl<$Res>;
  $Res call({int code, String message});
}

/// @nodoc
class __$BusinessErrorCopyWithImpl<$Res>
    extends _$DefaultErrorCopyWithImpl<$Res>
    implements _$BusinessErrorCopyWith<$Res> {
  __$BusinessErrorCopyWithImpl(
      _BusinessError _value, $Res Function(_BusinessError) _then)
      : super(_value, (v) => _then(v as _BusinessError));

  @override
  _BusinessError get _value => super._value as _BusinessError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_BusinessError(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BusinessError implements _BusinessError {
  const _$_BusinessError(this.code, this.message);

  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'DefaultError.businessError(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BusinessError &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$BusinessErrorCopyWith<_BusinessError> get copyWith =>
      __$BusinessErrorCopyWithImpl<_BusinessError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknownError,
    required TResult Function(int code, String message) apiError,
    required TResult Function(int code, String message) businessError,
    required TResult Function(String message) invalidResponseError,
    required TResult Function() authenticationError,
  }) {
    return businessError(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknownError,
    TResult Function(int code, String message)? apiError,
    TResult Function(int code, String message)? businessError,
    TResult Function(String message)? invalidResponseError,
    TResult Function()? authenticationError,
    required TResult orElse(),
  }) {
    if (businessError != null) {
      return businessError(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_BusinessError value) businessError,
    required TResult Function(_InvalidResponseError value) invalidResponseError,
    required TResult Function(_AuthenticationError value) authenticationError,
  }) {
    return businessError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
    TResult Function(_InvalidResponseError value)? invalidResponseError,
    TResult Function(_AuthenticationError value)? authenticationError,
    required TResult orElse(),
  }) {
    if (businessError != null) {
      return businessError(this);
    }
    return orElse();
  }
}

abstract class _BusinessError implements DefaultError {
  const factory _BusinessError(int code, String message) = _$_BusinessError;

  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BusinessErrorCopyWith<_BusinessError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidResponseErrorCopyWith<$Res> {
  factory _$InvalidResponseErrorCopyWith(_InvalidResponseError value,
          $Res Function(_InvalidResponseError) then) =
      __$InvalidResponseErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$InvalidResponseErrorCopyWithImpl<$Res>
    extends _$DefaultErrorCopyWithImpl<$Res>
    implements _$InvalidResponseErrorCopyWith<$Res> {
  __$InvalidResponseErrorCopyWithImpl(
      _InvalidResponseError _value, $Res Function(_InvalidResponseError) _then)
      : super(_value, (v) => _then(v as _InvalidResponseError));

  @override
  _InvalidResponseError get _value => super._value as _InvalidResponseError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_InvalidResponseError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidResponseError implements _InvalidResponseError {
  const _$_InvalidResponseError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DefaultError.invalidResponseError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidResponseError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$InvalidResponseErrorCopyWith<_InvalidResponseError> get copyWith =>
      __$InvalidResponseErrorCopyWithImpl<_InvalidResponseError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknownError,
    required TResult Function(int code, String message) apiError,
    required TResult Function(int code, String message) businessError,
    required TResult Function(String message) invalidResponseError,
    required TResult Function() authenticationError,
  }) {
    return invalidResponseError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknownError,
    TResult Function(int code, String message)? apiError,
    TResult Function(int code, String message)? businessError,
    TResult Function(String message)? invalidResponseError,
    TResult Function()? authenticationError,
    required TResult orElse(),
  }) {
    if (invalidResponseError != null) {
      return invalidResponseError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_BusinessError value) businessError,
    required TResult Function(_InvalidResponseError value) invalidResponseError,
    required TResult Function(_AuthenticationError value) authenticationError,
  }) {
    return invalidResponseError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
    TResult Function(_InvalidResponseError value)? invalidResponseError,
    TResult Function(_AuthenticationError value)? authenticationError,
    required TResult orElse(),
  }) {
    if (invalidResponseError != null) {
      return invalidResponseError(this);
    }
    return orElse();
  }
}

abstract class _InvalidResponseError implements DefaultError {
  const factory _InvalidResponseError(String message) = _$_InvalidResponseError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InvalidResponseErrorCopyWith<_InvalidResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AuthenticationErrorCopyWith<$Res> {
  factory _$AuthenticationErrorCopyWith(_AuthenticationError value,
          $Res Function(_AuthenticationError) then) =
      __$AuthenticationErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthenticationErrorCopyWithImpl<$Res>
    extends _$DefaultErrorCopyWithImpl<$Res>
    implements _$AuthenticationErrorCopyWith<$Res> {
  __$AuthenticationErrorCopyWithImpl(
      _AuthenticationError _value, $Res Function(_AuthenticationError) _then)
      : super(_value, (v) => _then(v as _AuthenticationError));

  @override
  _AuthenticationError get _value => super._value as _AuthenticationError;
}

/// @nodoc

class _$_AuthenticationError implements _AuthenticationError {
  const _$_AuthenticationError();

  @override
  String toString() {
    return 'DefaultError.authenticationError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthenticationError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknownError,
    required TResult Function(int code, String message) apiError,
    required TResult Function(int code, String message) businessError,
    required TResult Function(String message) invalidResponseError,
    required TResult Function() authenticationError,
  }) {
    return authenticationError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknownError,
    TResult Function(int code, String message)? apiError,
    TResult Function(int code, String message)? businessError,
    TResult Function(String message)? invalidResponseError,
    TResult Function()? authenticationError,
    required TResult orElse(),
  }) {
    if (authenticationError != null) {
      return authenticationError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_BusinessError value) businessError,
    required TResult Function(_InvalidResponseError value) invalidResponseError,
    required TResult Function(_AuthenticationError value) authenticationError,
  }) {
    return authenticationError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
    TResult Function(_InvalidResponseError value)? invalidResponseError,
    TResult Function(_AuthenticationError value)? authenticationError,
    required TResult orElse(),
  }) {
    if (authenticationError != null) {
      return authenticationError(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationError implements DefaultError {
  const factory _AuthenticationError() = _$_AuthenticationError;
}
