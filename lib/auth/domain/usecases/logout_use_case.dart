import 'package:dartz/dartz.dart';
import 'package:desafioToro/auth/domain/errors/auth_failures.dart';

abstract class LogoutUseCase {
  Future<Either<AuthFailures, Unit>> call();
}
