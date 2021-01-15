// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'auth/presentation/pages/onboarding/onboarding_page.dart';
import 'auth/presentation/pages/splash_page.dart';
import 'router.dart';

class Routes {
  static const String splashPage = '/';
  static const String onboardingPage = '/onboarding-page';
  static const all = <String>{
    splashPage,
    onboardingPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.onboardingPage, page: OnboardingPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => SplashPage(),
        settings: data,
        transitionsBuilder: fadeTransition,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    OnboardingPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            OnboardingPage(),
        settings: data,
        transitionsBuilder: fadeTransition,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
  };
}
