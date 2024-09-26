import 'package:flutter/material.dart';
import 'package:flutter_application_1/audioplayer/audio_service.dart';

class AbcQuizScreen extends StatefulWidget {
  const AbcQuizScreen({super.key});

  @override
  State<AbcQuizScreen> createState() => _AbcQuizScreenState();
}

class _AbcQuizScreenState extends State<AbcQuizScreen> {
  final AudioService _audioService = AudioService();
  bool isPlaying = false;

  String assetPath =
      "sounds/letters/Sound_A.mp3"; // Path to the audio file in assets

  @override
  void initState() {
    super.initState();

    // Listen for when the audio completes playing
    _audioService.setOnComplete(() {
      setState(() {
        isPlaying = false;
      });
    });
  }

  @override
  void dispose() {
    _audioService.dispose();
    super.dispose();
  }

  // void _playPause() async {
  //   if (isPlaying) {
  //     await _audioService.pause();
  //   } else {
  //     await _audioService.playFromAssets(assetPath);
  //   }

  //   setState(() {
  //     isPlaying = !isPlaying;
  //   });
  // }

  void _stop() async {
    await _audioService.stop();
    setState(() {
      isPlaying = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio Player from Assets'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // IconButton(
            //   iconSize: 64.0,
            //   icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
            //   onPressed: _playPause,
            // ),
            const SizedBox(height: 20),
            IconButton(
              iconSize: 64.0,
              icon: const Icon(Icons.stop),
              onPressed: _stop,
            ),
          ],
        ),
      ),
    );
  }
}
