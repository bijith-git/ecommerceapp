import 'package:ecommerceapp/constants/global_variables.dart';
import 'package:ecommerceapp/features/account/widgets/body.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: GlobalVariables.primaryColor,
        title: const Text("Profile"),
      ),
      body: Body(),
    );
  }
}
