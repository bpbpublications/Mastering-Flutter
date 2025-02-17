import 'package:colorize_lumberdash/colorize_lumberdash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:integration_test/integration_test.dart';
import 'package:lumberdash/lumberdash.dart';
import 'package:movie_data/movie_data.dart';
import 'package:movies/firebase_options.dart';
import 'package:movies/main.dart';
import 'package:movies/ui/screens/home/title_row.dart';
import 'package:movies/ui/widgets/movie_row.dart';
import 'package:movies/utils/utils.dart';

void main() async {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;
  WidgetsFlutterBinding.ensureInitialized();
  putLumberdashToWork(withClients: [
    ColorizeLumberdash(),
  ]);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  if (!isWeb()) {
    await dotenv.load(fileName: '.env');
  }

  testWidgets('Test scrolling the Movie Listing', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ProviderScope(child: MainApp()));
    await tester.pumpAndSettle(const Duration(seconds: 1));

    final moreButtonFinder = find.byType(TitleRow);
    expect(moreButtonFinder, findsAtLeast(1));
    final firstMoreButton = moreButtonFinder.first;
    final textButtonFinder =
        find.descendant(of: firstMoreButton, matching: find.byType(TextButton));
    await tester.tap(textButtonFinder);
    await tester.pumpAndSettle(const Duration(seconds: 1));

    final movieListFinder = find.byType(PagedListView<int, MovieResults>);
    expect(movieListFinder, findsOneWidget);
    final movieList = tester.widget(movieListFinder);
    final pagingController = (movieList as PagedListView).pagingController;
    final controller = movieList.controller;

    final renderRow =
        tester.renderObject(find.byType(MovieRow).first) as RenderBox;
    final rowHeight = renderRow.size.height;
    final pageHeight = rowHeight * 20; // 20 items/page
    var currentPosition = pageHeight;
    for (var i = 0; i < 5; i++) {
      controller?.jumpTo(
        currentPosition,
      );
      currentPosition += pageHeight;
      await tester.pumpAndSettle(const Duration(milliseconds: 500));
    }
    await tester.pumpAndSettle(const Duration(seconds: 1));
    expect(pagingController.itemList?.length, 120);
  });
}
