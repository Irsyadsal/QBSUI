import 'package:flutter/material.dart';
import 'package:flutterqbsui_app/option_page.dart';
import 'login_app.dart';
import 'home_page.dart';
import 'signup.dart';
import 'better_player.dart';
import 'video_selection.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    SignUp.tag: (context) => LoginPage (),
    Optionpage.tag: (context) => Optionpage(),
    Better.tag: (context) => Better(),
    Videoselection.tag : (context) => Videoselection()
  };

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Quadrant Qiro\'ah',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.green, fontFamily: 'Nunito'),
      home: new LoginPage(),
      routes: routes,
    );
  }
}
