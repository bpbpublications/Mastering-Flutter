import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies/providers.dart';
import 'package:movies/ui/menus.dart';
import 'package:movies/utils/utils.dart';

class SearchDialog extends ConsumerStatefulWidget {
  const SearchDialog({super.key});

  @override
  ConsumerState<SearchDialog> createState() => _SearchDialogState();
}

class _SearchDialogState extends ConsumerState<SearchDialog> {
  TextEditingController searchTextController = TextEditingController();

  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context);
    final width = query.size.width * 0.7;
    const height = 300.0;
    return AlertDialog(
      contentPadding: const EdgeInsets.fromLTRB(24.0, 0.0, 0.0, 24.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      content: SizedBox(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: SizedBox(
            width: width,
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search Movies',
                      // hintStyle: TextStyle(color: Colors.black),
                    ),
                    autofocus: true,
                    style: const TextStyle(color: Colors.black),
                    textInputAction: TextInputAction.done,
                    onSubmitted: (value) {
                      ref.read(eventBusProvider).fire(SearchMovieEvent(value));
                      context.router.maybePop();
                    },
                    controller: searchTextController,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () => context.router.maybePop(),
                        child: const Text('Cancel')),
                    addHorizontalSpace(8),
                    ElevatedButton(
                        onPressed: () {
                          ref.read(eventBusProvider).fire(
                              SearchMovieEvent(searchTextController.text));
                          context.router.maybePop();
                        },
                        child: const Text('Search'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
