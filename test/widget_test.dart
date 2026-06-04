// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:spend_summary_app/main.dart';

void main() {
  testWidgets('renders spend summary and filters by category', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const SpendSummaryApp());

    expect(find.text('June spend'), findsAtLeastNWidgets(1));
    expect(find.text('Categories'), findsOneWidget);
    expect(
      find.text('Recent transactions', skipOffstage: false),
      findsOneWidget,
    );
    expect(find.text('Morning Brew', skipOffstage: false), findsOneWidget);
    expect(find.text('SkyHop', skipOffstage: false), findsOneWidget);

    await tester.tap(find.text('Travel'));
    await tester.pumpAndSettle();

    expect(find.text('Metro Pass Reload', skipOffstage: false), findsOneWidget);
    expect(find.text('SkyHop', skipOffstage: false), findsOneWidget);
    expect(find.text('Morning Brew', skipOffstage: false), findsNothing);
  });
}
