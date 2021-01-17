import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:desafioToro/auth/domain/usecases/login_use_case.dart';
import 'package:desafioToro/common/domain/usecases/is_valid_email_use_case.dart';
import 'package:desafioToro/strings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IsValidEmailUseCase isValidEmailUseCase;
  final LoginUseCase loginUseCase;
  LoginBloc(this.isValidEmailUseCase, this.loginUseCase)
      : super(LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.map(
      onTabChange: _mapEventToChangeTab,
      onTabLogin: _mapEventToSubmit,
      onChangeForm: _mapEventToValidForm,
    );
  }

  Stream<LoginState> _mapEventToChangeTab(_OnTabChange event) async* {
    if (event.index == 0) {
      yield LoginState.cpfSelected();
    } else {
      yield LoginState.emailSelected();
    }
  }

  Stream<LoginState> _mapEventToSubmit(_OnTabLogin event) async* {
    yield state.copyWith(
        isLoading: false, unexpectedError: null, isSuccessLogin: false);
    String _login;
    if (event.email != null) {
      final isValidEmail = isValidEmailUseCase(event.email);
      if (!isValidEmail) {
        yield state.copyWith(isInvalidEmail: !isValidEmail);
        return;
      }
      _login = event.email;
    } else {
      _login = event.cpf;
    }

    yield state.copyWith(isLoading: true);
    final result = await loginUseCase(_login, event.password);

    yield result.fold(
      (l) => state.copyWith(
        isLoading: false,
        unexpectedError: l.map(
          unexpected: (e) => Strings.unexpectedErrorDescription,
          server: (e) => e.error,
        ),
      ),
      (r) => state.copyWith(
        isLoading: false,
        isSuccessLogin: true,
      ),
    );
  }

  Stream<LoginState> _mapEventToValidForm(_OnChangeForm event) async* {
    if (event.password.length > 5) {
      if (event.isValidCpf || event.email.isNotEmpty) {
        yield state.copyWith(
          isValidForm: true,
          isLoading: false,
          unexpectedError: null,
          isSuccessLogin: false,
          isInvalidEmail: false,
        );
        return;
      }
    }

    yield state.copyWith(
      isValidForm: false,
      isLoading: false,
      unexpectedError: null,
      isSuccessLogin: false,
      isInvalidEmail: false,
    );
  }
}
