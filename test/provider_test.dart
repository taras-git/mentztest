import 'package:test/test.dart';
import 'package:mentztest/providers/locations_provider.dart';

void main() {
  test('Initial Location state', () {
    final locationState = LocationsState();
    expect(locationState.locations, []);
    expect(locationState.filterByType, 'All');
    expect(locationState.loadingState, LoadingState.start);
  });
}
