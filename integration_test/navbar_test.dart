import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/core/navigation/app_router.dart'; 
import 'package:hotel_booking/core/navigation/navigation.dart';
import 'package:hotel_booking/features/dashboard/presentation/pages/dashboard_page.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Verify navigation labels exist', (WidgetTester tester) async {
    final appRouter = AppRouter();

    await tester.pumpWidget(
      MaterialApp.router(
        routerConfig: appRouter.config(), 
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Overview'), findsOneWidget);
    expect(find.text('Hotels'), findsOneWidget);
    expect(find.text('Favorites'), findsOneWidget);
    expect(find.text('Account'), findsOneWidget);
  });
}