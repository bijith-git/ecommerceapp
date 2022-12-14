import 'package:ecommerceapp/common/bottom_nav_bar.dart';
import 'package:ecommerceapp/constants/global_variables.dart';
import 'package:ecommerceapp/features/admin/screens/admin_screens.dart';
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
          colorScheme: const ColorScheme.light(
            primary: GlobalVariables.primaryColor,
          ),
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
          useMaterial3: true,
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        ),
        onGenerateRoute: ((settings) => generateRoute(settings)),
        home: Provider.of<UserProvider>(context).user.token.isNotEmpty
            ? Provider.of<UserProvider>(context).user.type == 'user'
                ? const BottomNavBar()
                : const AdminScreen()
            : const AuthScreen());
  }
}
