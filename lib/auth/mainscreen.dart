import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:marlo_project/auth/widget_tree.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    
  );
  // runApp(const MainScreen(Value: '',));
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required String Value});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.orange,
      ),
      home: const WidgetTree(),
    );
  }
}

