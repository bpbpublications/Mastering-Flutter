import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../widgets/text_icon.dart';

typedef OnFavoriteSelected = void Function();

class ButtonRow extends StatefulWidget {
  final bool favoriteSelected;
  final OnFavoriteSelected onFavoriteSelected;

  const ButtonRow({
    super.key,
    required this.favoriteSelected,
    required this.onFavoriteSelected,
  });

  @override
  State<ButtonRow> createState() => _ButtonRowState();
}

class _ButtonRowState extends State<ButtonRow> with TickerProviderStateMixin {
  late AnimationController _sizeController;
  late Animation<double> _sizeAnimation;

  late AnimationController _colorController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _sizeController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1), // Adjust pulse duration
    )..repeat(reverse: true); // Make animation repeat

    _sizeAnimation = Tween<double>(
      begin: 1.0, // Original size
      end: 1.5, // Scaled-up size
    ).animate(
      CurvedAnimation(parent: _sizeController, curve: Curves.easeInOut),
    );

    _colorController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1), // Adjust color change duration
    )..repeat(reverse: true);

    _colorAnimation = ColorTween(
      begin: Colors.white, // Starting color
      end: Colors.red, // Ending color
    ).animate(
      CurvedAnimation(parent: _colorController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _sizeController.dispose();
    _colorController.dispose();
    super.dispose();
  }

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
                widget.onFavoriteSelected();
              },
              icon: widget.favoriteSelected
                  ? AnimatedBuilder(
                      animation:
                          Listenable.merge([_sizeController, _colorController]),
                      builder: (context, child) {
                        return Icon(
                          Icons.favorite_outlined,
                          size: 21 * _sizeAnimation.value,
                          color: _colorAnimation.value,
                        );
                      })
                  : Icon(
                      Icons.favorite_border,
                      color: Colors.white,
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
