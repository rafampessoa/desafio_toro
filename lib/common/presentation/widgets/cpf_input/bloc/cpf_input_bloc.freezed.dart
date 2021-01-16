// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cpf_input_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CpfInputEventTearOff {
  const _$CpfInputEventTearOff();

// ignore: unused_element
  _CpfInputOnChange onChange(String cpf) {
    return _CpfInputOnChange(
      cpf,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CpfInputEvent = _$CpfInputEventTearOff();

/// @nodoc
mixin _$CpfInputEvent {
  String get cpf;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onChange(String cpf),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onChange(String cpf),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onChange(_CpfInputOnChange value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onChange(_CpfInputOnChange value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $CpfInputEventCopyWith<CpfInputEvent> get copyWith;
}

/// @nodoc
abstract class $CpfInputEventCopyWith<$Res> {
  factory $CpfInputEventCopyWith(
          CpfInputEvent value, $Res Function(CpfInputEvent) then) =
      _$CpfInputEventCopyWithImpl<$Res>;
  $Res call({String cpf});
}

/// @nodoc
class _$CpfInputEventCopyWithImpl<$Res>
    implements $CpfInputEventCopyWith<$Res> {
  _$CpfInputEventCopyWithImpl(this._value, this._then);

  final CpfInputEvent _value;
  // ignore: unused_field
  final $Res Function(CpfInputEvent) _then;

  @override
  $Res call({
    Object cpf = freezed,
  }) {
    return _then(_value.copyWith(
      cpf: cpf == freezed ? _value.cpf : cpf as String,
    ));
  }
}

/// @nodoc
abstract class _$CpfInputOnChangeCopyWith<$Res>
    implements $CpfInputEventCopyWith<$Res> {
  factory _$CpfInputOnChangeCopyWith(
          _CpfInputOnChange value, $Res Function(_CpfInputOnChange) then) =
      __$CpfInputOnChangeCopyWithImpl<$Res>;
  @override
  $Res call({String cpf});
}

/// @nodoc
class __$CpfInputOnChangeCopyWithImpl<$Res>
    extends _$CpfInputEventCopyWithImpl<$Res>
    implements _$CpfInputOnChangeCopyWith<$Res> {
  __$CpfInputOnChangeCopyWithImpl(
      _CpfInputOnChange _value, $Res Function(_CpfInputOnChange) _then)
      : super(_value, (v) => _then(v as _CpfInputOnChange));

  @override
  _CpfInputOnChange get _value => super._value as _CpfInputOnChange;

  @override
  $Res call({
    Object cpf = freezed,
  }) {
    return _then(_CpfInputOnChange(
      cpf == freezed ? _value.cpf : cpf as String,
    ));
  }
}

/// @nodoc
class _$_CpfInputOnChange implements _CpfInputOnChange {
  const _$_CpfInputOnChange(this.cpf) : assert(cpf != null);

  @override
  final String cpf;

  @override
  String toString() {
    return 'CpfInputEvent.onChange(cpf: $cpf)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CpfInputOnChange &&
            (identical(other.cpf, cpf) ||
                const DeepCollectionEquality().equals(other.cpf, cpf)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cpf);

  @JsonKey(ignore: true)
  @override
  _$CpfInputOnChangeCopyWith<_CpfInputOnChange> get copyWith =>
      __$CpfInputOnChangeCopyWithImpl<_CpfInputOnChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onChange(String cpf),
  }) {
    assert(onChange != null);
    return onChange(cpf);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onChange(String cpf),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onChange != null) {
      return onChange(cpf);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onChange(_CpfInputOnChange value),
  }) {
    assert(onChange != null);
    return onChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onChange(_CpfInputOnChange value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onChange != null) {
      return onChange(this);
    }
    return orElse();
  }
}

abstract class _CpfInputOnChange implements CpfInputEvent {
  const factory _CpfInputOnChange(String cpf) = _$_CpfInputOnChange;

  @override
  String get cpf;
  @override
  @JsonKey(ignore: true)
  _$CpfInputOnChangeCopyWith<_CpfInputOnChange> get copyWith;
}

/// @nodoc
class _$CpfInputStateTearOff {
  const _$CpfInputStateTearOff();

// ignore: unused_element
  _CpfInputState call({bool isInitial, bool isValid}) {
    return _CpfInputState(
      isInitial: isInitial,
      isValid: isValid,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CpfInputState = _$CpfInputStateTearOff();

/// @nodoc
mixin _$CpfInputState {
  bool get isInitial;
  bool get isValid;

  @JsonKey(ignore: true)
  $CpfInputStateCopyWith<CpfInputState> get copyWith;
}

/// @nodoc
abstract class $CpfInputStateCopyWith<$Res> {
  factory $CpfInputStateCopyWith(
          CpfInputState value, $Res Function(CpfInputState) then) =
      _$CpfInputStateCopyWithImpl<$Res>;
  $Res call({bool isInitial, bool isValid});
}

/// @nodoc
class _$CpfInputStateCopyWithImpl<$Res>
    implements $CpfInputStateCopyWith<$Res> {
  _$CpfInputStateCopyWithImpl(this._value, this._then);

  final CpfInputState _value;
  // ignore: unused_field
  final $Res Function(CpfInputState) _then;

  @override
  $Res call({
    Object isInitial = freezed,
    Object isValid = freezed,
  }) {
    return _then(_value.copyWith(
      isInitial: isInitial == freezed ? _value.isInitial : isInitial as bool,
      isValid: isValid == freezed ? _value.isValid : isValid as bool,
    ));
  }
}

/// @nodoc
abstract class _$CpfInputStateCopyWith<$Res>
    implements $CpfInputStateCopyWith<$Res> {
  factory _$CpfInputStateCopyWith(
          _CpfInputState value, $Res Function(_CpfInputState) then) =
      __$CpfInputStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isInitial, bool isValid});
}

/// @nodoc
class __$CpfInputStateCopyWithImpl<$Res>
    extends _$CpfInputStateCopyWithImpl<$Res>
    implements _$CpfInputStateCopyWith<$Res> {
  __$CpfInputStateCopyWithImpl(
      _CpfInputState _value, $Res Function(_CpfInputState) _then)
      : super(_value, (v) => _then(v as _CpfInputState));

  @override
  _CpfInputState get _value => super._value as _CpfInputState;

  @override
  $Res call({
    Object isInitial = freezed,
    Object isValid = freezed,
  }) {
    return _then(_CpfInputState(
      isInitial: isInitial == freezed ? _value.isInitial : isInitial as bool,
      isValid: isValid == freezed ? _value.isValid : isValid as bool,
    ));
  }
}

/// @nodoc
class _$_CpfInputState implements _CpfInputState {
  const _$_CpfInputState({this.isInitial, this.isValid});

  @override
  final bool isInitial;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'CpfInputState(isInitial: $isInitial, isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CpfInputState &&
            (identical(other.isInitial, isInitial) ||
                const DeepCollectionEquality()
                    .equals(other.isInitial, isInitial)) &&
            (identical(other.isValid, isValid) ||
                const DeepCollectionEquality().equals(other.isValid, isValid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isInitial) ^
      const DeepCollectionEquality().hash(isValid);

  @JsonKey(ignore: true)
  @override
  _$CpfInputStateCopyWith<_CpfInputState> get copyWith =>
      __$CpfInputStateCopyWithImpl<_CpfInputState>(this, _$identity);
}

abstract class _CpfInputState implements CpfInputState {
  const factory _CpfInputState({bool isInitial, bool isValid}) =
      _$_CpfInputState;

  @override
  bool get isInitial;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$CpfInputStateCopyWith<_CpfInputState> get copyWith;
}
