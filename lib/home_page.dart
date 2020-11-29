import 'package:flutter/material.dart';
import 'package:flutterqbsui_app/better_player.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final omrobbie = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/omrobbie.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome to Quadrant Qiroah',
        style: TextStyle(
          fontSize: 24.0,
          color: Colors.white,
        ),
      ),
  );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Quadrant Qiroah adalah aplikasi yang menyediakan video - video materi yang lengkap dan mudah dipahami oleh pengguna awam, sehingga belajar tahsin Al-Quran menjadi lebih mudah.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final next = MaterialButton(
        child: Text('selanjutnya', style: TextStyle(color: Colors.white),),
        color: Colors.blueAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        onPressed: (){
          Navigator.of(context).pushNamed(Better.tag);
        }
    );


    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[omrobbie, welcome, lorem, next],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}