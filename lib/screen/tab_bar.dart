import 'package:flutter/material.dart';

class Tab_bar extends StatefulWidget {
  const Tab_bar({super.key});

  @override
  State<Tab_bar> createState() => _Tab_barState();
}

class _Tab_barState extends State<Tab_bar> with SingleTickerProviderStateMixin {
   late TabController _tcontrol;
  @override
  void initState() {
    _tcontrol = TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Tab Bar"),
        bottom: TabBar(tabs: [
          Tab(icon: Icon(Icons.home),),
          Tab(icon: Icon(Icons.account_box_outlined),),
      Tab(icon: Icon(Icons.close),),
      
        ],
        controller: _tcontrol,
        ),
      ),
      body: TabBarView(
        controller: _tcontrol,
        children: [
          Center(child: Text("Welcome to home"),),
          Center(child: Text("Welcome to account"),),
          Center(child: Text("Welcome to close"),),
        ],
      ),
    );
  }
}