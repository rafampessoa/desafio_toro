import 'package:dartz/dartz.dart';
import 'package:desafioToro/auth/domain/entities/secure_storage.dart';
import 'package:injectable/injectable.dart';

abstract class AuthLocalDataSource {
  Future<void> persistToken(String token);
  Future<void> removeToken();
  Future<String> getToken();
}

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SecureStorage secureStorage;

  AuthLocalDataSourceImpl(this.secureStorage);

  @override
  Future<String> getToken() => secureStorage.read(key: 'token');

  @override
  Future<void> persistToken(String token) =>
      secureStorage.write(key: 'token', value: token);

  @override
  Future<void> removeToken() => secureStorage.delete(key: 'token');
}
