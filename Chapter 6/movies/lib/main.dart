import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies/ui/theme/theme.dart';

import 'package:movies/ui/main_screen.dart';

/// This is the main entry point for Flutter
/// Use the runApp method to start your app
void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

/**
 * This is the State for the MainApp
 * Used to display the main app
 */
class _MainAppState extends State<MainApp> {

  @override
  Widget build(BuildContext context) {
    // The top level Flutter widget
    return MaterialApp(
      title: 'Movies',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: createTheme(),
    );
  }
}
