import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mentztest/widgets/locations_search_screen.dart';
import 'package:mentztest/widgets/mentz_app.dart';
import 'package:mentztest/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main() {
  testWidgets('LocationsSearchScreen has a title and text field',
      (WidgetTester tester) async {
    await tester.pumpWidget(ProviderScope(child: MentzApp()));
    final messageFinder = find.text('Locations locator');
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
