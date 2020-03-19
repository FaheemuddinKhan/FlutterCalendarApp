import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:your_gibrid_project_name/weekheader.dart';

import 'calendarcell.dart';
import 'monthheader.dart';

class FKMonth extends StatelessWidget {
  var fkManager;
  var monthsArray = new List();
  var year;
  var month;
  FKMonth({this.fkManager, this.year, this.month});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    monthArray(DateTime(this.year,this.month,1));
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[
              FKMonthHeader(date: DateTime(this.year,this.month,1)),
              FKWeekHeader(),
              SizedBox(height: 10),
              Divider(color: Colors.grey, height: 1),
              SizedBox(height: 10),
              for(int row=0;row<monthsArray.length;row++)
              Container(
                height: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      for(int column=0;column<7;column++)
                      Column(children: <Widget>[
                        FKCell(date: (monthsArray[row][column]), fkManager: fkManager,),
                        
                      ],
                      )
                    ],
                    ),
                    Divider(color:Colors.grey, height: 1,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }

  monthArray(DateTime date){
    var maxRows = (((date.weekday == 7 && daysIn(month: date.month, forYear: date.year)>28)|| (date.month==2 && daysIn(month: date.month, forYear: date.year)==28 && date.weekday>1)) ? (daysIn(month: date.month, forYear: date.year)/7) + 1 : daysIn(month: date.month, forYear: date.year)/7);
    if(daysIn(month: date.month, forYear: date.year)==31 && date.weekday>5){
      maxRows = 6;
    }

    for (int row=0; row<maxRows; row++){
      var columnArray = [];
      for (int column=0; column<7; column++){
        var dateAt = getDateAtIndex(date, index : ((row*7)+column));
        columnArray.add(dateAt);
      }
      monthsArray.add(columnArray);
    }
  }

  DateTime getDateAtIndex(DateTime date, {index: 0}){
    var thisMonth = date.month;
    var thisYear = date.year;
    var firstDayOfMonth = date.weekday;
    // print("First day of month $thisMonth $thisYear is $firstDayOfMonth");
    if(index+1>=firstDayOfMonth && index+1 < daysIn(month: date.month, forYear: date.year)+firstDayOfMonth){
      return new DateTime(date.year, date.month, date.day+index+1-firstDayOfMonth);
    }
    else{
      return new DateTime(0001, 01,01);
    }
  }

  int daysIn({int month, int forYear}){
    DateTime firstOfNextMonth;
    if(month == 12) {
      firstOfNextMonth = DateTime(forYear+1, 1, 1, 12);//year, month, day, hour
    }
    else {
      firstOfNextMonth = DateTime(forYear, month+1, 1, 12);
    }
    int numberOfDaysInMonth = firstOfNextMonth.subtract(Duration(days: 1)).day;
    //.subtract(Duration) returns a DateTime, .day gets the integer for the day of that DateTime
    // print("Number of days in $month $forYear are $numberOfDaysInMonth");
    return numberOfDaysInMonth;
  }
}