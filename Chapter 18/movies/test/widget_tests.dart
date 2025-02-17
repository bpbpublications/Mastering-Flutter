import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movies/ui/screens/movie_detail/button_row.dart';
import 'package:movies/ui/widgets/text_icon.dart';

void main() {
  testWidgets('Test TextIcon', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: TextIcon(
      text: const Text('Test'),
      icon: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_outlined,
            size: 24,
          )),
    )));
    final textFinder = find.text('Test');
    expect(textFinder, findsOneWidget);
    final iconFinder = find.byIcon(Icons.favorite_outlined);
    expect(iconFinder, findsOneWidget);
  });

  testWidgets('Test ButtonRow', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: ButtonRow(favoriteSelected: true, onFavoriteSelected: () {

    },

    )));
    final textFinder = find.text('Favorite');
    expect(textFinder, findsOneWidget);
    final textIconFinder = find.ancestor(of: textFinder, matching: find.byType(TextIcon));
    final iconButton = find.descendant(of: textIconFinder, matching: find.byType(IconButton));
    expect(iconButton, findsOneWidget);
    var iconFinder = find.descendant(of: iconButton, matching: find.byType(Icon));
    var icon = tester.widget(iconFinder);
    expect((icon as Icon).color, Colors.white);
    await tester.tap(iconButton);
    await tester.pump(const Duration(seconds: 3));
    await tester.idle();
    iconFinder = find.descendant(of: iconButton, matching: find.byType(Icon));
    icon = tester.widget(iconFinder);
    expect(icon.color, Colors.red);
  });
}
