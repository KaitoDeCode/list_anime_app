import 'package:flutter/material.dart';

var kategoriSection = Container(
  alignment: Alignment.center,
  margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [ 
      Text("Terbaru".toUpperCase(), style: kategoriItemStyle),
      Text("On Going".toUpperCase(),style: kategoriItemStyle)
    ],
  ),
);

var kategoriItemStyle = TextStyle(
  color: Colors.blue[100],
  fontWeight: FontWeight.bold
);

