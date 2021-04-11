import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawingPoints {
  Paint paint;
  Offset points;

  DrawingPoints({this.points, this.paint});
}

enum SelectedMode { StrokeWidth, Opacity, Color }

List<Color> colors = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.amber,
  Colors.black
];

class ColorList
{
  static Color _currentCollor = Colors.black;

  static Color getCurrentColor()
  {
    return _currentCollor;
  }

  static getColorList() {
    return <Widget>[for (Color color in colors)
      GestureDetector(
        onTap: () {
          _currentCollor = color;
          // selectedColor = color;
        },
        child: ClipOval(
          child: Container(
            padding: const EdgeInsets.only(bottom: 16.0),
            height: 36,
            width: 36,
            color: color,
          ),
        ),
      )
    ];
  }
}
