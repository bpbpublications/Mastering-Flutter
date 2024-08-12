import 'package:flutter/material.dart';

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
          child: Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16.0, 8.0, 0.0),
          child: TextButton(
            onPressed: onMoreClicked,
            child: Text(
              'More',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
