import 'package:flutter/material.dart';

import '../theme/theme.dart';

class SliverDivider extends StatelessWidget {
  const SliverDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverPadding(
      padding: EdgeInsets.only(
          left: 16, top: 8, right: 16, bottom: 8),
      sliver: SliverToBoxAdapter(
        child: Divider(
          color: primaryButton,
          thickness: 1.0,
        ),
      ),
    );
  }
}