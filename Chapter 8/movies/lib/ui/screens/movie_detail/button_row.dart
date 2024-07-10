import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../widgets/text_icon.dart';

typedef OnFavoriteSelected = void Function();

class ButtonRow extends StatelessWidget {
  final bool favoriteSelected;
  final OnFavoriteSelected onFavoriteSelected;

  const ButtonRow({
    super.key,
    required this.favoriteSelected,
    required this.onFavoriteSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 0, bottom: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          TextIcon(
            text: Text(
              'Favorite',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            icon: IconButton(
              onPressed: () {
                onFavoriteSelected();
              },
              icon: Icon(
                favoriteSelected ? Icons.favorite_outlined : Icons.favorite_border,
                color: favoriteSelected ? Colors.red : Colors.white,
              ),
            ),
          ),
          addHorizontalSpace(32),
          TextIcon(
            text: Text(
              'Rate',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            // TODO For you to implement
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.thumb_up_alt_outlined,
                color: Colors.white,
              ),
            ),
          ),
          addHorizontalSpace(32),
          TextIcon(
            text: Text(
              'Share',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            // TODO For you to implement
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.ios_share,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
