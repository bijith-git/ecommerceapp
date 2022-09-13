import 'package:ecommerceapp/common/bottom_nav_bar.dart';
import 'package:ecommerceapp/constants/global_variables.dart';
import 'package:ecommerceapp/features/auth/screens/auth_screens.dart';
import 'package:ecommerceapp/features/auth/services/auth_services.dart';
import 'package:ecommerceapp/providers/user_provider.dart';
import 'package:ecommerceapp/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();
  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ecommerce App',
        theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        ),
        onGenerateRoute: ((settings) => generateRoute(settings)),
        home: Provider.of<UserProvider>(context).user.token.isNotEmpty
            ? const BottomNavBar()
            : const AuthScreen());
  }
}
