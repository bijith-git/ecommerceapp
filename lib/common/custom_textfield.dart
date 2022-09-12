// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.passwrdTextFeild,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final bool passwrdTextFeild;
  @override
  Widget build(BuildContext context) {
    final bool passwrdVisible;
    return TextFormField(
      decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.black38)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.black38))),
      controller: controller,
      obscureText: passwrdTextFeild ? true : false,
      validator: (value) {},
    );
  }
}
