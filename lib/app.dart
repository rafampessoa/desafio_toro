import 'package:auto_route/auto_route.dart';
import 'package:desafioToro/app_themes.dart';
import 'package:desafioToro/auth/presentation/bloc/auth_bloc.dart';
import 'package:desafioToro/router.gr.dart' as router;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) => _handleWithUserAuth(state, context),
      child: ScreenUtilInit(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Toro App',
          builder: ExtendedNavigator.builder<router.Router>(
            router: router.Router(),
            navigatorKey: navigatorKey,
          ),
          theme: appThemeData[AppTheme.Default],
        ),
      ),
    );
  }

  void _handleWithUserAuth(AuthState state, BuildContext context) => state.map(
        initial: (_) => null,
        authenticated: (_) => navigatorKey.currentState.pushReplacementNamed(
          router.Routes.homePage,
        ),
        unauthenticated: (_) => navigatorKey.currentState.pushReplacementNamed(
          router.Routes.onboardingPage,
        ),
        unexpectedError: (_) => null,
      );
}
