import 'package:flutter/material.dart';
import 'package:walkthrough/Screen/LoginScreen.dart';

import 'Screen/MainScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
 
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          hintColor: Color(0xff957FEF),
          primaryColor:Color(0xff7161EF),
          accentColor: Colors.yellow,
          canvasColor: Colors.transparent),
      home: MainScreen(),
      routes: {
        LoginScreen.routeName : (ctx)=> LoginScreen()  ,
      },
    );
  }

}