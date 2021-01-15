import 'package:dartz/dartz.dart';
import 'package:desafioToro/auth/data/datasources/auth_local_data_source.dart';
import 'package:desafioToro/auth/domain/errors/auth_failures.dart';
import 'package:desafioToro/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthLocalDataSource authLocalDataSource;

  AuthRepositoryImpl(this.authLocalDataSource);
  @override
  Future<Either<AuthFailures, String>> getToken() async {
    try {
      final token = await authLocalDataSource.getToken();
      return right(token);
    } catch (e) {
      return left(AuthFailures.unexpected(e));
    }
  }
}
