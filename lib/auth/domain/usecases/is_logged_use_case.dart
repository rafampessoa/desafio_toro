import 'package:dartz/dartz.dart';
import 'package:desafioToro/auth/domain/errors/auth_failures.dart';

abstract class IsLoggedUseCase {
  Future<Either<AuthFailures, bool>> call();
}
