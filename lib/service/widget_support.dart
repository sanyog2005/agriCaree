

import 'package:flutter/material.dart';

class AppWidget{
  static TextStyle HeadlineTextFieldStyle(){
    return TextStyle(
      color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,
    );
  }
  static TextStyle SimpleTextFieldStyle(){
    return TextStyle(
      color: Colors.black,fontSize: 20,
    );
  }
  static TextStyle whiteTextFieldStyle() {
    return TextStyle(
      color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold

    );
  }
  static TextStyle boldTextFieldStyle(){
    return TextStyle(
      color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold
    );
  }
  static TextStyle priceTextFieldStyle(){
    return TextStyle(
        color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold
    );
  }
}