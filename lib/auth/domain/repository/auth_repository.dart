import 'package:dartz/dartz.dart';
import 'package:desafioToro/auth/domain/errors/auth_failures.dart';

abstract class AuthRepository {
  Future<Either<AuthFailures, String>> getToken();
}
