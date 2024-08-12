import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../router/app_routes.dart';
import 'theme/theme.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: screenBackground,
      routes: [
        HomeRoute(),
        GenreRoute(),
        FavoriteRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) => buildBottomBar(tabsRouter),
    );
  }

  Widget buildBottomBar(TabsRouter tabsRouter) {
    return NavigationBar(
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Symbols.genres), label: 'Genre'),
        NavigationDestination(icon: Icon(Icons.favorite), label: 'Favorites'),
      ],
      selectedIndex: tabsRouter.activeIndex,
      onDestinationSelected: (navIndex) {
        setState(() {
          tabsRouter.setActiveIndex(navIndex);
        });
      },
    );
  }
}
