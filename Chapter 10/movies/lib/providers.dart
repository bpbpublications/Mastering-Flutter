import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'router/app_routes.dart';
import 'ui/movie_viewmodel.dart';

part 'providers.g.dart';

@riverpod
Future<MovieViewModel> movieViewModel(MovieViewModelRef ref) async {
  final model = MovieViewModel();
  await model.setup();
  return model;
}


final heroTagProvider = StateProvider<String>((ref) {
  return '';
});


@riverpod
AppRouter appRouter(AppRouterRef ref) => AppRouter();

