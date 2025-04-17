
import 'package:agricare/service/widget_support.dart';
import 'package:flutter/material.dart';
class onBoarding extends StatefulWidget {
  const onBoarding({super.key});

  @override
  State<onBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(children: [
          Image.asset("assets/images/logo.png"),
          SizedBox(height: 20,),
          
          Text('Innovating Agriculture for a Greener Future. ',style: AppWidget.HeadlineTextFieldStyle(),textAlign: TextAlign.center,),
          Text(" A digital platform to empower Indian farmers",style: AppWidget.SimpleTextFieldStyle(),textAlign: TextAlign.center,),
          SizedBox(height: 30,),
          Container(
            height: 60,


            width: MediaQuery.of(context).size.width/2,
            decoration: BoxDecoration(color:Colors.green,borderRadius: BorderRadius.circular(10)),
            child: Center(child: Text("Get Started",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
          )

        ],),
      ),
    );
  }
}
