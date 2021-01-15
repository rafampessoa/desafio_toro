// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthFailuresTearOff {
  const _$AuthFailuresTearOff();

// ignore: unused_element
  _Unexpected<T> unexpected<T>(T failureValue) {
    return _Unexpected<T>(
      failureValue,
    );
  }

// ignore: unused_element
  _Server<T> server<T>(T error) {
    return _Server<T>(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFailures = _$AuthFailuresTearOff();

/// @nodoc
mixin _$AuthFailures<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unexpected(T failureValue),
    @required TResult server(T error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpected(T failureValue),
    TResult server(T error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpected(_Unexpected<T> value),
    @required TResult server(_Server<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpected(_Unexpected<T> value),
    TResult server(_Server<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthFailuresCopyWith<T, $Res> {
  factory $AuthFailuresCopyWith(
          AuthFailures<T> value, $Res Function(AuthFailures<T>) then) =
      _$AuthFailuresCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$AuthFailuresCopyWithImpl<T, $Res>
    implements $AuthFailuresCopyWith<T, $Res> {
  _$AuthFailuresCopyWithImpl(this._value, this._then);

  final AuthFailures<T> _value;
  // ignore: unused_field
  final $Res Function(AuthFailures<T>) _then;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<T, $Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected<T> value, $Res Function(_Unexpected<T>) then) =
      __$UnexpectedCopyWithImpl<T, $Res>;
  $Res call({T failureValue});
}

/// @nodoc
class __$UnexpectedCopyWithImpl<T, $Res>
    extends _$AuthFailuresCopyWithImpl<T, $Res>
    implements _$UnexpectedCopyWith<T, $Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected<T> _value, $Res Function(_Unexpected<T>) _then)
      : super(_value, (v) => _then(v as _Unexpected<T>));

  @override
  _Unexpected<T> get _value => super._value as _Unexpected<T>;

  @override
  $Res call({
    Object failureValue = freezed,
  }) {
    return _then(_Unexpected<T>(
      failureValue == freezed ? _value.failureValue : failureValue as T,
    ));
  }
}

/// @nodoc
class _$_Unexpected<T> implements _Unexpected<T> {
  const _$_Unexpected(this.failureValue) : assert(failureValue != null);

  @override
  final T failureValue;

  @override
  String toString() {
    return 'AuthFailures<$T>.unexpected(failureValue: $failureValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unexpected<T> &&
            (identical(other.failureValue, failureValue) ||
                const DeepCollectionEquality()
                    .equals(other.failureValue, failureValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureValue);

  @JsonKey(ignore: true)
  @override
  _$UnexpectedCopyWith<T, _Unexpected<T>> get copyWith =>
      __$UnexpectedCopyWithImpl<T, _Unexpected<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unexpected(T failureValue),
    @required TResult server(T error),
  }) {
    assert(unexpected != null);
    assert(server != null);
    return unexpected(failureValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpected(T failureValue),
    TResult server(T error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(failureValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpected(_Unexpected<T> value),
    @required TResult server(_Server<T> value),
  }) {
    assert(unexpected != null);
    assert(server != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpected(_Unexpected<T> value),
    TResult server(_Server<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected<T> implements AuthFailures<T> {
  const factory _Unexpected(T failureValue) = _$_Unexpected<T>;

  T get failureValue;
  @JsonKey(ignore: true)
  _$UnexpectedCopyWith<T, _Unexpected<T>> get copyWith;
}

/// @nodoc
abstract class _$ServerCopyWith<T, $Res> {
  factory _$ServerCopyWith(_Server<T> value, $Res Function(_Server<T>) then) =
      __$ServerCopyWithImpl<T, $Res>;
  $Res call({T error});
}

/// @nodoc
class __$ServerCopyWithImpl<T, $Res> extends _$AuthFailuresCopyWithImpl<T, $Res>
    implements _$ServerCopyWith<T, $Res> {
  __$ServerCopyWithImpl(_Server<T> _value, $Res Function(_Server<T>) _then)
      : super(_value, (v) => _then(v as _Server<T>));

  @override
  _Server<T> get _value => super._value as _Server<T>;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_Server<T>(
      error == freezed ? _value.error : error as T,
    ));
  }
}

/// @nodoc
class _$_Server<T> implements _Server<T> {
  const _$_Server(this.error) : assert(error != null);

  @override
  final T error;

  @override
  String toString() {
    return 'AuthFailures<$T>.server(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Server<T> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$ServerCopyWith<T, _Server<T>> get copyWith =>
      __$ServerCopyWithImpl<T, _Server<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unexpected(T failureValue),
    @required TResult server(T error),
  }) {
    assert(unexpected != null);
    assert(server != null);
    return server(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpected(T failureValue),
    TResult server(T error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (server != null) {
      return server(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpected(_Unexpected<T> value),
    @required TResult server(_Server<T> value),
  }) {
    assert(unexpected != null);
    assert(server != null);
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpected(_Unexpected<T> value),
    TResult server(_Server<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _Server<T> implements AuthFailures<T> {
  const factory _Server(T error) = _$_Server<T>;

  T get error;
  @JsonKey(ignore: true)
  _$ServerCopyWith<T, _Server<T>> get copyWith;
}
