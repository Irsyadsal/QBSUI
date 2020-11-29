
import 'package:flutter/material.dart';
import 'package:quadrant_qiroah/navigation_routes.dart';

void main(){
  runApp(new MaterialApp(
    home: MainPage(),
    title: "Option Page",
    routes: <String, WidgetBuilder>{
      '/Optionpage' : (BuildContext context) => new MainPage(),
      '/Halsatu' : (BuildContext context) => new Halsatu()
  },
  ));
}

class Optionpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text("Home Page"),
        ),
        body: Container(
          child: Container(
            
            child: ListView(
              children: <Widget>[
                buildCard("Tajwid", "Tajwid adalah ilmu yang mengajarkan panjang pendek bacaan al-qur'an", Colors.blue, Colors.blue),
                buildCard("Makhrorijul Huruf", "Makhorijul Huruf berisi pengetahuan tentang tempat keluarnya huruf hijaiyah.", Colors.red, Colors.red),
                buildCard("Tanda Baca", "Tanda baca dalam al-qur'an merupakan salah satu fondasi bacaan", Colors.yellow, Colors.yellow),
                buildCard("Lahn", "Lahn merupakan kumpulan kesalahan umum yang kerap terjadi saat membaca al - qur'an.", Colors.green, Colors.green)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Card buildCard(String titleText, String subtitleText, Color colorCard, Color colorTextButton) {
    return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
              ),
              elevation: 8,
              margin: EdgeInsets.all(10.0),
              color: colorCard,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(20.0),
                      child: ListTile(
                       title: Container(
                         margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 10.0),
                           child: Text(titleText, style: TextStyle(color: Colors.white),)),
                        subtitle: Text(subtitleText, style: TextStyle(color: Colors.white),),
                        ),
                    ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 35, top: 5, right: 1, bottom: 5),
                          child: RaisedButton(
                            child: Text("Pelajari", style: TextStyle(color: colorTextButton),),
                            color: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                            onPressed: (){
                              BuildContext context;
                              Navigator.pushNamed(context, '/Halsatu');
                            },
                            ),
                        )
                        ],
                      )
                    ]),
                );
              }
  }
