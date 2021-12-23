import 'package:flutter/material.dart';
import 'dart:async';
import 'actualité/fil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: const SplashScreen());
  }
}

//My splash screen class
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StateScreen();
  }
}

//Managing the states with a new class: StateScreen
class StateScreen extends State<SplashScreen> {
  //Definition of the content of the splash screen
  Widget mySplash =
      Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
    Image.asset('assets/images/logo.png', width: 250, height: 250),
    const Padding(
      padding: EdgeInsets.only(top: 40),
    ),
  ]);

  //Overriding the constructor
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(
        seconds: 3); //We set the duration of the splash screen at 5 seconds
    return Timer(duration, route);
  }

  //Method allowing us to access the afterSplash page
  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Fil()));
  }

  //Overriding the build function of StateScreen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(21, 106, 155, 1),
        body: Center(child: mySplash) //SplashScreen()
        );
  }
}