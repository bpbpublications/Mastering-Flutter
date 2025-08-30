import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_data/movie_data.dart';

import 'package:movies/ui/theme/theme.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

@RoutePage(name: 'VideoPageRoute')
class VideoPage extends ConsumerStatefulWidget {
  final MovieVideo movieVideo;

  const VideoPage(this.movieVideo, {super.key});

  @override
  ConsumerState<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends ConsumerState<VideoPage> {
  late YoutubePlayerController _youTubePlayerController;

  @override
  void initState() {
    super.initState();
    _youTubePlayerController = YoutubePlayerController(
      initialVideoId: widget.movieVideo.key,
      flags: const YoutubePlayerFlags(
        hideControls: true,
        mute: false,
        showLiveFullscreenButton: false,
        loop: false,
        autoPlay: true
      ),
    );
  }

  @override
  void dispose() {
    _youTubePlayerController.dispose();
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[]);
    super.dispose();
  }

  Widget getVideoPlayer(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: screenBackground,
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            context.router.maybePop();
          },
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
                child:
                YoutubePlayer(
                  controller: _youTubePlayerController,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.amber,
                  progressColors: const ProgressBarColors(
                    playedColor: Colors.amber,
                    handleColor: Colors.amberAccent,
                  ),
                  onReady: () {
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
// To unlock (allow any orientation):
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return getVideoPlayer(context);
  }
}
