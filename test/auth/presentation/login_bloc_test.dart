import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:desafioToro/auth/domain/usecases/is_logged_use_case.dart';
import 'package:desafioToro/auth/domain/usecases/logout_use_case.dart';
import 'package:desafioToro/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockIsLoggedUseCase extends Mock implements IsLoggedUseCase {}

class MockLogoutUseCase extends Mock implements LogoutUseCase {}

void main() {
  MockIsLoggedUseCase isLoggedUseCase;
  MockLogoutUseCase logoutUseCase;
  AuthBloc authBloc;

  group('AuthBloc', () {
    setUp(() {
      isLoggedUseCase = MockIsLoggedUseCase();
      logoutUseCase = MockLogoutUseCase();
      authBloc = AuthBloc(isLoggedUseCase, logoutUseCase);
    });

    blocTest<AuthBloc, AuthState>(
      'Authenticated Event should emit Authenticated State',
      build: () {
        return authBloc;
      },
      act: (bloc) => bloc.add(AuthEvent.authenticate()),
      expect: [
        AuthState.authenticated(),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'Unauthenticated Event should emit unauthenticated State',
      build: () {
        return authBloc;
      },
      act: (bloc) => bloc.add(AuthEvent.unauthenticate()),
      expect: [
        AuthState.unauthenticated(),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'AppStart Event should emit auth State when user has token',
      build: () {
        when(isLoggedUseCase())
            .thenAnswer((realInvocation) async => right(true));

        return authBloc;
      },
      act: (bloc) => bloc.add(AuthEvent.appStarted()),
      expect: [
        AuthState.authenticated(),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'AppStart Event should emit unauth State when user has no token',
      build: () {
        when(isLoggedUseCase())
            .thenAnswer((realInvocation) async => right(false));

        return authBloc;
      },
      act: (bloc) => bloc.add(AuthEvent.appStarted()),
      expect: [
        AuthState.unauthenticated(),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'AppStart Event should emit an error and unauth when throw an error',
      build: () {
        when(isLoggedUseCase())
            .thenAnswer((realInvocation) async => left(null));

        return authBloc;
      },
      act: (bloc) => bloc.add(AuthEvent.appStarted()),
      expect: [
        AuthState.unexpectedError(),
        AuthState.unauthenticated(),
      ],
    );
  });
}
