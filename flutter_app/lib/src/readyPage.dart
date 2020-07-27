import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class readyPage extends StatefulWidget {
  readyPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Readypagestate createState() => _Readypagestate();
}

List<String> names = <String>['A', 'B', 'C'];
List<String> scores = <String>["200","300","400"];

class _Readypagestate extends State<readyPage> {
  bool _active = false;

  String get userAvatarUrl => null;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }
  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Name ',
          style: GoogleFonts.portLligatSans(
            // ignore: deprecated_member_use
            textStyle: Theme.of(context).textTheme.display1,
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

  Widget _readyBox() {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            _active ? 'Ready' : 'Not Ready',
            style: TextStyle(fontSize: 17.0, color: Colors.white),
          ),
        ),
        width: 100.0,
        height: 45.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          color: _active ? Colors.grey[600]: Colors.lightGreen[700],
        ),
      ),
    );
  }

  Widget _membersListView() {
    return ListView.builder(itemCount: names.length,
      itemBuilder: (BuildContext context, i) {
        return ListTile(
          leading : CircleAvatar(
            backgroundColor: Colors.black,
            radius: 38.0,
            child: Image.asset('assets/flutter-icon.png'),),
          title : Text(names[i]),
          subtitle : Text(scores[i]),
          trailing: _readyBox(),
        );
      },
    );
  }

Widget build(BuildContext context) {
    return Scaffold(
       body: StreamBuilder(
           builder: (context, entries) {
           return names.length > 0
              ? Column(
            children: <Widget>[

              
              SizedBox(height: 30),
              _title(),
              Expanded(child: _membersListView()),
            ],
          )
              : Center(child: Text("No one is in the room"));
        },

      ),
    );
  }
}