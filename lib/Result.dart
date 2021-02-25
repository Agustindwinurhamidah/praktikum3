import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Result extends StatelessWidget {
  const Result({
    Key key,
    @required double kelvin,
    @required double reamur,
  })  : _kelvin = kelvin,
        _reamur = reamur,
        super(key: key);

  final double _kelvin;
  final double _reamur;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Suhu dalam Kelvin",
                  style: TextStyle(height: 1.5, fontSize: 15)),
              Text("$_kelvin", style: TextStyle(height: 2, fontSize: 25)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Suhu dalam Reamur",
                  style: TextStyle(height: 1.5, fontSize: 15)),
              Text("$_reamur", style: TextStyle(height: 2, fontSize: 25)),
            ],
          )
        ],
      ),
    );
  }
}

