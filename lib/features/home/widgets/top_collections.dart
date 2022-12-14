import 'package:ecommerceapp/constants/global_variables.dart';
import 'package:flutter/material.dart';

class TopCollection extends StatelessWidget {
  const TopCollection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Top Collections",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
          ),
        ),
        TextButton(
            onPressed: () {},
            child: const Text("See All",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: GlobalVariables.primaryColor,
                    fontSize: 14)))
      ],
    );
  }
}
