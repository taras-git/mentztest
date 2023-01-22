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
  var dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = ref.read(locationsProvider).locationTypes.first;
  }

  @override
  Widget build(BuildContext context) {
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
