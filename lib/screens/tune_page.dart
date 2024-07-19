import 'package:flutter/material.dart';
import 'package:tune/models/item_models.dart';
import 'package:tune/widgets/tune_item.dart';

class TunePage extends StatelessWidget {
  const TunePage({super.key});

  final List<ItemModel> tuneList = const [
    ItemModel(tuneColor: Color(0xffe6e1dd), sound: "note1.wav"),
    ItemModel(tuneColor: Color(0xffe2f3fd), sound: "note2.wav"),
    ItemModel(tuneColor: Color(0xffffe1a0), sound: "note3.wav"),
    ItemModel(tuneColor: Color(0xffe07d54), sound: "note4.wav"),
    ItemModel(tuneColor: Color(0xff899481), sound: "note5.wav"),
    ItemModel(
        tuneColor: Color.fromARGB(255, 118, 166, 214), sound: "note6.wav"),
    ItemModel(tuneColor: Color(0xff304f6d), sound: "note7.wav")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xff153048),
          title: const Text(
            'Tune',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          elevation: 0,
        ),
        body: Column(
          children: tuneList.map((e) => TuneItem(item: e)).toList(),
        ));
  }
}
