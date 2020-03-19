import 'package:flutter/material.dart';
import 'package:date_utils/date_utils.dart';
import 'package:tuple/tuple.dart';

import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'fkmanager.dart';
import 'month.dart';

void main(){ 

  temp_func();
  runApp(MyApp());


}

temp_func(){
  DateTime now = new DateTime.now();
  DateTime date = new DateTime(now.year, now.month-1, now.day-16, now.weekday);
  print("month");
  print(date.month);
  print("year");
  print(date.year);
  print("day");
  print(date.day);
  print("weekday");
  print(date.weekday);
  print(date);
  DateTime newDate = new DateTime(date.year, date.month, date.day, date.weekday+10);
  print(newDate);

}

class MyApp extends StatelessWidget {
  var fkManager = FKManager(0);
  bool calendarCompleted = false;
  var yearFrom = 2019;
  var monthFrom = 6;
  var yearUpto = 2020;
  var monthUpto = 12;
  List<Tuple2<int, int>> listOfMonths = List<Tuple2<int, int>>();

  makeMonths(){
    var currYear = yearFrom;
    var currMonth = monthFrom;

    while(currMonth<=12){
      var t = Tuple2(currMonth, currYear);
      listOfMonths.add(t);
      currMonth += 1;
      if(currMonth>12 && currYear<yearUpto){
        currYear += 1;
        currMonth = 1;
      }
    }
    print(listOfMonths);
  }

  @override
  Widget build(BuildContext context) {
    makeMonths();
    return Column(
      children: <Widget>[
        Container(
          height: 200,
          color: Colors.white,
        ),
        Container(
          height: 450,
          color: Colors.lightGreenAccent,
          child: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                for(var year_month in listOfMonths)
                  Container(
                    width: 375,
                    height: 450,
                    alignment: Alignment.center,
                    child: FKMonth(fkManager: fkManager, month: year_month.item1, year: year_month.item2)
                  )
              ],
            )
          ),
        ),
        Container(
          height: 97,
          color: Colors.black,
        ),
      ],
    );
  }
}


