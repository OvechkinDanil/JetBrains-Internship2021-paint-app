import 'package:flutter/material.dart';
import 'package:graphics_editor/screens/home_screen.dart';

import 'components/painter.dart';

class GraphicsEditorApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Graphics Editor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Draw(),
    );
  }
}
