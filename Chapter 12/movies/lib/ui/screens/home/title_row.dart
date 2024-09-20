import 'package:flutter/material.dart';

import 'package:movies/ui/theme/theme.dart';

typedef OnMoreClicked = void Function();

class TitleRow extends StatelessWidget {
  final String text;
  final OnMoreClicked onMoreClicked;
  const TitleRow({super.key, required this.text, required this.onMoreClicked});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16.0, 0.0, 8.0),
          child: Text(text, style: Theme.of(context).textTheme.headlineLarge),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16.0, 8.0, 0.0),
          child: TextButton(
            onPressed: onMoreClicked,
            child: Text(
              'More',
              style: body1Regular,
            ),
          ),
        ),
      ],
    );
  }
}
