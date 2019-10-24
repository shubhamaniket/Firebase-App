import 'package:flutter/material.dart';
import 'package:flutter_apicalling/LoginScreen.dart';
import 'dart:async';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
  );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(
      seconds: 5
    ),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    color: Colors.blueAccent
                ),
                child:Text("Hello")
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 100.0,
                  backgroundColor: Colors.blueAccent,
                  backgroundImage: AssetImage('assets/firebase1.png'),
                ),
                CircularProgressIndicator(
                  backgroundColor: Colors.yellowAccent,
                ),

              ],
            )
          ],
        )
    );

  }
}




