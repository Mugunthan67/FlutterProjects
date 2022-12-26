import 'package:flutter/material.dart';

class ThemeDemo extends StatefulWidget {
  const ThemeDemo({super.key});

  @override
  State<ThemeDemo> createState() => _ThemeDemoState();
}

class _ThemeDemoState extends State<ThemeDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Flutter Themes'),
        leading: Icon(Icons.menu),
        ),
      body: Container(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,pos) {
            return Card(
              elevation: 0,
              child: ListTile(title: Text('Title $pos'),
              subtitle: Text(''),
              ),
            );
          },
      ),
      )
    );
  }
}