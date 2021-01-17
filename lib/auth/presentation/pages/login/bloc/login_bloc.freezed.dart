// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

// ignore: unused_element
  _OnTabChange onTabChange(int index) {
    return _OnTabChange(
      index,
    );
  }

// ignore: unused_element
  _OnTabLogin onTabLogin(
      {String cpf, String email, @required String password}) {
    return _OnTabLogin(
      cpf: cpf,
      email: email,
      password: password,
    );
  }

// ignore: unused_element
  _OnChangeForm onChangeForm(
      {bool isValidCpf, String email, @required String password}) {
    return _OnChangeForm(
      isValidCpf: isValidCpf,
      email: email,
      password: password,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onTabChange(int index),
    @required TResult onTabLogin(String cpf, String email, String password),
    @required
        TResult onChangeForm(bool isValidCpf, String email, String password),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onTabChange(int index),
    TResult onTabLogin(String cpf, String email, String password),
    TResult onChangeForm(bool isValidCpf, String email, String password),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onTabChange(_OnTabChange value),
    @required TResult onTabLogin(_OnTabLogin value),
    @required TResult onChangeForm(_OnChangeForm value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onTabChange(_OnTabChange value),
    TResult onTabLogin(_OnTabLogin value),
    TResult onChangeForm(_OnChangeForm value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$OnTabChangeCopyWith<$Res> {
  factory _$OnTabChangeCopyWith(
          _OnTabChange value, $Res Function(_OnTabChange) then) =
      __$OnTabChangeCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$OnTabChangeCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$OnTabChangeCopyWith<$Res> {
  __$OnTabChangeCopyWithImpl(
      _OnTabChange _value, $Res Function(_OnTabChange) _then)
      : super(_value, (v) => _then(v as _OnTabChange));

  @override
  _OnTabChange get _value => super._value as _OnTabChange;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_OnTabChange(
      index == freezed ? _value.index : index as int,
    ));
  }
}

/// @nodoc
class _$_OnTabChange implements _OnTabChange {
  const _$_OnTabChange(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'LoginEvent.onTabChange(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnTabChange &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$OnTabChangeCopyWith<_OnTabChange> get copyWith =>
      __$OnTabChangeCopyWithImpl<_OnTabChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onTabChange(int index),
    @required TResult onTabLogin(String cpf, String email, String password),
    @required
        TResult onChangeForm(bool isValidCpf, String email, String password),
  }) {
    assert(onTabChange != null);
    assert(onTabLogin != null);
    assert(onChangeForm != null);
    return onTabChange(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onTabChange(int index),
    TResult onTabLogin(String cpf, String email, String password),
    TResult onChangeForm(bool isValidCpf, String email, String password),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onTabChange != null) {
      return onTabChange(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onTabChange(_OnTabChange value),
    @required TResult onTabLogin(_OnTabLogin value),
    @required TResult onChangeForm(_OnChangeForm value),
  }) {
    assert(onTabChange != null);
    assert(onTabLogin != null);
    assert(onChangeForm != null);
    return onTabChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onTabChange(_OnTabChange value),
    TResult onTabLogin(_OnTabLogin value),
    TResult onChangeForm(_OnChangeForm value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onTabChange != null) {
      return onTabChange(this);
    }
    return orElse();
  }
}

abstract class _OnTabChange implements LoginEvent {
  const factory _OnTabChange(int index) = _$_OnTabChange;

  int get index;
  @JsonKey(ignore: true)
  _$OnTabChangeCopyWith<_OnTabChange> get copyWith;
}

/// @nodoc
abstract class _$OnTabLoginCopyWith<$Res> {
  factory _$OnTabLoginCopyWith(
          _OnTabLogin value, $Res Function(_OnTabLogin) then) =
      __$OnTabLoginCopyWithImpl<$Res>;
  $Res call({String cpf, String email, String password});
}

/// @nodoc
class __$OnTabLoginCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$OnTabLoginCopyWith<$Res> {
  __$OnTabLoginCopyWithImpl(
      _OnTabLogin _value, $Res Function(_OnTabLogin) _then)
      : super(_value, (v) => _then(v as _OnTabLogin));

  @override
  _OnTabLogin get _value => super._value as _OnTabLogin;

  @override
  $Res call({
    Object cpf = freezed,
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_OnTabLogin(
      cpf: cpf == freezed ? _value.cpf : cpf as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$_OnTabLogin implements _OnTabLogin {
  const _$_OnTabLogin({this.cpf, this.email, @required this.password})
      : assert(password != null);

  @override
  final String cpf;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.onTabLogin(cpf: $cpf, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnTabLogin &&
            (identical(other.cpf, cpf) ||
                const DeepCollectionEquality().equals(other.cpf, cpf)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cpf) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$OnTabLoginCopyWith<_OnTabLogin> get copyWith =>
      __$OnTabLoginCopyWithImpl<_OnTabLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onTabChange(int index),
    @required TResult onTabLogin(String cpf, String email, String password),
    @required
        TResult onChangeForm(bool isValidCpf, String email, String password),
  }) {
    assert(onTabChange != null);
    assert(onTabLogin != null);
    assert(onChangeForm != null);
    return onTabLogin(cpf, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onTabChange(int index),
    TResult onTabLogin(String cpf, String email, String password),
    TResult onChangeForm(bool isValidCpf, String email, String password),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onTabLogin != null) {
      return onTabLogin(cpf, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onTabChange(_OnTabChange value),
    @required TResult onTabLogin(_OnTabLogin value),
    @required TResult onChangeForm(_OnChangeForm value),
  }) {
    assert(onTabChange != null);
    assert(onTabLogin != null);
    assert(onChangeForm != null);
    return onTabLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onTabChange(_OnTabChange value),
    TResult onTabLogin(_OnTabLogin value),
    TResult onChangeForm(_OnChangeForm value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onTabLogin != null) {
      return onTabLogin(this);
    }
    return orElse();
  }
}

abstract class _OnTabLogin implements LoginEvent {
  const factory _OnTabLogin(
      {String cpf, String email, @required String password}) = _$_OnTabLogin;

  String get cpf;
  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$OnTabLoginCopyWith<_OnTabLogin> get copyWith;
}

/// @nodoc
abstract class _$OnChangeFormCopyWith<$Res> {
  factory _$OnChangeFormCopyWith(
          _OnChangeForm value, $Res Function(_OnChangeForm) then) =
      __$OnChangeFormCopyWithImpl<$Res>;
  $Res call({bool isValidCpf, String email, String password});
}

/// @nodoc
class __$OnChangeFormCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$OnChangeFormCopyWith<$Res> {
  __$OnChangeFormCopyWithImpl(
      _OnChangeForm _value, $Res Function(_OnChangeForm) _then)
      : super(_value, (v) => _then(v as _OnChangeForm));

  @override
  _OnChangeForm get _value => super._value as _OnChangeForm;

  @override
  $Res call({
    Object isValidCpf = freezed,
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_OnChangeForm(
      isValidCpf:
          isValidCpf == freezed ? _value.isValidCpf : isValidCpf as bool,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$_OnChangeForm implements _OnChangeForm {
  const _$_OnChangeForm({this.isValidCpf, this.email, @required this.password})
      : assert(password != null);

  @override
  final bool isValidCpf;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.onChangeForm(isValidCpf: $isValidCpf, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnChangeForm &&
            (identical(other.isValidCpf, isValidCpf) ||
                const DeepCollectionEquality()
                    .equals(other.isValidCpf, isValidCpf)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isValidCpf) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$OnChangeFormCopyWith<_OnChangeForm> get copyWith =>
      __$OnChangeFormCopyWithImpl<_OnChangeForm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onTabChange(int index),
    @required TResult onTabLogin(String cpf, String email, String password),
    @required
        TResult onChangeForm(bool isValidCpf, String email, String password),
  }) {
    assert(onTabChange != null);
    assert(onTabLogin != null);
    assert(onChangeForm != null);
    return onChangeForm(isValidCpf, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onTabChange(int index),
    TResult onTabLogin(String cpf, String email, String password),
    TResult onChangeForm(bool isValidCpf, String email, String password),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onChangeForm != null) {
      return onChangeForm(isValidCpf, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onTabChange(_OnTabChange value),
    @required TResult onTabLogin(_OnTabLogin value),
    @required TResult onChangeForm(_OnChangeForm value),
  }) {
    assert(onTabChange != null);
    assert(onTabLogin != null);
    assert(onChangeForm != null);
    return onChangeForm(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onTabChange(_OnTabChange value),
    TResult onTabLogin(_OnTabLogin value),
    TResult onChangeForm(_OnChangeForm value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onChangeForm != null) {
      return onChangeForm(this);
    }
    return orElse();
  }
}

abstract class _OnChangeForm implements LoginEvent {
  const factory _OnChangeForm(
      {bool isValidCpf,
      String email,
      @required String password}) = _$_OnChangeForm;

  bool get isValidCpf;
  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$OnChangeFormCopyWith<_OnChangeForm> get copyWith;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

// ignore: unused_element
  _LoginState call(
      {bool isCpfLogin,
      bool isInvalidCredentials,
      bool isLoading,
      bool isValidForm,
      bool isInvalidEmail,
      String unexpectedError}) {
    return _LoginState(
      isCpfLogin: isCpfLogin,
      isInvalidCredentials: isInvalidCredentials,
      isLoading: isLoading,
      isValidForm: isValidForm,
      isInvalidEmail: isInvalidEmail,
      unexpectedError: unexpectedError,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  bool get isCpfLogin;
  bool get isInvalidCredentials;
  bool get isLoading;
  bool get isValidForm;
  bool get isInvalidEmail;
  String get unexpectedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {bool isCpfLogin,
      bool isInvalidCredentials,
      bool isLoading,
      bool isValidForm,
      bool isInvalidEmail,
      String unexpectedError});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object isCpfLogin = freezed,
    Object isInvalidCredentials = freezed,
    Object isLoading = freezed,
    Object isValidForm = freezed,
    Object isInvalidEmail = freezed,
    Object unexpectedError = freezed,
  }) {
    return _then(_value.copyWith(
      isCpfLogin:
          isCpfLogin == freezed ? _value.isCpfLogin : isCpfLogin as bool,
      isInvalidCredentials: isInvalidCredentials == freezed
          ? _value.isInvalidCredentials
          : isInvalidCredentials as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isValidForm:
          isValidForm == freezed ? _value.isValidForm : isValidForm as bool,
      isInvalidEmail: isInvalidEmail == freezed
          ? _value.isInvalidEmail
          : isInvalidEmail as bool,
      unexpectedError: unexpectedError == freezed
          ? _value.unexpectedError
          : unexpectedError as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isCpfLogin,
      bool isInvalidCredentials,
      bool isLoading,
      bool isValidForm,
      bool isInvalidEmail,
      String unexpectedError});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object isCpfLogin = freezed,
    Object isInvalidCredentials = freezed,
    Object isLoading = freezed,
    Object isValidForm = freezed,
    Object isInvalidEmail = freezed,
    Object unexpectedError = freezed,
  }) {
    return _then(_LoginState(
      isCpfLogin:
          isCpfLogin == freezed ? _value.isCpfLogin : isCpfLogin as bool,
      isInvalidCredentials: isInvalidCredentials == freezed
          ? _value.isInvalidCredentials
          : isInvalidCredentials as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isValidForm:
          isValidForm == freezed ? _value.isValidForm : isValidForm as bool,
      isInvalidEmail: isInvalidEmail == freezed
          ? _value.isInvalidEmail
          : isInvalidEmail as bool,
      unexpectedError: unexpectedError == freezed
          ? _value.unexpectedError
          : unexpectedError as String,
    ));
  }
}

/// @nodoc
class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.isCpfLogin,
      this.isInvalidCredentials,
      this.isLoading,
      this.isValidForm,
      this.isInvalidEmail,
      this.unexpectedError});

  @override
  final bool isCpfLogin;
  @override
  final bool isInvalidCredentials;
  @override
  final bool isLoading;
  @override
  final bool isValidForm;
  @override
  final bool isInvalidEmail;
  @override
  final String unexpectedError;

  @override
  String toString() {
    return 'LoginState(isCpfLogin: $isCpfLogin, isInvalidCredentials: $isInvalidCredentials, isLoading: $isLoading, isValidForm: $isValidForm, isInvalidEmail: $isInvalidEmail, unexpectedError: $unexpectedError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.isCpfLogin, isCpfLogin) ||
                const DeepCollectionEquality()
                    .equals(other.isCpfLogin, isCpfLogin)) &&
            (identical(other.isInvalidCredentials, isInvalidCredentials) ||
                const DeepCollectionEquality().equals(
                    other.isInvalidCredentials, isInvalidCredentials)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isValidForm, isValidForm) ||
                const DeepCollectionEquality()
                    .equals(other.isValidForm, isValidForm)) &&
            (identical(other.isInvalidEmail, isInvalidEmail) ||
                const DeepCollectionEquality()
                    .equals(other.isInvalidEmail, isInvalidEmail)) &&
            (identical(other.unexpectedError, unexpectedError) ||
                const DeepCollectionEquality()
                    .equals(other.unexpectedError, unexpectedError)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isCpfLogin) ^
      const DeepCollectionEquality().hash(isInvalidCredentials) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isValidForm) ^
      const DeepCollectionEquality().hash(isInvalidEmail) ^
      const DeepCollectionEquality().hash(unexpectedError);

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {bool isCpfLogin,
      bool isInvalidCredentials,
      bool isLoading,
      bool isValidForm,
      bool isInvalidEmail,
      String unexpectedError}) = _$_LoginState;

  @override
  bool get isCpfLogin;
  @override
  bool get isInvalidCredentials;
  @override
  bool get isLoading;
  @override
  bool get isValidForm;
  @override
  bool get isInvalidEmail;
  @override
  String get unexpectedError;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith;
}
