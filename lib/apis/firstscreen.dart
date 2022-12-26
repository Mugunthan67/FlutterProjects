import 'package:flutter/material.dart';
import 'package:marlo_project/apis/home.dart';

void main() {
  runApp(const FirstScr());
}

class FirstScr extends StatefulWidget {
  const FirstScr({super.key});

  @override
  State<FirstScr> createState() => _FirstScrState();
}

class _FirstScrState extends State<FirstScr> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(),
      //body: Home(),
      ),
    );
  }
}