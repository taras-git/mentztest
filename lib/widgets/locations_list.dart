import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mentztest/providers/locations_provider.dart';

class LocationsList extends ConsumerWidget {
  const LocationsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locations = ref.watch(locationsProvider).locations;
    final loadingState = ref.watch(locationsProvider).loadingState;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 20,
              ),
              child: TextField(
                autocorrect: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
                onSubmitted: (text) async {
                  await ref
                      .read(locationsProvider.notifier)
                      .loadLocations(text);
                },
              ),
            ),
            if (loadingState == LoadingState.loading)
              const CircularProgressIndicator()
            else if (loadingState == LoadingState.start)
              const Text('Please enter a search term')
            else
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: locations.length,
                    itemBuilder: (
                      context,
                      index,
                    ) {
                      final loc = locations[index];
                      return Text(loc.name!);
                    },
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
