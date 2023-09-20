import 'package:flutter/material.dart';
import 'package:whatsapp/login.dart';



void main(){
  runApp(MaterialApp(home: login(),
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(color: Color(0xff075e55)
    )
  ),
  ));
}