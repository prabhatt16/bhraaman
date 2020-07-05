import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 20.0,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height-100,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('Sign Up',style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 35.0
                      ),),
                      SizedBox(height:10.0),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Column(
                      children: <Widget>[
                        makeInput(lable:"Email"),
                        makeInput(lable:"Password",obscureText: true),
                        makeInput(lable:"Conform Password",obscureText: true),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 10),
                    child:  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(58.0),
                          border: Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                          )
                      ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        color: Colors.yellow,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(58.0),
                        ),
                        onPressed: (){},
                        height: 45.0,
                        child: Text("Sign Up",style: TextStyle(
                          fontSize: 20.0,color: Colors.black,fontFamily: 'actor',
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/signup.png'),
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget makeInput({ lable ,obscureText=false }){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(height: 8.0,),
      Text(lable,style: TextStyle(
          fontSize: 16.0,color: Colors.black87
      ),),
      SizedBox(height: 8.0,),
      TextField(
        style: TextStyle(
          fontSize: 20.0
        ),
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 0.0),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black45),),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black45),
          ),
        ),
      ),
      SizedBox(height: 15.0,),
    ],
  );
}
