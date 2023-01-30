import 'package:devkitflutter/config/constant.dart';
import 'package:devkitflutter/ui/feature/video_player/video_player1.dart';
import 'package:devkitflutter/ui/feature/video_player/video_player2.dart';
import 'package:devkitflutter/ui/feature/video_player/video_player3.dart';
import 'package:devkitflutter/ui/feature/video_player/video_player4.dart';
import 'package:devkitflutter/ui/feature/video_player/video_player5.dart';
import 'package:devkitflutter/ui/feature/video_player/video_player6.dart';
import 'package:devkitflutter/ui/reusable/global_widget.dart';
import 'package:flutter/material.dart';

class VideoPlayerListPage extends StatefulWidget {
  @override
  _VideoPlayerListPageState createState() => _VideoPlayerListPageState();
}

class _VideoPlayerListPageState extends State<VideoPlayerListPage> {
  // initialize global widget
  final _globalWidget = GlobalWidget();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _globalWidget.globalAppBar(),
        body: ListView(
          padding: EdgeInsets.fromLTRB(24, 24, 24, 16),
          children: [
            Container(
              child: Text('Video Player', style: TextStyle(
                  fontSize: 18, color: BLACK21, fontWeight: FontWeight.w500
              )),
            ),
            Container(
              margin: EdgeInsets.only(top: 24),
              child: Row(
                children: [
                  Flexible(
                      flex:5,
                      child: Container(
                        child: Text('Video player used to play a video.', style: TextStyle(
                            fontSize: 15, color: BLACK77,letterSpacing: 0.5
                        )),
                      )
                  ),
                  Flexible(
                      flex: 2,
                      child: Container(
                          alignment: Alignment.center,
                          child: Icon(Icons.ondemand_video, size: 50, color: SOFT_BLUE))
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 48),
              child: Text('List', style: TextStyle(
                  fontSize: 18, color: BLACK21, fontWeight: FontWeight.w500
              )),
            ),
            SizedBox(height: 18),
            _globalWidget.screenDetailList(context: context, title: 'Video Player 1 (Video from local source / assets)', page: VideoPlayer1Page()),
            _globalWidget.screenDetailList(context: context, title: 'Video Player 2 (Video from network)', page: VideoPlayer2Page()),
            _globalWidget.screenDetailList(context: context, title: 'Video Player 3 (Control overlay)', page: VideoPlayer3Page()),
            _globalWidget.screenDetailList(context: context, title: 'Video Player 4 (Player controller)', page: VideoPlayer4Page()),
            _globalWidget.screenDetailList(context: context, title: 'Video Player 5 (Duration text)', page: VideoPlayer5Page()),
            _globalWidget.screenDetailList(context: context, title: 'Video Player 6 (With flick video player - default player)', page: VideoPlayer6Page()),
          ],
        )
    );
  }
}
