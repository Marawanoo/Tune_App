import 'package:flutter/material.dart';
import 'package:tune/models/item_models.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
          onTap: item.playSound,
          child: Container(
            color: item.tuneColor,
          )),
    );
  }
}
