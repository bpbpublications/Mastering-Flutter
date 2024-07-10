import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pod_player/pod_player.dart';

import '../../../utils/utils.dart';
import '../../theme/theme.dart';

class VideoPage extends ConsumerStatefulWidget {
  final String movieVideo;

  const VideoPage(this.movieVideo, {super.key});

  @override
  ConsumerState<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends ConsumerState<VideoPage> {
  late final PodPlayerController podPlayerController;

  @override
  void initState() {
    super.initState();
    final playVideoFrom = PlayVideoFrom.youtube(
      youtubeUrlFromId(widget.movieVideo),
    );
    podPlayerController = PodPlayerController(
        playVideoFrom: playVideoFrom,
        podPlayerConfig: const PodPlayerConfig(autoPlay: false))
      ..initialise();
  }

  @override
  void dispose() {
    podPlayerController.dispose();
    super.dispose();
  }

  Widget getVideoPlayer(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: screenBackground,
        leading: BackButton(
          color: Colors.white,
          onPressed: () {},
        ),
        centerTitle: false,
        title: Text('Back', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: screenBackground,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PodVideoPlayer(
                  controller: podPlayerController,
                  matchVideoAspectRatioToFrame: true,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return getVideoPlayer(context);
  }
}
