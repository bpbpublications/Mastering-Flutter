import 'dart:io';

import 'package:colorize_lumberdash/colorize_lumberdash.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lumberdash/lumberdash.dart';
import 'package:movies/ui/theme/theme.dart';

import 'package:movies/providers.dart';
import 'package:movies/utils/utils.dart';

/// This is the main entry point for Flutter
/// Use the runApp method to start your app
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  putLumberdashToWork(withClients: [
    ColorizeLumberdash(),
  ]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.black, 
  ));
  await dotenv.load(fileName: '.env');
  if (isDesktop()) {
    await DesktopWindow.setWindowSize(const Size(700, 600));

    await DesktopWindow.setMinWindowSize(const Size(700, 600));
  }

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerStatefulWidget {
  const MainApp({super.key});

  @override
  ConsumerState<MainApp> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> {
  var initialized = false;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (initialized) {
        return;
      }
      if (Platform.isWindows) {
        final menuManager = ref.read(menuManagerProvider);
        menuManager.createWindowsMenus();
      }
      initialized = true;
    });
    final router = ref.watch(appRouterProvider);
    final menuManager = ref.watch(menuManagerProvider);
    if (isMac()) {
      return PlatformMenuBar(
        menus: menuManager.createMenus(),
        child: MaterialApp.router(
          routerConfig: router.config(),
          title: 'Movies',
          debugShowCheckedModeBanner: false,
          theme: createTheme(),
        ),
      );
    } else {
      return MaterialApp.router(
        routerConfig: router.config(),
        title: 'Movies',
        debugShowCheckedModeBanner: false,
        theme: createTheme(),
      );
    }
  }
}
