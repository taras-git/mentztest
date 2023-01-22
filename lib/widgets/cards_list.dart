import 'package:flutter/material.dart';
import 'package:mentztest/data_model/locations_data.dart';
import 'package:mentztest/widgets/card_entry.dart';

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
                      CardEntry(title: 'NAME', loc: loc.name),
                      CardEntry(title: 'TYPE', loc: loc.type),
                      CardEntry(title: 'LOCATION', loc: loc.coord),
                      if (loc.streetName == null)
                        Container()
                      else
                        CardEntry(
                          title: 'STREET',
                          loc: loc.streetName,
                        ),
                      if (loc.buildingNumber == null)
                        Container()
                      else
                        CardEntry(
                          title: 'BUILDING No',
                          loc: loc.buildingNumber,
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
