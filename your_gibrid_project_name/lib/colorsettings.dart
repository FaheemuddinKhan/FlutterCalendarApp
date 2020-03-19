import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FKColorSettings{
    Color textColor;
    Color selectedTextColor;
    Color weekdayHeaderTextColor;
    Color monthTextColor;
    Color holidayPendingTextColor;
    Color holidayApprovedTextColor;
    Color holidayRejectedTextColor;
    Color sickdayTextColor;
    Color selectedBackColor;
    // headers background colors
    Color holidayPendingBackColor;
    Color holidayApprovedBackColor;
    Color holidayRejectedBackColor;
    Color sickdayBackColor;

    FKColorSettings({this.textColor, this.selectedTextColor, this.weekdayHeaderTextColor, this.monthTextColor, this.holidayPendingTextColor, this.holidayApprovedTextColor, this.holidayRejectedTextColor,
    this.selectedBackColor, this.holidayPendingBackColor, this.holidayApprovedBackColor, this.holidayRejectedBackColor,
    });
}