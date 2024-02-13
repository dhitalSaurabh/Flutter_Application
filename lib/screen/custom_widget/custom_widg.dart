import 'package:flutter/material.dart';


class Custom_Widget extends StatefulWidget {
  const Custom_Widget({super.key});

  @override
  State<Custom_Widget> createState() => _Custom_WidgetState();
}
class _Custom_WidgetState extends State<Custom_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Container(
          color: Colors.white,
          margin: EdgeInsets.all(20),
          child: Container(
          color: Colors.green,
          margin: EdgeInsets.all(20),
         child: Container(
          color: Colors.black,
          margin: EdgeInsets.all(20),
          child: _cus_wid(),
        ),
        ),
        ),
      ),
    );
  }
}

Widget _cus_wid() {
  return Container(
    color: Colors.blue,
    margin: EdgeInsets.all(40),
     
  );
}