import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget{
  const Input({
    Key key,
    @required this.suhu,
  }) : super(key: key);
  
  final TextEditingController suhu;
  @override
Widget build(BuildContext context){
  return TextFormField(
    decoration:InputDecoration(hintText: "Masukkan Suhu Dalam Celcius"),
    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    controller: suhu,
    keyboardType: TextInputType.number,
  );
}
}