import 'package:flutter/material.dart';
import 'package:login_scr/login.dart';
import 'package:login_scr/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      "login":(context) => my_login(),
      "register":(context) => MyRegister(),
      },
    

  ));
}


