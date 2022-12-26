import 'package:flutter/material.dart';
import 'package:marlo_project/auth/auth_page.dart';
import 'package:marlo_project/pages/home_page.dart';
import 'package:marlo_project/pages/login_register.dart';


class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChange,
      builder: ((context, snapshot) {
        if(snapshot.hasData) {
          return HomePage();
        }else {
          return const LoginPage();
        }
      }),
    );
  }
}