import 'package:flutter/material.dart';
import 'package:marlo_project/auth/mainscreen.dart';
import 'package:marlo_project/bottomsheet/bottomsheet.dart';

import 'package:marlo_project/invite%20screen/roles.dart';
import 'package:marlo_project/login/biometric.dart';
import 'package:marlo_project/login/login_page.dart';
import 'package:marlo_project/login/passcode.dart';
import 'package:marlo_project/passcode/confirm_passcode.dart';
import 'package:marlo_project/passcode/existing_passcode.dart';
import 'package:marlo_project/passcode/new_passcode.dart';
import 'package:marlo_project/story/storyview.dart';

class RouteGenerator {
 

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/storyview':
        return MaterialPageRoute(builder: (_) => StoryViewScreen(Value: 'value',));
      case '/biometric':
        // return PageRouteAnimation(child:LoginForm(), settings:settings,direction: AxisDirection.right);
        return MaterialPageRoute(builder: (_) => LoginForm());
      case '/passcode':
        // return PageRouteAnimation(child:Passcode(), settings:settings,direction: AxisDirection.left);
        return MaterialPageRoute(builder: (_) => Passcode(Value: '',));
      case '/login':
        return MaterialPageRoute(builder: (_) => Login(Value: '',));
      case '/existing_passcode':
        return MaterialPageRoute(builder: (_) => ExistingPasscode(Value: 'value',));
      case '/confirm_passcode':
        return MaterialPageRoute(builder: (_) => ConfirmPasscode(Value: 'value',));
       case '/new_passcode':
        return MaterialPageRoute(builder: (_) => NewPasscode(Value: 'value',));
       case '/roles':
        return MaterialPageRoute(builder: (_) => RoleScreen(Value: 'value',));
       case '/bottomsheet':
        return MaterialPageRoute(builder: (_) => ModalBottomSheetDemo(Value: '',));
       case '/bottomsheets':
        return MaterialPageRoute(builder: (_) => ModalBottomSheetDemo(Value: '',));
      case '/authscreen':
        return MaterialPageRoute(builder: (_) => MainScreen(Value: 'value',));



      default:
        return MaterialPageRoute(builder: (_) => StoryViewScreen(Value: '',));
    }
  }
}
