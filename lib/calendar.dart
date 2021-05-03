import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'data.dart';
import 'datePicker/datepicker_controller.dart';
import 'datePicker/flutter_time_picker_spinner.dart';
import 'datePicker/horizontal_date_picker.dart';
import 'main.dart';



var now2 = DateTime.now();
DateTime startDate = now2.subtract(Duration(days: 30));
DateTime endDate = now2.add(Duration(days: 365));


class calendarPage extends StatefulWidget {
  @override
  _predictionPageState createState() => _predictionPageState();
}

class _predictionPageState extends State<calendarPage> {


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
        Positioned(left: 10, top: 20, child: GestureDetector(onTap: (){Navigator.pushReplacement (context,
            CupertinoPageRoute(builder: (context) => MyApp()));}, child: Icon(CupertinoIcons.chevron_back, size: 25, color: Colors.white,)),),
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
      Positioned(top: 50, left: 30, right: 30,
          child: Container(
                alignment: Alignment.center,
                //padding: EdgeInsets.fromLTRB(0,0,0,290),
                child:Text('Изменить время предсказания', style:TextStyle(fontSize: 20.0,color: Colors.white, ),textAlign: TextAlign.center,),)),

              Positioned(bottom: 100,
          child: Container(
                color: Colors.transparent,
                alignment: Alignment.center,
                child: HorizontalDatePickerWidget(
                  height: 57,
                  width: 49,
                  normalColor: Color(0xFF2C2C2E),
                  normalTextColor: Color(0xFFFBC490),
                  selectedColor: Colors.white,
                  selectedTextColor: Color(0xFF20242B),
                  weekDayFontSize: 15,
                  dayFontSize: 18,
                  startDate: startDate,
                  endDate: endDate,
                  selectedDate: now2,
                  widgetWidth: MediaQuery.of(context).size.width,
                  datePickerController: DatePickerController(),
                  onValueSelected: (date) {
                    //setState(() {
                      weekDayAbb = '${DateFormat.E('ru').format(date)}';
                    //});

                    print('selected = ${date.toIso8601String()}');
                  },
                ),
              ),),
              Positioned(top: 120, left: 30, right: 30, bottom: 200,
                  child: Container(
                      alignment: Alignment.center,
                      width:250,
                      height: 250,
                      //padding: EdgeInsets.fromLTRB(30,0,30,0),
                      child: TimePickerSpinner(
                        time: now2,
                        alignment: Alignment.center,
                        isForce2Digits: true,
                        spacing: 20,
                        minutesInterval: 1,
                        normalTextStyle: TextStyle(fontSize: 42.0,color: Colors.white.withOpacity(0.5), ),
                        subnormalTextStyle: TextStyle(fontSize: 36.0,color: Colors.white.withOpacity(0.3), ),
                        highlightedTextStyle: TextStyle(fontSize: 48.0,color: Colors.white, ),
                        itemHeight: 50,
                        itemWidth: 70,
                        onTimeChange: (time) {
                          setState(() {
                            //_dateTime = time;
                          });
                        },
                      ))),
              Positioned(bottom: 30, left: 30, right: 30,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(0,0,0,0),
                    child: TextButton(
                      onPressed:(){Navigator.pushReplacement (context,
                          CupertinoPageRoute(builder: (context) => MyHomePage()));} ,
                      child: Text('Cохранить изменения', style: TextStyle(fontSize: 15.0,fontFamily: 'AlS Hauss', color: Color(0xFF20242B),),textAlign: TextAlign.center,),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFEC390),
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
