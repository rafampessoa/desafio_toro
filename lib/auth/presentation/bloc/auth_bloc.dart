import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:desafioToro/auth/domain/usecases/is_logged_use_case.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IsLoggedUseCase isLoggedUseCase;
  AuthBloc(this.isLoggedUseCase) : super(_Initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      appStarted: _mapEventToStartApp,
      unauthenticate: _mapEventToUnauthenticate,
      authenticate: _mapEventToAuthenticate,
    );
  }

  Stream<AuthState> _mapEventToStartApp(_AppStarted event) async* {
    await Future.delayed(Duration(seconds: 2));
    final result = await isLoggedUseCase();

    yield* result.fold(
      (l) async* {
        yield AuthState.unexpectedError();
        yield AuthState.unauthenticated();
      },
      (isAuth) async* {
        if (isAuth) {
          yield AuthState.authenticated();
          return;
        }
        yield AuthState.unauthenticated();
      },
    );
  }

  Stream<AuthState> _mapEventToUnauthenticate(_Unauthenticate event) async* {
    yield AuthState.unauthenticated();
  }

  Stream<AuthState> _mapEventToAuthenticate(_Authenticate event) async* {
    yield AuthState.authenticated();
  }
}
