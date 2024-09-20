import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:movies/providers.dart';

import 'package:movies/router/app_routes.dart';
import 'package:movies/ui/menus.dart';
import 'package:movies/ui/screens/favorites/favorite_screen.dart';
import 'package:movies/ui/screens/genres/genre_screen.dart';
import 'package:movies/ui/screens/genres/search_dialog.dart';
import 'package:movies/ui/screens/home/home_screen.dart';

@RoutePage()
class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  // late TabsRouter currentTabsRouter;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    ref.read(eventBusProvider).on<MenuEvent>().listen((event) {
      switch (event) {
        case HomeEvent():
          pushScreen(const HomeRoute());
        case GenreEvent():
          pushScreen(const GenreRoute());
        case FavoritesEvent():
          pushScreen(const FavoriteRoute());
        case QuitEvent():
          SystemNavigator.pop();
        case SearchEvent():
          showDialog(
              context: context, builder: (context) => const SearchDialog());

        case SearchMovieEvent():
          ref.read(searchTextProvider.notifier).state = event.searchText;
          currentIndex = 1;
        // currentTabsRouter.setActiveIndex(1);
      }
    });
  }

  Future pushScreen(PageRouteInfo route) async {
    await context.router.push(route);
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      primaryNavigation: SlotLayout(
        config: <Breakpoint, SlotLayoutConfig>{
          Breakpoints.mediumAndUp: SlotLayout.from(
              key: const Key('PrimaryNavigation'),
              builder: (_) {
                return AdaptiveScaffold.standardNavigationRail(
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.home),
                      label: Text('Home'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Symbols.genres),
                      label: Text('Genre'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.favorite),
                      label: Text('Favorites'),
                    ),
                  ],
                  onDestinationSelected: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  selectedIndex: currentIndex,
                  backgroundColor: Colors.black,
                );
              })
        },
      ),
      body: SlotLayout(config: <Breakpoint, SlotLayoutConfig?>{
        Breakpoints.standard: SlotLayout.from(
            key: const Key('body'),
            builder: (_) {
              final body = switch (currentIndex) {
                0 => const HomeScreen(),
                1 => const GenreScreen(),
                2 => const FavoriteScreen(),
                _ => const HomeScreen()
              };
              return Scaffold(
                body: body,
              );
            }),
      }),
      bottomNavigation: SlotLayout(
        config: <Breakpoint, SlotLayoutConfig?>{
          Breakpoints.small: SlotLayout.from(
            key: const Key('bottomNavigation'),
            builder: (_) => SizedBox(
              height: 80,
              child: NavigationBar(
                height: 80,
                destinations: const [
                  NavigationDestination(
                      icon: Icon(Icons.home), label: 'Home'),
                  NavigationDestination(
                      icon: Icon(Symbols.genres), label: 'Genre'),
                  NavigationDestination(
                      icon: Icon(Icons.favorite), label: 'Favorites'),
                ],
                selectedIndex: currentIndex,
                onDestinationSelected: (navIndex) {
                  setState(() {
                    currentIndex = navIndex;
                  });
                },
              ),
            ),
          ),
        },
      ),
    );
    // return AutoTabsScaffold(
    //   backgroundColor: screenBackground,
    //   routes: const [
    //     HomeRoute(),
    //     GenreRoute(),
    //     FavoriteRoute(),
    //   ],
    //   bottomNavigationBuilder: (_, tabsRouter) => buildBottomBar(tabsRouter),
    // );
  }

// Widget buildBottomBar(TabsRouter tabsRouter) {
//   currentTabsRouter = tabsRouter;
//   return NavigationBar(
//     destinations: const [
//       NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
//       NavigationDestination(icon: Icon(Symbols.genres), label: 'Genre'),
//       NavigationDestination(icon: Icon(Icons.favorite), label: 'Favorites'),
//     ],
//     selectedIndex: tabsRouter.activeIndex,
//     onDestinationSelected: (navIndex) {
//       setState(() {
//         tabsRouter.setActiveIndex(navIndex);
//       });
//     },
//   );
// }
}
