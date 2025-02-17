import 'package:flutter/material.dart';

class ErrorWidget extends StatelessWidget {
  final String errorMessage;
  const ErrorWidget({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorMessage));
  }
}
