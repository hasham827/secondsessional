import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'simple.dart';
import 'hard.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( backgroundColor: Colors.purple,
          title: Text('Dice App',style: TextStyle(fontSize:25, color: Colors.white, fontWeight:FontWeight.bold)),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text("Ttem 1"),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("Item 2"),
                trailing: Icon(Icons.arrow_forward),
              ),
            ],
          ),
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
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => HomePage3(),
                    )
                    ),
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
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => HomePage2(),
                  )
                  ),
                },
                //padding: EdgeInsets.all(10.0),
                child: Column( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(FontAwesomeIcons.dice,color: Colors.white,size: 60,),

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

