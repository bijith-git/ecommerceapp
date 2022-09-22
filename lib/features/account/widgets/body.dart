import 'package:ecommerceapp/features/auth/services/auth_services.dart';
import 'package:ecommerceapp/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  Body({super.key});
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const ProfilePic(),
          const SizedBox(height: 20),
          Text(
            user.name.toUpperCase(),
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
          const SizedBox(height: 10),
          ProfileMenu(
            text: "My Account",
            icon: Icons.person_outlined,
            press: () => {},
          ),
          ProfileMenu(
            text: "Orders",
            icon: Icons.list_alt,
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: Icons.settings,
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: Icons.contact_support,
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: Icons.logout,
            press: () {
              authService.logout(context);
            },
          ),
        ],
      ),
    );
  }
}
