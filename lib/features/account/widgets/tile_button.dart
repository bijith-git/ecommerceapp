// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ecommerceapp/constants/global_variables.dart';

class TileButton extends StatelessWidget {
  final IconData icon;
  final String title;

  const TileButton({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: GlobalVariables.primaryColor,
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
