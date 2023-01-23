import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mentztest/providers/locations_provider.dart';

class FilterByTypeDropdownButton extends ConsumerStatefulWidget {
  final List<String> locationTypes;

  const FilterByTypeDropdownButton({
    Key? key,
    required this.locationTypes,
  }) : super(key: key);

  @override
  FilterLocationsDropdownState createState() => FilterLocationsDropdownState();
}

class FilterLocationsDropdownState
    extends ConsumerState<FilterByTypeDropdownButton> {
  // ignore: prefer_typing_uninitialized_variables, type_annotate_public_apis
  var dropdownValue;

  @override
  Widget build(BuildContext context) {
    dropdownValue = ref.read(locationsProvider).filterByType;

    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 5,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 1,
        color: Colors.green,
      ),
      onChanged: (value) {
        setState(() {
          dropdownValue = value;
          ref.watch(locationsProvider.notifier).filterByType(value!);
        });
      },
      items: ref
          .read(locationsProvider)
          .locationTypes
          .map<DropdownMenuItem<String>>(
        (value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        },
      ).toList(),
    );
  }
}
