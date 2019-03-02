import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class FourthRow extends StatefulWidget {
  @override
  State createState() => FourthRowState();
}
class FourthRowState extends State<FourthRow> {
  VideoPlayerController _controller;
  bool _isPlaying = false;


  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("/assets/Rica.mp4")
      ..addListener(() {
        final bool isPlaying = _controller.value.isPlaying;
        if (isPlaying != _isPlaying) {
          setState(() {
            _isPlaying = isPlaying;
          });
        }
      })
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: _controller.value.initialized
              ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
              : Container(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _controller.value.isPlaying
              ? _controller.pause
              : _controller.play,
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );

  }
}
