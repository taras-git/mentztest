import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mentztest/data_model/locations_data.dart';
import 'package:mentztest/utils/constants.dart';

Future<LocationsData> fetchUrl() async {
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    final result = LocationsData.fromJson(jsonDecode(response.body));
    // final r = result.locations.map((e) => Location.fromJson(e)).toList();
    return result;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load response');
  }
}

class MentzApp extends StatefulWidget {
  const MentzApp({super.key});

  @override
  State<MentzApp> createState() => _MentzAppState();
}

class _MentzAppState extends State<MentzApp> {
  late Future<LocationsData> jsonResponse;

  @override
  void initState() {
    super.initState();
    jsonResponse = fetchUrl();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mentz Test App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.only(right: 10.0, left: 20.0),
          hintStyle: const TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
            side: const BorderSide(
              color: Colors.blue,
              width: 2,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mentz Test App'),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter search term",
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Press me'),
            ),
            Expanded(
              child: Center(
                child: ShowData(
                  futureJsonResponse: jsonResponse,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShowData extends StatelessWidget {
  const ShowData({
    Key? key,
    required this.futureJsonResponse,
  }) : super(key: key);

  final Future<LocationsData> futureJsonResponse;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<LocationsData>(
      future: futureJsonResponse,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return snapshot.data!.locations == null
              ? const Text('Search match : 0')
              : Text('Search match: ${snapshot.data!.locations!.length}');
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        // By default, show a loading spinner.
        return const CircularProgressIndicator();
      },
    );
  }
}
