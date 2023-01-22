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

class CardEntry extends StatelessWidget {
  const CardEntry({
    Key? key,
    required this.title,
    required this.loc,
  }) : super(key: key);

  final String title;
  // ignore: type_annotate_public_apis, prefer_typing_uninitialized_variables
  final loc;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$title:  ',
        style: const TextStyle().copyWith(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        children: <TextSpan>[
          TextSpan(
              text: '${loc ?? 'no data'}',
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
              )),
        ],
      ),
    );
  }
}
