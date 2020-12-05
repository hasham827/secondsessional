import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'dart:math';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomePage2 extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage2> {
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
            title: Text('Hard Level',style: TextStyle(fontSize:25, color: Colors.white, fontWeight:FontWeight.bold)),
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

                margin: EdgeInsets.only(top: 50.0),
                child: Text(
                    " Guess your Number ",style: TextStyle(fontSize:25, color: Colors.white, fontWeight:FontWeight.bold)
                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 20.0,top: 80),
                height: 60,
                width: 60.0,
                padding: EdgeInsets.all(5.0),
                child: FlatButton(
                  onPressed: () => {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                     // builder: (context) => HomePage(),
                    )
                    ),
                  },
                  //padding: EdgeInsets.all(5.0),
                  child: Column( // Replace with a Row for horizontal icon + text
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Icon(FontAwesomeIcons.diceOne,color: Colors.white,size: 40,),

                      SizedBox(height: 5,),


                    ],
                  ),
                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 80.0,top: 80),

                height: 60,
                width: 60.0,
                padding: EdgeInsets.all(5.0),
                child: FlatButton(
                  onPressed: () => {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      //builder: (context) => HomePage(),
                    )
                    ),
                  },
                  //padding: EdgeInsets.all(5.0),
                  child: Column( // Replace with a Row for horizontal icon + text
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Icon(FontAwesomeIcons.diceTwo,color: Colors.white,size: 40,),

                      SizedBox(height: 5,),


                    ],
                  ),
                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 150.0,top: 80),
                height: 60,
                width: 60.0,
                padding: EdgeInsets.all(5.0),
                child: FlatButton(
                  onPressed: () => {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      //builder: (context) => HomePage(),
                    )
                    ),
                  },
                  //padding: EdgeInsets.all(5.0),
                  child: Column( // Replace with a Row for horizontal icon + text
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Icon(FontAwesomeIcons.diceThree,color: Colors.white,size: 40,),

                      SizedBox(height: 5,),


                    ],
                  ),
                ),

              ),

              Container(
                margin: EdgeInsets.only(left: 20.0,top: 140),
                height: 60,
                width: 60.0,
                padding: EdgeInsets.all(5.0),
                child: FlatButton(
                  onPressed: () => {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                     // builder: (context) => HomePage(),
                    )
                    ),
                  },
                  //padding: EdgeInsets.all(5.0),
                  child: Column( // Replace with a Row for horizontal icon + text
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Icon(FontAwesomeIcons.diceFour,color: Colors.white,size: 40,),

                      SizedBox(height: 5,),


                    ],
                  ),
                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 80.0,top: 140),
                height: 60,
                width: 60.0,
                padding: EdgeInsets.all(5.0),
                child: FlatButton(
                  onPressed: () => {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      //builder: (context) => HomePage(),
                    )
                    ),
                  },
                  //padding: EdgeInsets.all(5.0),
                  child: Column( // Replace with a Row for horizontal icon + text
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Icon(FontAwesomeIcons.diceFive,color: Colors.white,size: 40,),

                      SizedBox(height: 5,),


                    ],
                  ),
                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 150.0,top: 140),
                height: 60,
                width: 60.0,
                padding: EdgeInsets.all(5.0),
                child: FlatButton(
                  onPressed: () => {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      //builder: (context) => HomePage(),
                    )
                    ),
                  },
                  //padding: EdgeInsets.all(5.0),
                  child: Column( // Replace with a Row for horizontal icon + text
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Icon(FontAwesomeIcons.diceSix,color: Colors.white,size: 40,),

                      SizedBox(height: 5,),


                    ],
                  ),
                ),

              ),

              Container(
                margin: EdgeInsets.only(left: 200,top: 10.0),
                child: Text(
                    " Score of B ",style: TextStyle(fontSize:25, color: Colors.white, fontWeight:FontWeight.bold)
                ),
              ),
              Container(
                  child: Column(


                  )

              ),

              Container(

                margin: EdgeInsets.only(left: 110.0,top: 450),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle

                ),
                height: 160,
                width: 160.0,
                padding: EdgeInsets.all(5.0),
                child: Column( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Winner is ", textAlign: TextAlign.left,style: TextStyle(fontSize:30, color: Colors.purpleAccent, fontWeight:FontWeight.bold)),

                    Icon(FontAwesomeIcons.smile,color: Colors.purpleAccent,size: 30,),

                    SizedBox(height: 5,),


                  ],
                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 270.0,top: 600),
                decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    shape: BoxShape.circle
                ),
                height: 60,
                width: 60.0,
                padding: EdgeInsets.all(5.0),
                child: FlatButton(
                  onPressed: () => {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => HomePage(),
                    )
                    ),
                  },
                  padding: EdgeInsets.all(5.0),
                  child: Column( // Replace with a Row for horizontal icon + text
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Icon(FontAwesomeIcons.home,color: Colors.white,size: 30,),

                      SizedBox(height: 5,),


                    ],
                  ),
                ),

              ),
              Container(
                margin: EdgeInsets.only(left:10,top: 600),
                decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    shape: BoxShape.rectangle
                ),
                height: 40,
                width: 90.0,
                padding: EdgeInsets.all(5.0),
                child: FlatButton(
                  onPressed: () => {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => HomePage(),
                    )
                    ),
                  },
                 // padding: EdgeInsets.all(5.0),
                  child: Column( // Replace with a Row for horizontal icon + text
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Quite",style: TextStyle(fontSize:20, color: Colors.white, fontWeight:FontWeight.bold)),

                      //Icon(FontAwesomeIcons.home,color: Colors.white,size: 30,),

                      SizedBox(height: 5,),


                    ],
                  ),
                ),

              ),
              Container(
                margin: EdgeInsets.only(right:200,top: 260),

                child: Center(

                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column( // Replace with a Row for horizontal icon + text
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: diceimage,
                            width: 100.0,
                            height: 100.0,
                          ),

                          SizedBox(height: 5,),
                          Container(
                            margin: EdgeInsets.only(top: 40.0),
                            child: RaisedButton(
                              color: Colors.purpleAccent,
                              padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                              child: Text(
                                'Roll the dice A',
                              ),
                              onPressed: rollDice,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 270.0,top: 200),
                        decoration: BoxDecoration(
                            color: Colors.purpleAccent,
                            shape: BoxShape.circle
                        ),
                        height: 60,
                        width: 60.0,
                        padding: EdgeInsets.all(5.0),
                        child: FlatButton(
                          onPressed: () => {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => HomePage(),
                            )
                            ),
                          },
                          padding: EdgeInsets.all(5.0),
                          child: Column( // Replace with a Row for horizontal icon + text
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              Icon(FontAwesomeIcons.home,color: Colors.white,size: 30,),

                              SizedBox(height: 5,),


                            ],
                          ),
                        ),

                      ),
                    ],
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left:200,top: 260),

                child: Center(

                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column( // Replace with a Row for horizontal icon + text
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: diceimage,
                            width: 100.0,
                            height: 100.0,
                          ),

                          SizedBox(height: 5,),
                          Container(
                            margin: EdgeInsets.only(top: 40.0),
                            child: RaisedButton(
                              color: Colors.purpleAccent,
                              padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                              child: Text(
                                'Roll the dice B',
                              ),
                              onPressed: rollDice,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              )

            ]));
  }
}
