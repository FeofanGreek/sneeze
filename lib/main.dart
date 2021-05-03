import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sneeze/prediction.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'LaunchScreen.dart';
import 'calendar.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:shared_preferences/shared_preferences.dart';

String weekDayAbb = '${DateFormat.E('ru').format(DateTime.now())}', timeAbb = '${DateFormat.Hm('ru').format(DateTime.now())}';
Future<SharedPreferences> prefs1 = SharedPreferences.getInstance();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ru', ''),

      ],
      debugShowCheckedModeBanner: false,
      color: Color(0xFFFEC390,),
      //home: MyHomePage(),
      home:launchScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
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
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(0,0,0,350),
                        child:Text('🤧', style:TextStyle(fontSize: 60.0, )),),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.fromLTRB(0,0,0,190),
                        child:Text('Привет, будьте здоровы!', style:TextStyle(fontSize: 25.0,color: Colors.white, ),textAlign: TextAlign.center,),),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.fromLTRB(0,0,0,110),
                        child:Text('Смотри, что тебя ждёт. Чихалка по времени и дням недели.', style:TextStyle(fontSize: 15.0,color: Colors.white, ),textAlign: TextAlign.center,),),
                    Positioned(
                      top: MediaQuery.of(context).size.height - MediaQuery.of(context).size.height / 2.3,
                      left: -50,
                      child: Container(
                        width: MediaQuery.of(context).size.width + 100,
                        height: MediaQuery.of(context).size.width + 100,
                        decoration: BoxDecoration(
                          //border: Border.all(width: 0.5, color: kWhite2),
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
                          //color: Color(0xFF373B41),
                        ),
                      ),
                    ),
                    Positioned(bottom: 40, left: 30, right: 30,
                        child: Container(
                          decoration: BoxDecoration(
                            //border: Border.all(width: 0.5, color: kWhite2),
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFFEC390),
                          ),
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(30,30,30,30),
                            child: Column(
                              children: [
                                Text('Предсказание на', style:TextStyle(fontSize: 17.0,color: Color(0xFF20242B), ),textAlign: TextAlign.center,),
                                Container(
                                  //height: 55,
                                  //width: MediaQuery.of(context).size.width,
                                  alignment: Alignment.center,
                                  padding:EdgeInsets.fromLTRB(10,10,10,10 ),
                                  margin: EdgeInsets.fromLTRB(20,5,20,0),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFD5B1),
                                    borderRadius: BorderRadius.circular(12.0),

                                  ),
                                  child:Column(
                                    children:[
                                      GestureDetector(onTap:() => Navigator.pushReplacement (context,
                                    CupertinoPageRoute(builder: (context) => calendarPage())), child: Text('${weekDayAbb.capitalize()}, $timeAbb', style:TextStyle(fontSize: 26.0,color: Color(0xFF20242B),fontWeight: FontWeight.bold ),textAlign: TextAlign.center,)),
                                  GestureDetector(onTap:() => Navigator.pushReplacement (context,
                                      CupertinoPageRoute(builder: (context) => calendarPage())), child: Text('Нажмите сюда, чтобы изменить время', style:TextStyle(fontSize: 10.0,color: Color(0xFF20242B), ),textAlign: TextAlign.center,)),
                                    ]
                                  ),
                                ),
                                Container(
                                  height: 55,
                                  width: MediaQuery.of(context).size.width,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.fromLTRB(0,15,0,0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 7,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: TextButton(
                                    onPressed:(){
                                      Navigator.pushReplacement(context,
                                          CupertinoPageRoute(builder: (context) => predictionPage()));
                                    } ,
                                    child: Text('Получить предсказание', style: TextStyle(fontSize: 15.0,fontFamily: 'AlS Hauss', color: Color(0xFF20242B),),textAlign: TextAlign.center,),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFFFFFFFF),
                                      minimumSize: Size(MediaQuery.of(context).size.width, 50),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                ),



                      ]),
                    )),

                  ]),

      ),
    );
  }
}
