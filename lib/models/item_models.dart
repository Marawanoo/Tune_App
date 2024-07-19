import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ItemModel {
  final Color tuneColor;
  final String sound;
  const ItemModel({required this.tuneColor, required this.sound});
  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
