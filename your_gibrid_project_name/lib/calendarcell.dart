import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fkmanager.dart';

class FKCell extends StatelessWidget {
  FKManager fkManager;
  DateTime date;
  FKCell({this.date, this.fkManager});

  @override
  Widget build(BuildContext context) {
    var day = date.day;
    Color bgColor = Colors.transparent;
    if(fkManager.approvedHolidayDates.contains(date) == true){
      bgColor = fkManager.color.holidayApprovedBackColor;
    }
    else if(fkManager.pendingHolidayDates.contains(date) == true){
      bgColor = fkManager.color.holidayPendingBackColor;
    }
    else if(fkManager.rejectedHolidayDates.contains(date) == true){
      bgColor = fkManager.color.holidayRejectedBackColor;
    }
    else if(fkManager.sickdayDates.contains(date) == true){
      bgColor = fkManager.color.sickdayBackColor;
    }  
    return Container(
      child: CircleAvatar(
        radius: 15,
        backgroundColor: bgColor, 
        child: Text(date.year == 0001 ? "" : "$day", style : TextStyle(color: (date.weekday == 6 || date.weekday == 7) ? Colors.grey : Colors.white, fontSize: 15))
      )
    );
  }
}