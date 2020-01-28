import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget{
  bool isActive = false  ;
  SlideDots(this.isActive);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: isActive?12:8,
      width: isActive?12:8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12))  ,
        color: isActive?Theme.of(context).primaryColor : Colors.grey
      ),
    );
  }

}