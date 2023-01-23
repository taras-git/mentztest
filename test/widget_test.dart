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
    await tester.pump();
    //
    // To test a real HTTP call is not possible...
    //
    // Warning: At least one test in this suite creates an HttpClient. When
    // running a test suite that uses TestWidgetsFlutterBinding, all HTTP
    // requests will return status code 400, and no network request will
    // actually be made. Any test expecting a real network connection and
    // status code will fail.
    // To test code that needs an HttpClient, provide your own HttpClient
    // implementation to the code under test, so that your test can
    // consistently provide a testable response to the code under test.
    //
    // await tester.pump();
    // expect(find.text('Fulda'), findsOneWidget);
  });
}
