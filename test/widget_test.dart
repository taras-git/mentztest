import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mentztest/main.dart';

void main() {
  testWidgets('LocationsSearchScreen has a title and message',
      (WidgetTester tester) async {
    await tester.pumpWidget(const LocationsSearchScreen());
    final messageFinder = find.text('Lcations locator');
    expect(messageFinder, findsOneWidget);
  });
}
