import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failures.freezed.dart';

@freezed
abstract class AuthFailures<T> with _$AuthFailures<T> {
  const factory AuthFailures.unexpected(T failureValue) = _Unexpected<T>;
  const factory AuthFailures.server(T error) = _Server<T>;
}
