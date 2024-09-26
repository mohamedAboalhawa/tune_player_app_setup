import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/tune_model.dart';
import 'package:music_notes_player_app_setup/widgets/tune_item.dart';

// ignore: must_be_immutable
class TuneView extends StatelessWidget {
  const TuneView({super.key});

  final List<TuneModel> tuneColors = const [
    TuneModel(color: Colors.red, sound: 'note1.wav'),
    TuneModel(color: Colors.orange, sound: 'note2.wav'),
    TuneModel(color: Colors.green, sound: 'note3.wav'),
    TuneModel(color: Colors.yellow, sound: 'note4.wav'),
    TuneModel(color: Colors.pink, sound: 'note5.wav'),
    TuneModel(color: Colors.purple, sound: 'note6.wav'),
    TuneModel(color: Colors.blue, sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF253238),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: tuneColors.map((e) => TuneItem(tune: e)).toList(),
      ),
    );
  }

  // List<TuneItem> getTuneItems() {
  //   List<TuneItem> items = [];
  //   for (var color in tuneColors) {
  //     items.add(TuneItem(color: color));
  //   }
  //   return items;
  // }
}
