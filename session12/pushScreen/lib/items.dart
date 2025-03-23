import 'package:audioplayers/audioplayers.dart';

class Items {
  String? image;
  String enName;
  String? jbName;
  String sound;

  Items({this.image, required this.enName, this.jbName, required this.sound});
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
