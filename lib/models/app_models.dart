import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

// class ColorCircle extends Sta {
//   ColorCircle(Color color, {Key key});
//
//   Color color;
//   Color selectedColor;
//
//   @override
//   _ColorCircleState createState() => _ColorCircleState();
// }
//
// class _ColorCircleState extends State<ColorCircle> {
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//           widget.selectedColor = widget.color;
//       },
//       child: ClipOval(
//         child: Container(
//           padding: const EdgeInsets.only(bottom: 16.0),
//           height: 36,
//           width: 36,
//           color: widget.color,
//         ),
//       ),
//     );
//   }
// }

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
