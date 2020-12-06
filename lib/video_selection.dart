import 'package:flutter/material.dart';
import 'package:flutterqbsui_app/better_player.dart';
import 'package:flutterqbsui_app/home_page.dart';

void main(){
  runApp(MaterialApp(
    home: Videoselection(),
  ));
}

class Videoselection extends StatelessWidget {

  static String tag = 'video-selection';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Huruf Hijaiyah"),
              centerTitle: true,
              leading: IconButton(icon: Icon(Icons.home), onPressed: (){Navigator.of(context).pushNamed(HomePage.tag);}),
            ),
            body: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: <Color>[
                        Colors.lightBlue,
                        Colors.lightBlueAccent
                      ]
                  )
              ),
             child: GridView.count(
                 crossAxisCount: 2,
                   children: <Widget>[
                     buildCard(
                       imageCard: 'https://upload.wikimedia.org/wikipedia/commons/d/d2/Arabic_Alif.gif',
                       textCard: 'Alif',
                       press: () {Navigator.of(context).pushNamed(Better.tag);},
             ),
                     buildCard(
                       imageCard: 'https://upload.wikimedia.org/wikipedia/commons/d/d2/Arabic_Alif.gif',
                       textCard: 'Alif',
                       press: () {Navigator.of(context).pushNamed(Better.tag);},
                     ),
                   ]
             ),
            )
    )); 
  }

}

class buildCard extends StatelessWidget {
  final String imageCard, textCard;
  final Function press;
  const buildCard({
    Key key,
    this.imageCard,
    this.textCard,
    this.press,
  }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.only(left: 10.0, top: 15.0, right: 10.0, bottom: 15.0),
        child: new Column(
          children: <Widget>[
            new Image(image: NetworkImage(imageCard),
              width: 50.0,
              height: 75.0,),
            new Text(textCard),
            new IconButton(
                icon: Icon(Icons.play_circle_fill),
                onPressed: press,
            )
          ],
        )

    );
  }
}
