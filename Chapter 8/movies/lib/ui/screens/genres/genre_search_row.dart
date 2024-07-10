import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../theme/theme.dart';

typedef OnSearch = void Function(String searchString);

class GenreSearchRow extends ConsumerStatefulWidget {
  final OnSearch onSearch;

  const GenreSearchRow(this.onSearch, {super.key});

  @override
  ConsumerState<GenreSearchRow> createState() => _GenreSearchRowState();
}

class _GenreSearchRowState extends ConsumerState<GenreSearchRow> {
  late TextEditingController movieTextController;
  final FocusNode textFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    movieTextController = TextEditingController(text: '');
  }

  @override
  void dispose() {
    movieTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.max, children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: TextField(
            style: const TextStyle(color: Colors.white),
            focusNode: textFocusNode,
            keyboardType: TextInputType.text,
            enableSuggestions: false,
            autofocus: false,
            onSubmitted: (value) {
              widget.onSearch(value);
            },
            controller: movieTextController,
            autocorrect: false,
            decoration: InputDecoration(
              filled: true,
              focusColor: searchBarBackground,
              focusedBorder: null,
              enabledBorder: null,
              fillColor: searchBarBackground,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              hintText: 'movie name, genre',
              hintStyle: body1Regular.copyWith(color: posterBorder),
              suffixIcon: IconButton(
                onPressed: () {
                  movieTextController.clear();
                },
                icon: const Icon(Icons.close, color: Colors.white,), // Close icon
              ),
              prefixIcon: IconButton(
                icon: const Icon(Icons.search, color: Colors.white,),
                onPressed: () {
                  widget.onSearch(movieTextController.text);
                },
              ),
            ),
          ),
        ),
      )
    ]);
  }
}
