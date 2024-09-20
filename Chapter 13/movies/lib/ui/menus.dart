import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies/providers.dart';

sealed class MenuEvent {}
class QuitEvent extends MenuEvent {}
class HomeEvent extends MenuEvent {}
class GenreEvent extends MenuEvent {}
class FavoritesEvent extends MenuEvent {}
class SearchEvent extends MenuEvent {}
class SearchMovieEvent extends MenuEvent {
  final String searchText;

  SearchMovieEvent(this.searchText);
}

class MenuManager {
  final ProviderRef ref;

  MenuManager(this.ref);

  List<PlatformMenu> createMenus() {
    return [
      createMovieMenu(),
      createOptionsMenu(),
    ];
  }
  PlatformMenu createMovieMenu() {
    return PlatformMenu(label: 'Movies', menus: [
      PlatformMenuItem(
          label: 'Quit',
          onSelected: () => ref.read(eventBusProvider).fire(QuitEvent()),
          shortcut: const SingleActivator(LogicalKeyboardKey.keyQ, meta: true)),
    ]);
  }

  PlatformMenu createOptionsMenu() {
    return PlatformMenu(label: 'Options', menus: [
      PlatformMenuItem(
          label: 'Home',
          onSelected: () => ref.read(eventBusProvider).fire(HomeEvent()),
          shortcut: const SingleActivator(LogicalKeyboardKey.keyH, meta: true)),
      PlatformMenuItem(
          label: 'Genre',
          onSelected: () => ref.read(eventBusProvider).fire(GenreEvent()),
          shortcut: const SingleActivator(LogicalKeyboardKey.keyG, meta: true)),
      PlatformMenuItem(
          label: 'Favorites',
          onSelected: () => ref.read(eventBusProvider).fire(FavoritesEvent()),
          shortcut: const SingleActivator(LogicalKeyboardKey.keyF, meta: true)),
      PlatformMenuItem(
          label: 'Search',
          onSelected: () => ref.read(eventBusProvider).fire(SearchEvent()),
          shortcut: const SingleActivator(LogicalKeyboardKey.keyS, meta: true)),
    ]);
  }

}