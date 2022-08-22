import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '플러터 데모',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Container(
        color: Colors.white,
        child: Center(
            child: Text('안녕\n플러터',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 20),)),
      ),
    );
  }
}
