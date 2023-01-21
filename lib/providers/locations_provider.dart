import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:mentztest/data_model/locations_data.dart';
import 'package:mentztest/utils/constants.dart';

part 'locations_provider.freezed.dart';

final locationsProvider =
    StateNotifierProvider<LocationsNotifier, LocationsState>(
  (ref) => LocationsNotifier(),
);

enum LoadingState {
  start,
  loading,
  loaded,
  error,
  noConnection,
}

@freezed
abstract class LocationsState with _$LocationsState {
  const factory LocationsState({
    @Default([]) List<Location> locations,
    @Default(LoadingState.start) LoadingState loadingState,
  }) = _LocationsState;

  const LocationsState._();
}

class LocationsNotifier extends StateNotifier<LocationsState> {
  LocationsNotifier() : super(const LocationsState()) {
    state = state.copyWith(
      loadingState: LoadingState.start,
    );
  }

  Future<void> loadLocations(String searchText) async {
    state = state.copyWith(
      loadingState: LoadingState.loading,
    );

    try {
      final response = await http.get(Uri.parse('$url$searchText'));
      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        final responseBody = LocationsData.fromJson(jsonDecode(response.body));

        state = state.copyWith(
          locations: responseBody.locations!,
          loadingState: LoadingState.loaded,
        );
      } else {
        // If the server did not return a 200 OK response,
        state = state.copyWith(
          loadingState: LoadingState.error,
        );
        debugPrint('Failed to load response');
      }
    } on SocketException {
      state = state.copyWith(
        loadingState: LoadingState.noConnection,
      );
    }
  }
}
