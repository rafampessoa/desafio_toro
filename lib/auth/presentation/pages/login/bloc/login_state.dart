part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    bool isCpfLogin,
    bool isInvalidCredentials,
    bool isLoading,
    bool isValidForm,
    bool isInvalidEmail,
    bool isSuccessLogin,
    String unexpectedError,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        isCpfLogin: true,
        isInvalidCredentials: false,
        isLoading: false,
        unexpectedError: null,
        isValidForm: false,
        isInvalidEmail: false,
        isSuccessLogin: false,
      );

  factory LoginState.cpfSelected() => LoginState(
        isCpfLogin: true,
        isInvalidCredentials: false,
        isLoading: false,
        unexpectedError: null,
        isValidForm: false,
        isInvalidEmail: false,
        isSuccessLogin: false,
      );

  factory LoginState.emailSelected() => LoginState(
        isCpfLogin: false,
        isInvalidCredentials: false,
        isLoading: false,
        unexpectedError: null,
        isValidForm: false,
        isInvalidEmail: false,
        isSuccessLogin: false,
      );
}
