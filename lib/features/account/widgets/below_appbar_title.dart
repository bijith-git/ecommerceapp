import 'package:ecommerceapp/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BelowAppBarTitle extends StatelessWidget {
  const BelowAppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.green,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(user.name.toUpperCase(),
                style: const TextStyle(fontSize: 22, color: Colors.black))
          ],
        ));
  }
}
