import 'package:dartz/dartz.dart';
import 'package:desafioToro/auth/data/repository/auth_repository_impl.dart';
import 'package:desafioToro/auth/domain/errors/auth_failures.dart';
import 'package:desafioToro/auth/domain/usecases/login_use_case_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockAuthRepository extends Mock implements AuthRepositoryImpl {}

void main() {
  MockAuthRepository authRepository;
  LoginUseCaseImpl loginUseCaseImpl;

  setUp(() {
    authRepository = MockAuthRepository();
    loginUseCaseImpl = LoginUseCaseImpl(authRepository);
  });

  test("login must return null when success", () async {
    final fakeToken = "FAKE_TOKEN";
    when(authRepository.login(any, any))
        .thenAnswer((realInvocation) async => right(fakeToken));

    when(authRepository.persistToken(any))
        .thenAnswer((realInvocation) async => right(null));

    final login = await loginUseCaseImpl('any', 'any');
    expect(login, right(null));
  });

  test("login must return ServerFailure when invalid credentials", () async {
    when(authRepository.login(any, any)).thenAnswer(
        (realInvocation) async => left(AuthFailures.server('invalid')));

    final login = await loginUseCaseImpl('any', 'any');
    expect(login, left(AuthFailures.server('invalid')));
  });
}
