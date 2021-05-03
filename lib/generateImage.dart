import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'data.dart';
import 'main.dart';

import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'prediction.dart';


class generateImagePage extends StatefulWidget {
  @override
  _predictionPageState createState() => _predictionPageState();
}

class _predictionPageState extends State<generateImagePage> {
  GlobalKey _globalKey = new GlobalKey();

  Future<Uint8List> _capturePng() async {
    try {
      //print('inside');
      RenderRepaintBoundary boundary =
      _globalKey.currentContext.findRenderObject();
      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      ByteData byteData =
      await image.toByteData(format: ui.ImageByteFormat.png);
      var pngBytes = byteData.buffer.asUint8List();
      var bs64 = base64Encode(pngBytes);
      _shareImages(byteData);
      //print(pngBytes);
      //print(bs64);
      setState(() {});
      return pngBytes;
    } catch (e) {
      print(e);
    }
  }


  Future<void> _shareImages(ByteData image) async {
    try {
      //final ByteData bytes1 = await rootBundle.load('assets/image1.png');


      await Share.files(
          '🤧 Мое предсказание из "Чихалки"',
          {
            'prediction.png': image.buffer.asUint8List(),

          },
          'image/png');
    } catch (e) {
      print('error: $e');
    }
  }

  generateImageAndSend(){
    const twentyMillis = const Duration(seconds:2);
    new Timer(twentyMillis, () => _capturePng());
    const twentyMillis2 = const Duration(seconds:5);
    new Timer(twentyMillis2, () => Navigator.pushReplacement (context,
        CupertinoPageRoute(builder: (context) => MyHomePage())));
  }

  @override
  void initState() {
    super.initState();
    generateImageAndSend();
  }


  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
        key: _globalKey,
        child: Scaffold(
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.center,
            color: Color(0xFF20242B),
            child:Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                              gradient: new LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  colorsL[random.nextInt(8)],
                                  colorsL[random.nextInt(8)]
                                ],
                              )
                          ),
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          margin: EdgeInsets.fromLTRB(30,100,30,100),
                          padding: EdgeInsets.fromLTRB(20,20,20,20),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(20,5,20,5),
                                alignment: Alignment.centerLeft,
                                child: Text('🔮', style:TextStyle(fontSize: 35.0,color: Color(0xFF20242B), ),textAlign: TextAlign.left,),),
                              SizedBox(height: 20,),
                              Container(
                                margin: EdgeInsets.fromLTRB(20,10,20,10),
                                alignment: Alignment.center,
                                child: Text(textPrediction, style:TextStyle(fontSize: 18.0,color: Color(0xFF20242B), ),textAlign: TextAlign.left,),),
                              SizedBox(height: 20,),
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.fromLTRB(20,5,20,5),
                                child: Text('🤧 Чихалка', style:TextStyle(fontSize: 18.0,color: Color(0xFFFFFFFF), ),textAlign: TextAlign.center,),),

                            ],)
                      ),
          ),
        )
    );
  }
}
