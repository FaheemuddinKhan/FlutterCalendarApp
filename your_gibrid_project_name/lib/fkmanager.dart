import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colorsettings.dart';

class FKManager{
  var selectedDates;
  var mode;

  var approvedHolidayDates = [];
  var rejectedHolidayDates = [];
  var pendingHolidayDates = [];
  var sickdayDates = [];
  var disabledDates = [];
  var color = FKColorSettings(textColor: Colors.white, selectedTextColor: Colors.white, weekdayHeaderTextColor: Colors.white,
      monthTextColor: Colors.white, holidayPendingTextColor: Colors.white, holidayApprovedTextColor: Colors.white, holidayRejectedTextColor: Colors.white,
      selectedBackColor: Colors.transparent, holidayApprovedBackColor: Colors.yellow, holidayPendingBackColor: Colors.orange, holidayRejectedBackColor: Colors.red);

  FKManager(int mode){
    if(mode==0){
      this.color = FKColorSettings(textColor: Colors.white, selectedTextColor: Colors.white, weekdayHeaderTextColor: Colors.white,
      monthTextColor: Colors.white, holidayPendingTextColor: Colors.white, holidayApprovedTextColor: Colors.white, holidayRejectedTextColor: Colors.white,
      selectedBackColor: Colors.transparent, holidayApprovedBackColor: Colors.yellow, holidayPendingBackColor: Colors.orange, holidayRejectedBackColor: Colors.red);
    }
  }
}