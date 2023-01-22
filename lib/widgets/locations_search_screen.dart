import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:mentztest/providers/locations_provider.dart';
import 'package:mentztest/widgets/cards_list.dart';
import 'package:mentztest/widgets/dropdown_filter_button.dart';

class LocationsSearchScreen extends ConsumerWidget {
  LocationsSearchScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locations = ref.watch(locationsProvider).locations;
    final loadingState = ref.watch(locationsProvider).loadingState;
    final locationTypes = ref.watch(locationsProvider).locationTypes;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Text(
                'Locations locator',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 20,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: TextFormField(
                        controller: textFieldController,
                        autocorrect: false,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a search term';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Please enter a search term',
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OutlinedButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            await ref
                                .read(locationsProvider.notifier)
                                .loadLocations(textFieldController.text);
                          }
                          textFieldController.clear();
                        },
                        child: const Text('Search it!'),
                      ),
                      Row(
                        children: [
                          const Text('Filter by type: '),
                          FilterLocationsDropdown(locationTypes: locationTypes),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            if (loadingState == LoadingState.loading)
              const CircularProgressIndicator()
            else if (loadingState == LoadingState.start)
              const Text('Please enter a search term')
            else if (loadingState == LoadingState.error)
              const Text('There is something wrong with data...')
            else if (loadingState == LoadingState.noConnection)
              const Text('There is something wrong with connection...')
            else
              CardsList(locations: locations)
          ],
        ),
      ),
    );
  }
}
