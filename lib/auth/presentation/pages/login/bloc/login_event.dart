part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.onTabChange(int index) = _OnTabChange;
  const factory LoginEvent.onTabLogin({
    String cpf,
    String email,
    @required String password,
  }) = _OnTabLogin;
  const factory LoginEvent.onChangeForm({
    String cpf,
    String email,
    @required String password,
  }) = _OnChangeForm;
}
