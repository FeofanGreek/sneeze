import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:ui';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:intl/intl.dart';

import 'package:path_provider/path_provider.dart';

import 'main.dart';




class launchScreen extends StatefulWidget {

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}


class _LaunchScreenState extends State<launchScreen> {



  @override
  void initState() {
    super.initState();
    const twentyMillis2 = const Duration(seconds:2);
    new Timer(twentyMillis2, () => Navigator.pushReplacement (context,
        CupertinoPageRoute(builder: (context) => MyHomePage())));
  }//initState


  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return Scaffold(
      backgroundColor: Color(0xFFFEC390,),
      body:Container(
        height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0xFFFEC390,)),
          alignment: Alignment.center,
            child: Container(
              height: 200, width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/icon2.png"),
                    fit:BoxFit.fitWidth, alignment: Alignment(0.0, 0.0)
                ),
              ),),


      ),
    );
  }
}
