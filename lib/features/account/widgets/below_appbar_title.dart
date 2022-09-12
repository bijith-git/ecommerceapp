import 'package:ecommerceapp/constants/global_variables.dart';
import 'package:ecommerceapp/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BelowAppBarTitle extends StatelessWidget {
  const BelowAppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Container(
      decoration: BoxDecoration(gradient: GlobalVariables.appBarGradient),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Row(
          children: [
            const Text(
              "Hello, ",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            Text(user.name.toUpperCase(),
                style: TextStyle(fontSize: 22, color: Colors.white))
          ],
        ),
      ),
    );
  }
}
