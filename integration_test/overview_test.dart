import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotel_booking/main.dart';
import 'package:hotel_booking/features/overview/presentation/pages/overview_page.dart';

void main() {
  testWidgets('OverviewPage displays the correct app bar title', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: OverviewPage(),
      ),
    );

    expect(find.text('Hotel Booking'), findsOneWidget);
  });
}
