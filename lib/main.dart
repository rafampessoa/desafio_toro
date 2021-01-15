import 'package:desafioToro/app.dart';
import 'package:desafioToro/auth/presentation/bloc/auth_bloc.dart';
import 'package:desafioToro/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Cubit cubit, Object event) {
    super.onEvent(cubit, event);
    if (!bool.fromEnvironment('dart.vm.product')) print(event);
  }

  @override
  void onTransition(Cubit cubit, Transition transition) {
    super.onTransition(cubit, transition);
    if (!bool.fromEnvironment('dart.vm.product')) print(transition);
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stacktrace) {
    super.onError(cubit, error, stacktrace);
    if (!bool.fromEnvironment('dart.vm.product')) print(error);
  }
}

void main() {
  Bloc.observer = SimpleBlocObserver();

  configureDependencies(
    env: bool.fromEnvironment('dart.vm.product') == true
        ? Environment.prod
        : Environment.dev,
  );

  runApp(
    BlocProvider(
      create: (context) => getIt<AuthBloc>()
        ..add(
          AuthEvent.appStarted(context),
        ),
      child: App(),
    ),
  );
}
