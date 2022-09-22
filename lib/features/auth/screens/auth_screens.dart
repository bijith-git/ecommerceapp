import 'package:ecommerceapp/common/custom_button.dart';
import 'package:ecommerceapp/common/custom_textfield.dart';
import 'package:ecommerceapp/constants/global_variables.dart';
import 'package:ecommerceapp/features/auth/services/auth_services.dart';
// import 'package:ecommerceapp/features/auth/services/auth_services.dart';
import 'package:flutter/material.dart';

enum Auth {
  signin,
  signup,
}

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth';
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signin;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();
  final AuthService authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  void signUpUser() {
    authService.signUpUser(
        context: context,
        email: _emailController.text,
        password: _passwordController.text,
        name: _nameController.text);
  }

  void signInUser() {
    authService.signInUser(
        context: context,
        email: _emailController.text,
        password: _passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: height * 0.060,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: GlobalVariables.secondarybackgroundColor,
                    borderRadius: BorderRadius.circular(12)),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _auth = Auth.signin;
                            });
                          },
                          child: Container(
                            width: constraints.maxWidth / 2,
                            decoration: _auth == Auth.signin
                                ? BoxDecoration(
                                    color: GlobalVariables.backgroundColor,
                                    borderRadius: BorderRadius.circular(10))
                                : null,
                            child: Center(
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  color: _auth == Auth.signin
                                      ? GlobalVariables.textColor
                                      : GlobalVariables.primaryColor,
                                  fontFamily: 'Myriadpro',
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _auth = Auth.signup;
                            });
                          },
                          child: Container(
                            width: constraints.maxWidth / 2,
                            decoration: _auth == Auth.signup
                                ? BoxDecoration(
                                    color: GlobalVariables.backgroundColor,
                                    borderRadius: BorderRadius.circular(10))
                                : null,
                            child: Center(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: _auth == Auth.signup
                                      ? GlobalVariables.textColor
                                      : GlobalVariables.primaryColor,
                                  // fontFamily: 'Myriadpro',
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              if (_auth == Auth.signin)
                Form(
                  key: _signInFormKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 35,
                            color: GlobalVariables.textColor,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomTextFeild(
                            passwrdTextFeild: false,
                            controller: _emailController,
                            hintText: "email"),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextFeild(
                            passwrdTextFeild: true,
                            controller: _passwordController,
                            hintText: "Password"),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomButton(
                            onTap: () {
                              if (_signInFormKey.currentState!.validate()) {
                                signInUser();
                              }
                            },
                            text: "Sign In"),
                      ]),
                ),
              if (_auth == Auth.signup)
                Form(
                  key: _signUpFormKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 35,
                            color: GlobalVariables.textColor,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomTextFeild(
                            passwrdTextFeild: false,
                            controller: _nameController,
                            hintText: "Name"),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextFeild(
                            passwrdTextFeild: false,
                            controller: _emailController,
                            hintText: "email"),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextFeild(
                            passwrdTextFeild: true,
                            controller: _passwordController,
                            hintText: "Password"),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomButton(
                            onTap: () {
                              if (_signUpFormKey.currentState!.validate()) {
                                signUpUser();
                              }
                            },
                            text: "Sign Up"),
                      ]),
                )
            ],
          ),
        ),
      )),
    );
  }
}
