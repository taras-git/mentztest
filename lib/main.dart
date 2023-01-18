import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mentztest/data_model.dart';

const url =
    'https://mvvvip1.defas-fgi.de/mvv/XML_STOPFINDER_REQUEST?language=en&outputFormat=RapidJSON&type_sf=any&name_sf=test';

Future<JsonResponse> fetchUrl() async {
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return JsonResponse.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load response');
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<JsonResponse> futureJsonResponse;

  @override
  void initState() {
    super.initState();
    futureJsonResponse = fetchUrl();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mentz Test App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mentz Test App'),
        ),
        body: Column(
          children: [
            TextField(),
            OutlinedButton(
              onPressed: () {},
              child: Text('Press me'),
            ),
            Expanded(
              child: Center(
                child: ShowData(
                  futureJsonResponse: futureJsonResponse,
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

  final Future<JsonResponse> futureJsonResponse;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<JsonResponse>(
      future: futureJsonResponse,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data!.version);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        // By default, show a loading spinner.
        return const CircularProgressIndicator();
      },
    );
  }
}
