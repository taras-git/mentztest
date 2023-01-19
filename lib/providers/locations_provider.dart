import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:mentztest/data_model/locations_data.dart';
import 'package:mentztest/utils/constants.dart';

part 'locations_provider.freezed.dart';

@freezed
abstract class LocationsState with _$LocationsState {
  const factory LocationsState({
    @Default([]) List<Location> locations,
  }) = _LocationsState;

  const LocationsState._();
}

final locationsProvider =
    StateNotifierProvider<LocationsNotifier, LocationsState>(
  (ref) => LocationsNotifier(),
);

class LocationsNotifier extends StateNotifier<LocationsState> {
  LocationsNotifier() : super(const LocationsState()) {
    fetchUrl();
  }

  Future<void> fetchUrl() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final responseBody = LocationsData.fromJson(jsonDecode(response.body));
      state = state.copyWith(locations: responseBody.locations!);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load response');
    }
  }
}
