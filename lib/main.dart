import 'package:agricare/pages/home.dart';
import 'package:agricare/pages/onBoarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      title: "my App",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
