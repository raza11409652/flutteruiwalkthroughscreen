import 'package:flutter/material.dart';
import 'package:walkthrough/Model/Slider.dart';
import 'package:walkthrough/Widget/SlideDots.dart';
import 'package:walkthrough/Widget/SlideItem.dart';
import 'dart:async';

import 'LoginScreen.dart';

class MainScreen extends StatefulWidget{
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currenrPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds:5), (Timer timer){
      if(_currenrPage<2){
        _currenrPage++;
      }else{
        _currenrPage = 0;
      }
      _pageController.animateToPage(_currenrPage ,
      duration: Duration(milliseconds: 300) , 
      curve: Curves.easeIn );
    }) ; 

  }
  _onpageChanged(int index){
    setState(() {
      _currenrPage = index;
    });
  }
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                itemCount: slideList.length,
                onPageChanged: _onpageChanged,
                itemBuilder: (context , i)=>SlideItem(i),
              ),
              Stack(alignment: AlignmentDirectional.topStart,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom:35),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    for(int i =0; i<slideList.length ; i++)
                      if(i == _currenrPage)
                        SlideDots(true)
                      else
                        SlideDots(false)                        
                    

                  ],),
                )
              ],
              )
              ],
                    
            )
          ),
          SizedBox(height: 20,),
          FlatButton(
            child: Text('Getting Started' , style: TextStyle(fontSize: 18), ), 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4)
            ),
            padding: const EdgeInsets.all(15),
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
          onPressed: () {
            print("Flat button Get started click");
          },
          ),
          Row( mainAxisAlignment: MainAxisAlignment.center, 
            children: <Widget>[
            Text('Have an account ?') , 
            FlatButton(child: Text('Login'), onPressed: () {
              print('Login button clicked');
              Navigator.of(context).pushNamed(LoginScreen.routeName);
            },)
          ],)
      ],),
    ),
    );
  }
}