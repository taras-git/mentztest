import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:mentztest/data_model/response_data.dart';

const url =
    'https://mvvvip1.defas-fgi.de/mvv/XML_STOPFINDER_REQUEST?language=en&outputFormat=RapidJSON&type_sf=any&name_sf=test';

Future<ResponseData> fetchUrl() async {
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return ResponseData.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load response');
  }
}

void main() => runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<ResponseData> jsonResponse;

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

  final Future<ResponseData> futureJsonResponse;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ResponseData>(
      future: futureJsonResponse,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data!.version!);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        // By default, show a loading spinner.
        return const CircularProgressIndicator();
      },
    );
  }
}
