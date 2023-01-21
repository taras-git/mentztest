import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mentztest/widgets/locations_list.dart';

class MentzApp extends ConsumerWidget {
  const MentzApp({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final theme = ThemeData();

    final router = GoRouter(
      routes: <GoRoute>[
        GoRoute(
            path: '/',
            builder: (
              context,
              state,
            ) =>
                const LocationsList()),
      ],
    );

    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.black,
          secondary: Colors.blue,
        ),
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
      title: 'MentzApp',
    );
  }
}
