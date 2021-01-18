import 'package:dartz/dartz.dart';
import 'package:desafioToro/auth/data/repository/auth_repository_impl.dart';
import 'package:desafioToro/auth/domain/errors/auth_failures.dart';
import 'package:desafioToro/auth/domain/usecases/logout_use_case_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockAuthRepository extends Mock implements AuthRepositoryImpl {}

void main() {
  MockAuthRepository authRepository;
  LogoutUseCaseImpl logoutUseCaseImpl;

  setUp(() {
    authRepository = MockAuthRepository();
    logoutUseCaseImpl = LogoutUseCaseImpl(authRepository);
  });

  test("logout must return unit when success", () async {
    when(authRepository.removeToken())
        .thenAnswer((realInvocation) async => right(null));
    final logout = await logoutUseCaseImpl();
    expect(logout, right(null));
  });

  test("logout must return failure when unsuccess", () async {
    when(authRepository.removeToken()).thenAnswer(
        (realInvocation) async => left(AuthFailures.unexpected("teste")));
    final logout = await logoutUseCaseImpl();
    expect(logout, left(AuthFailures.unexpected("teste")));
  });
}
