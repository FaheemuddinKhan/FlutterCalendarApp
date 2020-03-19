import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class FKMonthHeader extends StatelessWidget {
  DateTime date;

  FKMonthHeader({this.date});

  @override
  Widget build(BuildContext context) {
    
    initializeDateFormatting('en_GB', null);
    var dateFormat = new DateFormat.yMMM('en_GB');
    String month = dateFormat.format(date);
    

    return Container(
      height: 60,
      child: Row(
        children: <Widget>[
          Text("$month", style: TextStyle(fontSize: 21, color: Colors.white)),
        ],
      ),
    );
  }
}