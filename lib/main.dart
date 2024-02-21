import 'package:flutter/material.dart';
import 'package:lap_app/form/login_bar.dart';
import 'package:lap_app/goMoonapp/gomoon.dart';
import 'package:lap_app/instagram_screen/insta_screen.dart';
import 'package:lap_app/screen/custom_widget/custom_widg.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget{
  const App({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      title: "GOMoon",
      theme: ThemeData(scaffoldBackgroundColor: Color.fromRGBO(31, 31, 31, 1),
      ),
  home: LoginBar(),
    );
  }
}
