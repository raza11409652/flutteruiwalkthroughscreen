import 'package:flutter/material.dart';
import 'package:walkthrough/Model/Slider.dart';

class SlideItem extends StatelessWidget{
  final int index ;

  const SlideItem(this.index) ;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
             
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 200 ,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle , 
                        borderRadius: BorderRadius.circular(2),
                        image: DecorationImage(image: AssetImage(slideList[index].image) , 
                        fit: BoxFit.contain ,
                        
                        )
                         
                      ),
                    ),
                    SizedBox(height: 40,),
                    Text(slideList[index].title, style :TextStyle(fontSize: 24 , 
                    color:Theme.of(context).primaryColor)
                    )  , 
                    SizedBox(height: 10,),
                    Text(slideList[index].desc ,
                    textAlign: TextAlign.center,
                     style :TextStyle( 
                    color:Colors.black87 , 
                    
                  )
                    )  , 
                 
              ],
            );
  }

}