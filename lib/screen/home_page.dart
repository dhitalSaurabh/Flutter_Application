import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tiktok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var Width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          toolbarHeight: 32,
          title: Text("Hello App"),
        ),
        body: Container(
          child: Text("This is new container."),
          height: 400,
          width: Width,
          alignment: Alignment.center,
      margin: EdgeInsets.all(4),
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.green,
          ),
          transform: Matrix4.rotationZ(0.3),
        ));
  }
}
