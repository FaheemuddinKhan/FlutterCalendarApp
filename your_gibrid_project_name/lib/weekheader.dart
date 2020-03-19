import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FKWeekHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 30,
            alignment: Alignment.center,
            child: Text("M", style : TextStyle(color: Colors.white, fontSize: 11))),
          Container(
            width: 30,
            alignment: Alignment.center,
            child: Text("T", style : TextStyle(color: Colors.white, fontSize: 11))),
          Container(
            width: 30,
            alignment: Alignment.center,
            child: Text("W", style : TextStyle(color: Colors.white, fontSize: 11))),
          Container(
            width: 30,
            alignment: Alignment.center,
            child: Text("T", style : TextStyle(color: Colors.white, fontSize: 11))),
          Container(
            width: 30,
            alignment: Alignment.center,
            child: Text("F", style : TextStyle(color: Colors.white, fontSize: 11))),  
          Container(
            width: 30,
            alignment: Alignment.center,
            child: Text("S", style : TextStyle(color: Colors.white, fontSize: 11))),
          Container(
            width: 30,
            alignment: Alignment.center,
            child: Text("S", style : TextStyle(color: Colors.white, fontSize: 11))),        
          ],
      ),
    );
  }
}
