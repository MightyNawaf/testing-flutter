import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/main.dart';

void main() {
  testWidgets('Test the show button', (widgetTester) async {
    // Building and running the widget
    await widgetTester.pumpWidget(const MainApp());

    // Locate the button
    final button = find.byKey(const ValueKey('show_button'));

    // Press on the the button
    await widgetTester.tap(button);

    // Simulate the loading period
    // Then rebuild the widget again as flutter_test doesn't recognize setState
    await widgetTester.pump(const Duration(seconds: 5));

	// Checking the result
    expect(find.text('Hello World!'), findsOneWidget);
  });
}
