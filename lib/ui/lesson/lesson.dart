import 'package:flutter/material.dart';

class Lesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Lesson',
            style: TextStyle(color: Colors.white, fontSize: 30.0)),
      ),
      backgroundColor: Color.fromRGBO(200, 200, 200, 0.2),
    );
  }
}