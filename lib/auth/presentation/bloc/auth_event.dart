part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appStarted(BuildContext context) = _AppStarted;
  const factory AuthEvent.unauthenticate() = _Unauthenticate;
  const factory AuthEvent.authenticate() = _Authenticate;
}
