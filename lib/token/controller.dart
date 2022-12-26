
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:marlo_project/token/refresh_token.dart';
class Controller {
  TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
   
Future loginUser() async {
  const url = 'https://asia-southeast1-marlo-bank-dev.cloudfunctions.net/api_dev/balance';
  var response = await http.post(Uri.parse(url),body: {
    "username" : usernameController.text,
    "password" : passwordController.text,
  });
  print(response.statusCode);
  if(response.statusCode == 200) {
    var loginArr = json.decode(response.body);
    print(loginArr);
  }else {
    print("Login Error");
  }
}

  static Provider(ApiToken Function(dynamic ref) param0) {}
}