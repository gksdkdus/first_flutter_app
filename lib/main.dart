import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

  class _MyApp extends State<MyApp> {
    var switchValue = false;
    String test = '안녕';
    @override
    Widget build(BuildContext context){
    return MaterialApp(
      title: '플러터 데모',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.light(),
      home: Scaffold(
        body: Center(
            child: Switch(
              value: switchValue, // 변수 값
              onChanged: (value) {
                setState(() {
                  print(value);
                  switchValue = value;
                 });
              }),
         ),
       )
    );
  }
}
