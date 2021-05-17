import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int likes = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Floppify"),
      ),
      body: Center(
        child: Container(
          child: Text("Flutter Aweosome, Likes $likes"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
