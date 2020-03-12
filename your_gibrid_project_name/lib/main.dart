import 'package:flutter/material.dart';
import 'package:date_utils/date_utils.dart';
void main(){ 

  temp_func();
  runApp(MyApp());


}

temp_func(){
  DateTime now = new DateTime.now();
  DateTime date = new DateTime(now.year, now.month, now.day);
  print(date.month);

  var newDate = new DateTime(date.year, date.month - 1, date.day);
  print(newDate.month);

  final DateTime lastDay = Utils.lastDayOfMonth(date);
}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Container(
          margin: EdgeInsets.only(top: 100),
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[
              FKMonthHeader(),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FKCell(monthDay: "1"),
                  FKCell(monthDay: "2"),
                  FKCell(monthDay: "3"),
                  FKCell(monthDay: "4"),
                  FKCell(monthDay: "5"),
                  FKCell(monthDay: "6"),
                  FKCell(monthDay: "7")
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}


class FKMonthHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 30,
            alignment: Alignment.center,
            child: Text("M", style : TextStyle(color: Colors.white))),
          Container(
            width: 30,
            alignment: Alignment.center,
            child: Text("M", style : TextStyle(color: Colors.white))),
          Container(
            width: 30,
            alignment: Alignment.center,
            child: Text("M", style : TextStyle(color: Colors.white))),
          Container(
            width: 30,
            alignment: Alignment.center,
            child: Text("M", style : TextStyle(color: Colors.white))),
          Container(
            width: 30,
            alignment: Alignment.center,
            child: Text("M", style : TextStyle(color: Colors.white))),  
          Container(
            width: 30,
            alignment: Alignment.center,
            child: Text("M", style : TextStyle(color: Colors.white))),
          Container(
            width: 30,
            alignment: Alignment.center,
            child: Text("M", style : TextStyle(color: Colors.white))),        ],
      ),
    );
  }
}

class FKCell extends StatelessWidget {
  var monthDay = "";
  FKCell({this.monthDay});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 15,
        backgroundColor: Colors.green,
        child: Text("$monthDay", style : TextStyle(color: Colors.white))
      )
    );
  }
}



monthsArray(){
  DateTime now = new DateTime.now();
  DateTime date = new DateTime(now.year, now.month, now.day);
}