import 'package:flutter/material.dart';
import 'package:layouting/src/home_screen/home_screen_view.dart';
import 'package:layouting/src/login_screen/login_screen_view.dart';
import 'package:layouting/src/privace_policy/privacy_policy_view.dart';
import 'package:layouting/src/student_screen/student_screen_View.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
      '/':(context)=>homeScreenView(),
      '/login':(context)=>LoginScreen(),
      '/studentScreen':(context)=>studentView(),
      '/privacy':(context)=>privacyPolicyView(),
      },
    );
  }
}
