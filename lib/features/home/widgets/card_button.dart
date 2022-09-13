// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ecommerceapp/constants/global_variables.dart';

class CardButton extends StatefulWidget {
  const CardButton({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  // final VoidCallback fun;

  final String title;
  final String icon;

  @override
  State<CardButton> createState() => _CardButtonState();
}

class _CardButtonState extends State<CardButton> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? GlobalVariables.primaryColor : Colors.grey[600],
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)))),
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 16 / 4, vertical: 16 / 2),
        child: Column(
          children: [
            Image.asset(
              widget.icon,
              width: 30,
              height: 30,
              color: isSelected ? Colors.white : Colors.black,
            ),
            const SizedBox(
              height: 16 / 2,
            ),
            Text(
              widget.title,
              style: TextStyle(color: isSelected ? Colors.white : Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
