import 'package:flutter/material.dart';
import 'package:flutter_apicalling/SignupScreen.dart';

void main() => runApp(Loginscreen());

class Loginscreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body:Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xff2193b0),
                          Color(0xff6dd5ed)
                        ]
                    )
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/social1.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15.0,bottom: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'E-mail'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15.0,bottom: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: MaterialButton(
                          onPressed: (){print("Hello");},
                          elevation: 10.0,
                          color: Color(0xff6A89CC),
                          textColor: Colors.white,
                          child: Text("Login"),
                        ),
                      ),
                      SizedBox(
                        width: 80.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: (){print("Forgot Password!");},
                          child: Container(
                            child: Text("Forgot Password ?"),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: MaterialButton(
                      elevation: 10.0,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                      },
                      color: Color(0xff6A89CC),
                      textColor: Colors.white,
                      child: Text("Click here to Sign Up"),
                    ),
                  )
                ],
              )
            ],
          )
      ),
    );
  }
}

