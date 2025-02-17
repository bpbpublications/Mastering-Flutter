import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:movies/ui/screens/home/home_screen.dart';

import 'screens/genres/genre_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var index = 0;
  final List<Widget> screens = <Widget>[];

  @override
  void initState() {
    super.initState();
    screens.add(HomeScreen());
    screens.add(GenreScreen());
    screens.add(Placeholder());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Symbols.genres), label: 'Genre'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
        ],
        currentIndex: index,
        onTap: (navIndex) {
          setState(() {
            index = navIndex;
          });
        },
      ),
    );
  }
}
