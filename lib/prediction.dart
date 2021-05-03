import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data.dart';
import 'generateImage.dart';
import 'main.dart';

Random random = new Random();
int randomNumber;
String textPrediction;


class predictionPage extends StatefulWidget {
  @override
  _predictionPageState createState() => _predictionPageState();
}

class _predictionPageState extends State<predictionPage> {


  @override
  void initState() {
    super.initState();
    randomFrase();
  }

  randomFrase(){

      randomNumber = random.nextInt(556);
        setState(() {
          textPrediction = prediction[randomNumber];
        });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        //alignment: Alignment.center,
        color: Color(0xFF20242B),
        child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height - MediaQuery.of(context).size.height / 2.3,
                left: -50,
                child: Container(
                  width: MediaQuery.of(context).size.width + 100,
                  height: MediaQuery.of(context).size.width + 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular((MediaQuery.of(context).size.width + 100) /2),
                      gradient: new LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF373B41),
                          Color(0xFF20242B),
                          Color(0xFF20242B),
                          Color(0xFF20242B)
                        ],
                      )
                  ),
                ),
              ),
              Positioned(bottom: 100, left: 30, right: 30,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFFFFFFF),
                    ),
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(0,0,0,0),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20,5,20,5),
                          alignment: Alignment.centerLeft,
                              child: Text('🔮', style:TextStyle(fontSize: 35.0,color: Color(0xFF20242B), ),textAlign: TextAlign.left,),),
                        Container(
                          margin: EdgeInsets.fromLTRB(20,10,20,10),
                          alignment: Alignment.center,
                            child: Text(textPrediction, style:TextStyle(fontSize: 18.0,color: Color(0xFF20242B), ),textAlign: TextAlign.left,),),
                        Container(
                            margin: EdgeInsets.fromLTRB(20,5,20,5),
                            alignment: Alignment.center,
                              child: Text('Поделиться с друзьями через:', style:TextStyle(fontSize: 14.0,color: Color(0xFF20242B), ),textAlign: TextAlign.center,),),

                        GestureDetector(onTap:() => Navigator.pushReplacement (context,
                            CupertinoPageRoute(builder: (context) => generateImagePage())), child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 55,
                          margin: EdgeInsets.fromLTRB(20,5,20,5),
                          decoration: BoxDecoration(
                            color: Color(0xFFFEC390),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(20,0,0,0),
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    gradient: new LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xFFFEC390),
                                        Color(0xFFC42D90)
                                      ],
                                    )
                                ),
                                child: Image.asset("images/instagram.png",width: 24,height: 24,),
                              ),
                          Container(
                                margin: EdgeInsets.fromLTRB(60,0,0,0),
                                alignment: Alignment.centerLeft,
                                color: Colors.transparent,
                                child: Text('Instagram', style: TextStyle(fontSize: 17.0, color: Color(0xFFFFFFFF), fontFamily: 'Roboto'),textAlign: TextAlign.left,),
                              ),
                          Container(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.fromLTRB(0,0,20,0),
                                child: Icon(CupertinoIcons.chevron_forward, color: Color(0xFFFFFFFF),),
                              ),
                            ]),
                        ),),
                  GestureDetector(onTap:() => Navigator.pushReplacement (context,
                      CupertinoPageRoute(builder: (context) => generateImagePage())), child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 55,
                          margin: EdgeInsets.fromLTRB(20,5,20,5),
                          decoration: BoxDecoration(
                            color: Color(0xFFFE2C55),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(20,0,20,0),
                                alignment: Alignment.centerLeft,
                                child: Image.asset("images/tiktok.png",width: 24,height: 24,),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(60,0,20,0),
                                alignment: Alignment.centerLeft,
                                child: Text('Tik Tok', style: TextStyle(fontSize: 17.0, color: Color(0xFFFFFFFF), fontFamily: 'Roboto'),textAlign: TextAlign.left,),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.fromLTRB(0,0,20,0),
                                child: Icon(CupertinoIcons.chevron_forward, color: Color(0xFFFFFFFF),),
                              )
                            ],
                          ),
                        ),),
                  GestureDetector(onTap:() => Navigator.pushReplacement (context,
                      CupertinoPageRoute(builder: (context) => generateImagePage())), child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 55,
                          margin: EdgeInsets.fromLTRB(20,5,20,20),
                          decoration: BoxDecoration(
                            color: Color(0xFFFEC390),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                //margin: EdgeInsets.fromLTRB(64,0,20,0),
                                alignment: Alignment.center,
                                child: Text('Еще', style: TextStyle(fontSize: 18.0, color: Color(0xFFFFFFFF), fontFamily: 'Roboto'),textAlign: TextAlign.left,),
                              ),

                            ],
                          ),
                        ),)

                      ])
                  )),
              Positioned(bottom: 30, left: 30, right: 30,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(0,0,0,0),
                    child: TextButton(
                      onPressed:(){
                        Navigator.pushReplacement (context,
                            CupertinoPageRoute(builder: (context) => MyHomePage()));
                        randomFrase();
                        } ,
                      child: Text('Новое предсказание', style: TextStyle(fontSize: 15.0,fontFamily: 'AlS Hauss', color: Color(0xFFFEC390),),textAlign: TextAlign.center,),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFEC390).withOpacity(0.2),
                        minimumSize: Size(MediaQuery.of(context).size.width, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  )),

            ]),

      ),
    );
  }
}
