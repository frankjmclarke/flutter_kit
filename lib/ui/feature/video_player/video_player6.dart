// Video by Pixabay: https://www.pexels.com/video/bee-on-a-flower-854251/

import 'package:devkitflutter/ui/reusable/global_widget.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class VideoPlayer6Page extends StatefulWidget {
  @override
  _VideoPlayer6PageState createState() => _VideoPlayer6PageState();
}

class _VideoPlayer6PageState extends State<VideoPlayer6Page> {
  // initialize global widget
  final _globalWidget = GlobalWidget();

  late FlickManager flickManager;

  @override
  void initState() {
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network('https://ijtechnology.net/assets/videos/demo.mp4'),
    );

    super.initState();
  }

  @override
  void dispose() {
    flickManager.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _globalWidget.globalAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(24, 24, 24, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: _globalWidget.createDetailWidget(
                  title: 'Video Player 6',
                  desc: 'This is the example of video player with flick video player - default player.\nVideo by Pixabay'),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: VisibilityDetector(
                key: ObjectKey(flickManager),
                onVisibilityChanged: (visibility) {
                  if (visibility.visibleFraction == 0 && this.mounted) {
                    flickManager.flickControlManager?.autoPause();
                  } else if (visibility.visibleFraction == 1) {
                    flickManager.flickControlManager?.autoResume();
                  }
                },
                child: Container(
                  child: FlickVideoPlayer(
                    flickManager: flickManager,
                    flickVideoWithControls: FlickVideoWithControls(
                      closedCaptionTextStyle: TextStyle(fontSize: 8),
                      controls: FlickPortraitControls(),
                    ),
                    flickVideoWithControlsFullscreen: FlickVideoWithControls(
                      controls: FlickLandscapeControls(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
