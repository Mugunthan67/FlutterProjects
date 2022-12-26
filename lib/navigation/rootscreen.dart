import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marlo_project/logic/cubit/navigateroot_cubit.dart';
import 'package:marlo_project/navigation/navigate.dart';

void main() {
  runApp(NavigateRoot(Value: '',));
}

class NavigateRoot extends StatelessWidget {
  const NavigateRoot({super.key, required String Value});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavigaterootCubit>(
      create:(context) => NavigaterootCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: RootScreen(),
        ),
    );
  }
}