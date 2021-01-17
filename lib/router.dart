import 'package:auto_route/auto_route_annotations.dart';
import 'package:desafioToro/auth/presentation/pages/login/login_page.dart';
import 'package:desafioToro/auth/presentation/pages/onboarding/onboarding_page.dart';
import 'package:desafioToro/auth/presentation/pages/splash_page.dart';
import 'package:desafioToro/common/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

@MaterialAutoRouter(routes: [
  CustomRoute(
      transitionsBuilder: fadeTransition,
      durationInMilliseconds: 400,
      page: SplashPage,
      initial: true),
  CustomRoute(
      transitionsBuilder: fadeTransition,
      durationInMilliseconds: 400,
      page: OnboardingPage),
  MaterialRoute(page: LoginPage),
  MaterialRoute(page: HomePage),
])
class $Router {}

Widget fadeTransition(BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) =>
    FadeTransition(opacity: animation, child: child);
