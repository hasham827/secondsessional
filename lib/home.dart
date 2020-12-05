import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( backgroundColor: Colors.purple,
          title: Text('Dice App',style: TextStyle(fontSize:25, color: Colors.white, fontWeight:FontWeight.bold)),
            leading: GestureDetector(
                onTap: () {
               },
                child: Icon(
                  Icons.menu,  // add custom icons also
                )
            )
        ),
        body: Stack(
          children: <Widget>[
            ClipPath(
              clipper: WaveClipperOne(),
              child: Container(
                decoration:
                    BoxDecoration(color: Colors.purpleAccent),
                height: 250,
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 90.0),
              child: Text(
                "Select Your Level ",style: TextStyle(fontSize:25, color: Colors.white, fontWeight:FontWeight.bold)
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 350.0),
                decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    shape: BoxShape.circle
                ),
                 height: 130,
                width: 150.0,
                padding: EdgeInsets.all(5.0),
                child: FlatButton(
                  onPressed: () => {
                  },
                  padding: EdgeInsets.all(12.0),
                  child: Column( // Replace with a Row for horizontal icon + text
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(FontAwesomeIcons.dice,color: Colors.white,size: 50,),
                      SizedBox(height: 15,),
                      Text("Easy ",style: TextStyle(fontSize:20,color: Colors.white ,fontWeight:FontWeight.bold),
                      )

                    ],
                  ),
                ),

            ),
            Container(
              margin: EdgeInsets.only(left: 200.0,top: 350),
              decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  shape: BoxShape.circle
              ),
              height: 130,
              width: 150.0,
              padding: EdgeInsets.all(5.0),
              child: FlatButton(
                onPressed: () => {
                },
                padding: EdgeInsets.all(12.0),
                child: Column( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(FontAwesomeIcons.dice,color: Colors.white,size: 50,),

                    SizedBox(height: 15,),
                    Text("Hard ",style: TextStyle(fontSize:20,color: Colors.white ,fontWeight:FontWeight.bold),
                    )

                  ],
                ),
              ),

            ),
          ],
        ));
  }
}

