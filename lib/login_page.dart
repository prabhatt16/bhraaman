import 'package:bhraman_app/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text('Login',style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 35.0
                    ),),
                    SizedBox(height:10.0),
                    Text('Login to your account',style: TextStyle(
                       fontSize: 18.0,color: Colors.black45
                    ),),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Column(
                      children: <Widget>[
                        makeInput(lable:"Email"),
                        makeInput(lable:"Password"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text('forgot password?',style: TextStyle(fontSize: 15.0,color: Colors.blueAccent),),
                          ],
                        ),
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
                      height: 50.0,
                      child: Text("Login",style: TextStyle(
                        fontSize: 20.0,color: Colors.black,fontFamily: 'actor',
                      ),),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('If you are New ? ',style: TextStyle(fontSize: 15.0,color: Colors.black45),),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));
                      },
                        child: Text('Sign Up',style: TextStyle(fontSize: 15.0,color: Colors.blueAccent,),)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                   Image(
                     height: 45.0,
                     width: 45.0,
                     image: AssetImage('assets/images/google.png'),
                   ),
                    Image(
                      height: 45.0,
                      width: 45.0,
                      image: AssetImage('assets/images/facebook.png'),
                    ),
                    ],
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/login.png'),
                )
              ),
            ),
          ],
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
