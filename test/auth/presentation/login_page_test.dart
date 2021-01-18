import 'package:auto_route/auto_route.dart';
import 'package:desafioToro/auth/presentation/pages/login/login_page.dart';
import 'package:desafioToro/auth/presentation/pages/onboarding/onboarding_page.dart';
import 'package:desafioToro/injection.dart';
import 'package:desafioToro/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:desafioToro/router.gr.dart' as router;
import 'package:mockito/mockito.dart';

import '../../helper/testable_widget.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  configureDependencies();
  final mockObserver = MockNavigatorObserver();

  testWidgets('Onboarding Page', (WidgetTester tester) async {
    await tester.pumpWidget(testableWidget(
      child: MaterialApp(
          builder: ExtendedNavigator.builder<router.Router>(
            router: router.Router(),
            initialRoute: router.Routes.onboardingPage,
            observers: [mockObserver],
          ),
          home: OnboardingPage()),
    ));

    await tester.pumpAndSettle();

    expect(find.text(Strings.onboardingStep01Label), findsOneWidget);

    await tester.drag(find.byType(PageView), Offset(-500.0, 0.0));
    await tester.pumpAndSettle();
    expect(find.text(Strings.onboardingStep02Title), findsOneWidget);
    expect(find.text(Strings.onboardingStep02Description), findsOneWidget);

    await tester.drag(find.byType(PageView), Offset(-500.0, 0.0));
    await tester.pumpAndSettle();
    expect(find.text(Strings.onboardingStep03Title), findsOneWidget);
    expect(find.text(Strings.onboardingStep03Description), findsOneWidget);

    await tester.drag(find.byType(PageView), Offset(-500.0, 0.0));
    await tester.pumpAndSettle();
    expect(find.text(Strings.onboardingStep04Title), findsOneWidget);
    expect(find.text(Strings.onboardingStep04Tip01), findsOneWidget);
    expect(find.text(Strings.onboardingStep04Tip02), findsOneWidget);
    expect(find.text(Strings.onboardingStep04Tip03), findsOneWidget);

    await tester.tap(find.text(Strings.signIn));
    await tester.pumpAndSettle();
    verify(mockObserver.didPush(any, any));

    expect(find.byType(LoginPage), findsOneWidget);
  });
}
