import 'dart:async';
import 'package:flutter/material.dart';
import './listscreen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => ListScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // width: MediaQuery.of(context).size.width,
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/fujifilm.png',
                width: 250,
                height: 600,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text('Made with ❤ | © 2021'),
              )
            ]),
      ),
    );
  }
}
