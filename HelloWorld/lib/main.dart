import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Hello World App'),
        centerTitle: true,
      ),
      body: Center(
        child: Image(image: AssetImage('assets/image/world.jpg')),
      ),
    );
  }
}
