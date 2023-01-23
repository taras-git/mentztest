import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mentztest/widgets/locations_search_screen.dart';
import 'package:mentztest/providers/locations_provider.dart';
import 'package:mentztest/data_model/locations_data.dart';
import 'package:mentztest/widgets/mentz_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockito/mockito.dart';

class FakeLocationsNotifier extends LocationsNotifier {
  @override
  Future<void> loadLocations(String searchText) async {
    state = state.copyWith(
      loadingState: LoadingState.loading,
    );

    Location fulda = Location(
      id: "10020062",
      isGlobalId: true,
      name: "Fulda",
      coord: [5457328.0, 1078048.0],
      type: "suburb",
      matchQuality: 0,
      isBest: true,
    );
    List<Location> list = [];
    list.add(fulda);
    state = state.copyWith(
      locations: list,
      loadingState: LoadingState.loaded,
    );
  }
}

void main() {
  testWidgets('LocationsSearchScreen has a title and text field',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          locationsProvider.overrideWith(
            (ref) => FakeLocationsNotifier(),
          )
        ],
        child: MentzApp(),
      ),
    );
    final messageFinder = find.text('Locations locator');
    expect(messageFinder, findsOneWidget);

    // Enter 'fd' into the TextField.
    await tester.enterText(find.byType(TextFormField), 'fd');
    // Tap the SearchIt button.
    await tester.tap(find.byType(OutlinedButton));
    await tester.pump();
    expect(find.text('Fulda'), findsOneWidget);
  });
}
