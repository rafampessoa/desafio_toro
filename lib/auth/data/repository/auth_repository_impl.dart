import 'package:dartz/dartz.dart';
import 'package:desafioToro/auth/data/datasources/auth_local_data_source.dart';
import 'package:desafioToro/auth/data/datasources/auth_remote_data_source.dart';
import 'package:desafioToro/auth/domain/errors/auth_failures.dart';
import 'package:desafioToro/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthLocalDataSource authLocalDataSource;
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl(this.authLocalDataSource, this.authRemoteDataSource);
  @override
  Future<Either<AuthFailures, String>> getToken() async {
    try {
      final token = await authLocalDataSource.getToken();
      return right(token);
    } catch (e) {
      return left(AuthFailures.unexpected(e));
    }
  }

  @override
  Future<Either<AuthFailures, String>> login(
      String login, String password) async {
    try {
      final token = await authRemoteDataSource.login(login, password);
      return right(token);
    } catch (e) {
      return left(AuthFailures.unexpected(e));
    }
  }

  @override
  Future<Either<AuthFailures, Unit>> persistToken(String token) async {
    try {
      await authLocalDataSource.persistToken(token);
      return right(null);
    } catch (e) {
      return left(AuthFailures.unexpected(e));
    }
  }
}
