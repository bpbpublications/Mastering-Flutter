import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:movies/providers.dart';
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
  int currentIndex = 0;
  List<Widget> tabScreens = [];

  @override
  void initState() {
    super.initState();
    tabScreens.add(const HomeScreen());
    tabScreens.add(const GenreScreen());
    tabScreens.add(const FavoriteScreen());

    ref.read(eventBusProvider).on<MenuEvent>().listen((event) {
      switch (event) {
        case HomeEvent():
          setState(() {
            currentIndex = 0;
            ref.read(currentIndexProvider.notifier).state = currentIndex;
          });
        case GenreEvent():
          setState(() {
            currentIndex = 1;
            ref.read(currentIndexProvider.notifier).state = currentIndex;
          });
        case FavoritesEvent():
          setState(() {
            currentIndex = 2;
            ref.read(currentIndexProvider.notifier).state = currentIndex;
          });
        case QuitEvent():
          SystemNavigator.pop();
        case SearchEvent():
          showDialog(
              context: context, builder: (context) => const SearchDialog());

        case SearchMovieEvent():
          ref.read(searchTextProvider.notifier).state = event.searchText;
          currentIndex = 1;
          ref.read(currentIndexProvider.notifier).state = currentIndex;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    currentIndex = ref.read(currentIndexProvider);
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
                      ref.read(currentIndexProvider.notifier).state =
                          currentIndex;
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
              return Scaffold(
                body: tabScreens[currentIndex],
              );
            }),
      }),
      bottomNavigation: SlotLayout(
        config: <Breakpoint, SlotLayoutConfig?>{
          Breakpoints.small: SlotLayout.from(
            key: const Key('bottomNavigation'),
            builder: (_) => SizedBox(
              height: 80,
              child: BottomNavigationBar(
                currentIndex: currentIndex,
                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                    ref.read(currentIndexProvider.notifier).state =
                        currentIndex;
                  });
                },
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Symbols.genres),
                    label: 'Genre',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite),
                    label: 'Favorites',
                  ),
                ],
              ),
            ),
          ),
        },
      ),
    );
  }
}
