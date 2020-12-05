
import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';
class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePage(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset('assets/images/GeeksforGeeks.jpg'),
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage("images/me.jpeg"),
                      fit: BoxFit.fill,
                    )
                )
            ),
            Container(
              child: Text(
              "Hasham Ahmad\nSP17-BCS-015",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontFamily: "Satisfy",
              ),textAlign: TextAlign.center,
            ),
            )
          ],


        ),
      ),
    );
  }
}
