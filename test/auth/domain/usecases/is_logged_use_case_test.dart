import 'package:dartz/dartz.dart';
import 'package:desafioToro/auth/data/repository/auth_repository_impl.dart';
import 'package:desafioToro/auth/domain/usecases/is_logged_use_case_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockAuthRepository extends Mock implements AuthRepositoryImpl {}

void main() {
  MockAuthRepository authRepository;
  IsLoggedUseCaseImpl isLoggedUseCaseImpl;

  setUp(() {
    authRepository = MockAuthRepository();
    isLoggedUseCaseImpl = IsLoggedUseCaseImpl(authRepository);
  });

  test("isLogged must return false with empty token", () async {
    when(authRepository.getToken())
        .thenAnswer((realInvocation) async => right(null));
    final isLogged = await isLoggedUseCaseImpl();
    expect(isLogged, right(false));
  });

  test("isLogged must return true with token is valid", () async {
    when(authRepository.getToken())
        .thenAnswer((realInvocation) async => right("FAKE_TOKEN"));
    final isLogged = await isLoggedUseCaseImpl();
    expect(isLogged, right(true));
  });
}
