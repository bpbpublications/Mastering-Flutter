import 'package:flutter/material.dart';

import 'package:movies/utils/utils.dart';

class TextIcon extends StatelessWidget {
  final Text text;
  final IconButton icon;
  const TextIcon({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon,
        addVerticalSpace(4),
        text,
      ],
    );
  }
}
