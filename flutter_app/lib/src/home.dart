import 'package:flutter/material.dart';
import 'package:flutterapp/src/signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterapp/src/loginPage.dart';
import 'Widget/bezierContainer.dart';
import 'package:flutterapp/src/readyPage.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Homepagestate createState() => _Homepagestate();
}

class _Homepagestate extends State<Homepage> {
  Widget _startButton() {
    return InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => readyPage()));
        },
        child: Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          padding: EdgeInsets.symmetric(vertical: 15),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.shade200,
                    offset: Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 2)
              ],
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xff00b8d4), Color(0xff004d40)])),
          child: Text(
            'Create Game',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        )
    );
  }

  Widget _instructionButton() {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xff00b8d4), Color(0xff004d40)])),
      child: Text(
        'Instructions',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }

  Widget _joingamebutton() {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xff00b8d4), Color(0xff004d40)])),
      child: Text(
        'Join Game',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Name ',
          style: GoogleFonts.portLligatSans(
            // ignore: deprecated_member_use
            textStyle: Theme
                .of(context)
                .textTheme
                .display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xff004d40),
          ),
          children: [
            TextSpan(
              text: 'Place ',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: 'Animal ',
              style: TextStyle(color: Color(0xff004d40), fontSize: 30),
            ),
            TextSpan(
              text: 'Thing',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
        body: Container(
          height: height,
          child: Stack(
            children: <Widget>[
              Positioned(
                  top: -height * .15,
                  right: -MediaQuery
                      .of(context)
                      .size
                      .width * .4,
                  child: BezierContainer()),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: height * .2),
                      _title(),
                      SizedBox(height: 50),
                      _startButton(),
                      SizedBox(height: 50),
                      _joingamebutton(),
                      SizedBox(height: 50),
                      _instructionButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

