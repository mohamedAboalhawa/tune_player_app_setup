import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/views/tune_view.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => const TuneApp(),
  ));
}

class TuneApp extends StatelessWidget {
  const TuneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home:  const TuneView(),
    );
  }
}
