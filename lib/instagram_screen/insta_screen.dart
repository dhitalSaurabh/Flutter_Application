import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Insta_UI extends StatelessWidget {
  const Insta_UI({super.key});
  @override
  Widget build(BuildContext context) {
    ScrollController _scontrol = ScrollController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram",
         style:  GoogleFonts.lobster(
          ) ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.heart_broken_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.post_add_sharp))
        ],
      ),
      body:SafeArea(child: Column(
        children: [
         
       
            ],
          )
        
      )
    );
  }
}