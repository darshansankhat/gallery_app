import 'package:flutter/material.dart';

class Albums_screen extends StatefulWidget {
  const Albums_screen({Key? key}) : super(key: key);

  @override
  State<Albums_screen> createState() => _Albums_screenState();
}

class _Albums_screenState extends State<Albums_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Albums"),
      ),
    );
  }
}
