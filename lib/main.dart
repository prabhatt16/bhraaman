import 'package:bhraman_app/login_page.dart';
import 'package:bhraman_app/signup_page.dart';
import 'package:flutter/material.dart';
import 'signup_page.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 18.0,top: 15.0,right: 18.0),
            width: double.infinity,
              height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("Welcome",style: TextStyle(fontFamily: 'actor',fontSize: 40.0,
                        fontWeight: FontWeight.bold),),
                    SizedBox(height: 20.0,),
                    Text("Let's Bhraman INDIA",style: TextStyle(
                      fontSize: 28.0,color: Colors.black45,fontWeight: FontWeight.bold),),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,

                  decoration: BoxDecoration(
                    image:DecorationImage(
                      image:AssetImage('assets/images/main.png',),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    MaterialButton(
                      color: Colors.yellow,
                      minWidth: double.infinity,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(58.0),
                      ),
                      onPressed: (){
                      },
                      height: 50.0,
                      child: Text("Guest",style: TextStyle(
                        fontSize: 20.0,color: Colors.black,fontFamily: 'actor',
                      ),),
                    ),
                    SizedBox(height: 10.0,),
                    Container(
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
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                        },
                        height: 50.0,
                        child: Text("Login",style: TextStyle(
                          fontSize: 20.0,color: Colors.black,fontFamily: 'actor',
                        ),),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Container(
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
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));
                        },
                        height: 50.0,
                        child: Text("Sign Up",style: TextStyle(
                          fontSize: 20.0,color: Colors.black,fontFamily: 'actor',
                        ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                  ],
                ),

              ],
            ),
          ),
      ),
    );
  }
}

