import 'package:dartz/dartz.dart';
import 'package:desafioToro/auth/domain/errors/auth_failures.dart';
import 'package:desafioToro/auth/domain/repository/auth_repository.dart';
import 'package:desafioToro/auth/domain/usecases/login_use_case.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LoginUseCase)
class LoginUseCaseImpl implements LoginUseCase {
  final AuthRepository authRepository;

  LoginUseCaseImpl(this.authRepository);

  @override
  Future<Either<AuthFailures, Unit>> call(String login, String password) async {
    final resultLogin = await authRepository.login(login, password);

    return resultLogin.fold(
      (l) => left(l),
      (token) async {
        return authRepository.persistToken(token);
      },
    );
  }
}
