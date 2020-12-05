import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'dart:math';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomePage3 extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage3> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceimage;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceimage = one;
    });
  }

  void rollDice() {
    int random = (1 + Random().nextInt(6));

    AssetImage newImage;

    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }
    setState(() {
      diceimage = newImage;
    });
  }

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
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
                " Score of A ",style: TextStyle(fontSize:25, color: Colors.white, fontWeight:FontWeight.bold)
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 200,top: 10.0),
            child: Text(
                " Score of B ",style: TextStyle(fontSize:25, color: Colors.white, fontWeight:FontWeight.bold)
            ),
          ),
      Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Image(
                image: diceimage,
                width: 100.0,
                height: 100.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 40.0),
                child: RaisedButton(
                  color: Colors.yellow,
                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                  child: Text(
                    'Roll the dice!',
                  ),
                  onPressed: rollDice,
                ),
              )
            ],
          ),
        ),
      )]));
  }
}
