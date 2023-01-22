import 'package:flutter/material.dart';
import 'package:mentztest/data_model/locations_data.dart';

class CardsList extends StatelessWidget {
  const CardsList({
    Key? key,
    required this.locations,
  }) : super(key: key);

  final List<Location> locations;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
              return Card(
                  elevation: 2,
                  shadowColor: Colors.black,
                  color: Colors.grey[100],
                  child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('name: ${loc.name ?? 'no data'}'),
                          Text('type: ${loc.type ?? 'no data'}'),
                          Text('locality: ${loc.coord ?? 'no data'}'),
                          Text('street name: ${loc.streetName ?? 'no data'}'),
                        ],
                      )));
            },
          ),
        ),
      ),
    );
  }
}
