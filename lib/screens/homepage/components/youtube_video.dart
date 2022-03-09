import 'package:flutter/material.dart';
import 'package:new_mhm_website/models/yt_video_model.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubeVideo extends StatefulWidget {
  const YoutubeVideo({Key? key}) : super(key: key);

  @override
  _YoutubeVideoState createState() => _YoutubeVideoState();
}

class _YoutubeVideoState extends State<YoutubeVideo> {
  late YoutubePlayerController _ytbPlayerController;
  List<YoutubeModel> videosList = [
    YoutubeModel(id: 1, youtubeId: 'dbiPBRDzYQc'),
    YoutubeModel(id: 2, youtubeId: 'UQGoVB_zMYQ'),
    YoutubeModel(id: 3, youtubeId: 'FLcRb289uEM'),
    YoutubeModel(id: 4, youtubeId: 'g2nMKzhkvxw'),
    YoutubeModel(id: 5, youtubeId: 'qoDPvFAk2Vg'),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // _setOrientation([
    //   DeviceOrientation.landscapeRight,
    //   DeviceOrientation.landscapeLeft,
    //   DeviceOrientation.portraitUp,
    //   DeviceOrientation.portraitDown,
    // ]);

    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      setState(() {
        _ytbPlayerController = YoutubePlayerController(
            initialVideoId: videosList[0].youtubeId,
            params: YoutubePlayerParams(
              autoPlay: true,
              loop: true,
              desktopMode: true,
              showFullscreenButton: true,
              showControls: true,
            ));
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _ytbPlayerController.close();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: 12 / 4,
        child: _ytbPlayerController != null
            ? YoutubePlayerIFrame(
                aspectRatio: 16 / 9,
                controller: _ytbPlayerController,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
