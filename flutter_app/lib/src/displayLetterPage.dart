import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'inputPage.dart';
import 'dart:async';

// ignore: camel_case_types
class displayletterPage extends StatefulWidget {
  displayletterPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _displayLetterPageState createState() => _displayLetterPageState();
}

// ignore: camel_case_types
class _displayLetterPageState extends State<displayletterPage> {
    Widget _letter() {
    return Align(
      alignment: Alignment.center,
      child: Text(
          "A",
      style: TextStyle(fontSize: 100),),

    );
  }


  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {

      Navigator.push(context, MaterialPageRoute(builder: (context) => inputPage()));
    });
    return Scaffold(
      body: _letter(
   ),
    );
  }
}