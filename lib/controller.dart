import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class Controller extends GetxController {
  final video = VideoPlayerController.network(
      "https://d20uwst3rmplc8.cloudfront.net/live/3367/20210902053517ZjyZTb/0a953ac2ff4a2e00699432b2871689f3_20210902053517ZjyZTb.m3u8");

  @override
  void onInit() async {
    await video.initialize();
    await video.play();
    video.setLooping(true);
    super.onInit();
  }

  @override
  void onClose() {
    video.dispose();
    super.onClose();
  }

  Future<void> togglePlay() async {
    video.value.isPlaying ? await video.pause() : await video.play();
  }
}
