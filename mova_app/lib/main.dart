import 'package:flutter/material.dart';
import 'package:mova_ap/utis/radio.dart';
import 'package:mova_ap/utis/dropbox.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'MOVA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        fontFamily: 'Montserrat',
      ),

      home: Login(),
    );
  }
}