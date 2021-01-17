import 'package:dartz/dartz.dart';
import 'package:desafioToro/auth/domain/errors/auth_failures.dart';
import 'package:desafioToro/auth/domain/repository/auth_repository.dart';
import 'package:desafioToro/auth/domain/usecases/logout_use_case.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LogoutUseCase)
class LogoutUseCaseImpl implements LogoutUseCase {
  final AuthRepository authRepository;

  LogoutUseCaseImpl(this.authRepository);

  @override
  Future<Either<AuthFailures, Unit>> call() => authRepository.removeToken();
}
