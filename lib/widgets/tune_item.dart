import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  final TuneModel tune;
  const TuneItem({super.key,required this.tune});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}