import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing/controller.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorObservers: [],
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<Controller>(
        init: Controller(),
        builder: (controller) => PageView.builder(
          itemBuilder: (context, index) => Stack(
            alignment: Alignment.center,
            children: [
              VideoPlayer(controller.video),
              ValueListenableBuilder<VideoPlayerValue>(
                valueListenable: controller.video,
                builder: (context, value, child) => ProgressBar(
                  progress: value.position,
                  total: value.duration,
                  onSeek: (duration) {
                    controller.video.seekTo(duration);
                  },
                ),
              ),
            ],
          ),
          itemCount: 2,
        ),
      ),
    );
  }
}
