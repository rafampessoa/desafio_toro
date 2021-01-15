import 'package:dartz/dartz.dart';
import 'package:desafioToro/auth/domain/errors/auth_failures.dart';
import 'package:desafioToro/auth/domain/repository/auth_repository.dart';
import 'package:desafioToro/auth/domain/usecases/is_logged_use_case.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IsLoggedUseCase)
class IsLoggedUseCaseImpl implements IsLoggedUseCase {
  final AuthRepository authRepository;

  IsLoggedUseCaseImpl(this.authRepository);

  @override
  Future<Either<AuthFailures, bool>> call() async {
    final resultGetTokem = await authRepository.getToken();

    return resultGetTokem.fold(
      (l) => left(l),
      (token) => token == null || token.isEmpty ? right(false) : right(true),
    );
  }
}
