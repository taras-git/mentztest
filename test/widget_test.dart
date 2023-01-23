import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mentztest/main.dart';

void main() {
  testWidgets('LocationsSearchScreen has a title and message',
      (WidgetTester tester) async {
    await tester.pumpWidget(const LocationsSearchScreen());
    final messageFinder = find.text('Lcations locator');
    expect(messageFinder, findsOneWidget);

    // Enter 'fd' into the TextField.
    await tester.enterText(find.byType(TextFormField), 'fd');
    // Tap the SearchIt button.
    await tester.tap(find.byType(OutlinedButton));
    // Rebuild the widget with the new item.
    await tester.pump();
    // Expect to find the item on screen.
    expect(find.text('Fulda'), findsOneWidget);
  });
}
