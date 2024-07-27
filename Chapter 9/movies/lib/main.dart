import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies/ui/theme/theme.dart';

import 'providers.dart';

/// This is the main entry point for Flutter
/// Use the runApp method to start your app
void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerStatefulWidget {
  const MainApp({super.key});

  @override
  ConsumerState<MainApp> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> {

  @override
  Widget build(BuildContext context) {
    final router = ref.watch(appRouterProvider);
    return MaterialApp.router(
      routerConfig: router.config(),
      title: 'Movies',
      debugShowCheckedModeBanner: false,
      theme: createTheme(),
    );

  }
}
