import 'package:flutter/material.dart';

class Recommanded_screen extends StatefulWidget {
  const Recommanded_screen({Key? key}) : super(key: key);

  @override
  State<Recommanded_screen> createState() => _Recommanded_screenState();
}

class _Recommanded_screenState extends State<Recommanded_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recommended"),
      ),
    );
  }
}
