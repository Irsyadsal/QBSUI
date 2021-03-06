import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';

class Better extends StatefulWidget {
  static String tag = 'better-player';

  @override
  _BetterState createState() => _BetterState();
}

class _BetterState extends State<Better> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text("Video"),
      ),
      body: Container(
        child: BetterPlayer.network(
          "https://raw.githubusercontent.com/Fath-abd/fath/main/alif.mp4",
          betterPlayerConfiguration: BetterPlayerConfiguration
            ( aspectRatio: 16 / 9,
          ),
        ),
      ),
    );
  }
}

