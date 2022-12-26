import 'package:flutter/material.dart';
import 'package:marlo_project/Routes/Route.dart';
import 'package:marlo_project/story/storyview.dart';
//import 'package:flutter_login/app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
