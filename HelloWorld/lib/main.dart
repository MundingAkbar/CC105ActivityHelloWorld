import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      debugShowCheckedModeBanner: false,
      title: "chat UI",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Chat'),
        centerTitle: true,
        elevation: 0.0,
        actions: [Icon(Icons.search)],
      ),
      body: Center(
        child: Image(image: AssetImage('assets/image/world.jpg')),
      ),
    );
  }
}
