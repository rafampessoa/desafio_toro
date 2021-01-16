import 'package:dartz/dartz.dart';
import 'package:desafioToro/auth/domain/errors/auth_failures.dart';

abstract class LoginUseCase {
  Future<Either<AuthFailures, Unit>> call(String login, String password);
}
