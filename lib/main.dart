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
    String test = '안녕'; // 버튼에 들어갈 텍스트 입력
    Color _color = Colors.orange;

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
            child: ElevatedButton(
                child: Text('$test'),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(_color)),
                onPressed: (){
                  if(_color == Colors.orange){
                    setState((){
                      test = '플러터';
                      _color = Colors.pink;
                    });
                  } else{
                    setState((){
                      test = '플러터';
                      _color = Colors.orange;
                    });
      }
                }),
       ),
      ));
  }
}
