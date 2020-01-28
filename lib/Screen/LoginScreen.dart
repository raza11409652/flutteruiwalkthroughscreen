import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
   static const routeName = '/login';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(
      // title: Text("Login "),
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
    
    ) ,
    body: Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.all(15),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(

                      width: 100 ,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle , 
                        borderRadius: BorderRadius.circular(2),
                        image: DecorationImage(image: AssetImage("assets/send.png") , 
                        fit: BoxFit.contain ,
                        
                        )
                         
                      ),
                    ),
                    SizedBox(height: 20,),
          TextField(
                keyboardType:TextInputType.emailAddress,
                decoration: InputDecoration(

                          border: OutlineInputBorder(
                          ),
                          focusColor: Colors.white,
                          hintText: "Enter your email",
                          labelText: "Email",
                          errorText: ""),
          ),
           TextField(

                        obscureText: false,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                            hintStyle: TextStyle(fontWeight: FontWeight.normal),
                            hintText: "Enter Email",
                            labelText: "Email",
                            errorText: "",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4.0),
                              borderSide: BorderSide(
                                color: Theme.of(context).accentColor , 
                                width: 1,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4.0),
                              borderSide: BorderSide(
                                color: Theme.of(context).accentColor,
                                width: 1,
                              ),
                            ),
                            prefixIcon: Padding(
                              child: IconTheme(
                                data: IconThemeData(
                                    color: Colors.white),
                                child: new Icon(Icons.email),
                              ),
                              padding: EdgeInsets.only(left: 14, right: 10),
                            )),
                        keyboardType: TextInputType.emailAddress,
                      ),


                      RaisedButton(
                        padding: EdgeInsets.all(12),
                        onPressed: (){},
                        child: Text(
                          "Login"
                        ),
                      )
        ],
      ),
    ) 
    
    ,);
  }

}