import 'package:flutter/material.dart';

class Slider{
 final String image , title , desc ;
 Slider({
  @required this.image , 
  @required this.title , 
  @required this.desc
 });

}
final slideList=[
  Slider(
    image:'assets/send.png' , 
    title: "Hassle-Free Operations" , 
    desc: "Who runs the space? You decide. To save you hassle and time, we too can run the space for you.Which means, staff members that are unobtrusive and efficient, leaving you very little to worry about. If anything at all."
  )  , 
   Slider(
    image:'assets/document.png' , 
    title: "Hassle-Free Operations" , 
    desc: "Who runs the space? You decide. To save you hassle and time, we too can run the space for you.Which means, staff members that are unobtrusive and efficient, leaving you very little to worry about. If anything at all."
  ) ,
   Slider(
    image:'assets/wallet.png' , 
    title: "Hassle-Free Operations" , 
    desc: "Who runs the space? You decide. To save you hassle and time, we too can run the space for you.Which means, staff members that are unobtrusive and efficient, leaving you very little to worry about. If anything at all."
  ) 
] ; 