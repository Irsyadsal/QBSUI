import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Tajwid(),
  ));
}

class Tajwid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Tajwid"),
              centerTitle: true,
            ),
            body: Container(
             child: GridView.count(
                 crossAxisCount: 2,
               mainAxisSpacing: 30.0,
                   children: <Widget>[
                     buildCard(),
                     buildCard(),
                     buildCard(),
                     buildCard(),
                     buildCard(),
                     buildCard()
                   ]
             ),
            )
    )); 
  }

  Card buildCard() {
    return Card(
                     child: new Image(
                       width: 100.0,
                         height: 50.0,
                         image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/d/d2/Arabic_Alif.gif"))

                   );
  }}
