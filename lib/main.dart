import 'package:ecommerceapp/constants/global_variables.dart';
import 'package:ecommerceapp/features/auth/screens/auth_screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ecommerce App',
        theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        ),
        home: const AuthScreen());
  }
}
