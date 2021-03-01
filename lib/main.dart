import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hamtube/Views/Splash.dart';
import 'package:hamtube/Views/login.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/splash',
      routes:{
        '/splash':(_)=>SplashScreen(),
        '/login':(_)=>Login()
      }
    )
  );
}





