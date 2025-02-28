import 'package:get/get.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:healink_app/utils/app_images.dart';

class LessonDetailController extends GetxController {
  final AudioPlayer audioPlayer = AudioPlayer();
  RxBool isPlaying = false.obs;
  Rx<Duration> currentPosition = Duration.zero.obs;
  Rx<Duration> totalDuration = Duration.zero.obs;
  final String audioUrl = 'https://samplelib.com/lib/preview/mp3/sample-6s.mp3';

  var isClicked = false.obs;

  @override
  void onInit() {
    super.onInit();
    _initAudio();
  }

  List<Map<String, dynamic>> biomarkers = [
    {
      "name": "Blood pressure (sys./dia.)",
      "category": "Heart disease",
      "image": kBiomarker4,
      "icon": kHeartIcon,
    },
    {
      "name": "Cortisol:DHEA-S ratio",
      "category": "Stress",
      "image": kBiomarker8,
      "icon": kFaceIcon,
    },
    {
      "name": "PBMC Telomere length (20th%)",
      "category": "Ageing",
      "image": kBiomarker9,
      "icon": kAgeIcon,
    },
    {
      "name": "Plasma BDNF",
      "category": "Depression",
      "image": kBiomarker10,
      "icon": kFaceIcon,
    },
    {
      "name": "DunedinPACE epigenetic clock",
      "category": "Ageing",
      "image": kBiomarker12,
      "icon": kAgeIcon,
    },
  ];

  void _initAudio() async {
    audioPlayer.onPositionChanged.listen((Duration position) {
      currentPosition.value = position;
    });

    audioPlayer.onDurationChanged.listen((Duration duration) {
      totalDuration.value = duration;
    });

    audioPlayer.onPlayerComplete.listen((_) async {
      currentPosition.value = Duration.zero;
      isPlaying.value = false;

      await audioPlayer.stop();
      await audioPlayer.setSource(UrlSource(audioUrl));
    });

    await audioPlayer.setSource(UrlSource(audioUrl));
  }

  void playPause() async {
    if (isPlaying.value) {
      await audioPlayer.pause();
    } else {
      if (currentPosition.value == totalDuration.value) {
        await audioPlayer.stop();
        await audioPlayer.setSource(UrlSource(audioUrl));
      }
      await audioPlayer.resume();
    }
    isPlaying.toggle();
  }

  void seekForward() async {
    final newPosition = currentPosition.value + Duration(seconds: 15);
    if (newPosition < totalDuration.value) {
      await audioPlayer.seek(newPosition);
    } else {
      await audioPlayer.seek(totalDuration.value);
    }
  }

  void seekBackward() async {
    final newPosition = currentPosition.value - Duration(seconds: 15);
    if (newPosition > Duration.zero) {
      await audioPlayer.seek(newPosition);
    } else {
      await audioPlayer.seek(Duration.zero);
    }
  }

  void seekTo(Duration position) async {
    await audioPlayer.seek(position);
  }

  @override
  void onClose() {
    audioPlayer.dispose();
    super.onClose();
  }
}
