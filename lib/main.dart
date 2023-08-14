import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Xylophone());
}

final assetsAudioPlayer = AssetsAudioPlayer();
//here is the function to play the sound
void playSong(int soundNumber) {
  assetsAudioPlayer.open(
    Audio('assets/note$soundNumber.wav'),
  );
}
//here is the main widget
Expanded buidKey({required Color color, required int soundNumber}) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: () => {
        playSong(soundNumber),
      },
      child: const Text(''),
    ),
  );
}
//the main app start here
class Xylophone extends StatelessWidget {
  const Xylophone({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //calling the widgets
              buidKey(color: Colors.red, soundNumber: 1),
              buidKey(color: Colors.orange, soundNumber: 2),
              buidKey(color: Colors.yellow, soundNumber: 3),
              buidKey(color: Colors.green, soundNumber: 4),
              buidKey(color: Colors.teal, soundNumber: 5),
              buidKey(color: Colors.blue, soundNumber: 6),
              buidKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
