import 'package:flutter/material.dart';
import 'package:movie_app/Home_Screen.dart';
import 'package:video_player/video_player.dart';

/// Stateful widget to fetch and then display video content.
class VideoApp extends StatefulWidget {
  const VideoApp({Key? key}) : super(key: key);

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        '/vidoe/RRR Trailer (Telugu) - NTR, Ram Charan, Ajay Devgn, Alia Bhatt - SS Rajamouli - 25th March 2022.mkv')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   debugShowCheckedModeBanner: false,
      // title: 'Video Demo',
      home: Scaffold(
        appBar: AppBar(actions: [
        IconButton(onPressed:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Screen()));
        }, icon: Icon(Icons.logout_outlined))
      ], title: Text('WELCOME'),
      ),
        body: Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }


  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}



////////////////////////
///
///
///




class VideoApp3 extends StatefulWidget {
  const VideoApp3({super.key});

  @override
  State<VideoApp3> createState() => _VideoApp3State();
}

class _VideoApp3State extends State<VideoApp3> {

late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        '/vidoe/Pathaan - Official Trailer - Shah Rukh Khan - Deepika Padukone - John Abraham - Siddharth Anand.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Screen()));
        }, icon: Icon(Icons.logout_outlined))
      ], title: Text('WELCOME'),
      ),
      body: Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
    );
  }
}







//////////////////////////
///
///

class VideoApp1 extends StatefulWidget {
  const VideoApp1({super.key});

  @override
  State<VideoApp1> createState() => _VideoApp1State();
}

class _VideoApp1State extends State<VideoApp1> {

late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        '/vidoe/Avatar- The Way of Water - Official Trailer.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Screen()));
        }, icon: Icon(Icons.logout_outlined))
      ], title: Text('WELCOME'),
      ),
      body: Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
    );
  }
}



class VideoApp2 extends StatefulWidget {
  const VideoApp2({super.key});

  @override
  State<VideoApp2> createState() => _VideoApp2State();
}

class _VideoApp2State extends State<VideoApp2> {

late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        '/vidoe/Transformers- Rise of the Beasts - Official Teaser Trailer (2023 Movie).mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Screen()));
        }, icon: Icon(Icons.logout_outlined))
      ], title: Text('WELCOME'),
      ),
      body: Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
    );
  }
}
