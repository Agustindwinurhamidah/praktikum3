import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Input.dart';
import 'Result.dart';
import 'Convert.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  TextEditingController suhu = new TextEditingController();

  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;
  void _hitungSuhu() {
    setState(() {
      _inputUser = double.parse(suhu.text);
      _kelvin = _inputUser + 273;
      _reamur = (4 / 5) * _inputUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              Input(suhu: suhu),
              Result(kelvin: _kelvin, reamur: _reamur),
              Convert(konvertHandler: _hitungSuhu),
            ],
          ),
        ),
      ),
    );
  }
}