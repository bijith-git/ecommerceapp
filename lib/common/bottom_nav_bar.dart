import 'package:ecommerceapp/constants/global_variables.dart';
import 'package:ecommerceapp/features/account/screens/account_screen.dart';
import 'package:ecommerceapp/features/cart/screens/cart_page.dart';
import 'package:ecommerceapp/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  static const String routeName = '/nav-home';
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var _active = 0;
  int _selectedIndex = 0;
  double bottomBarWidth = 42;

  List<Widget> pages = [
    const HomeScreen(),
    const Center(
      child: Text('Wishlist'),
    ),
    const CartPage(),
    const AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[_active],
        bottomNavigationBar: Container(
          color: GlobalVariables.backgroundColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              backgroundColor: GlobalVariables.backgroundColor,
              rippleColor: GlobalVariables.primaryColor,
              hoverColor: GlobalVariables.primaryColor,
              gap: 8,
              activeColor: GlobalVariables.backgroundColor,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: GlobalVariables.primaryColor,
              color: GlobalVariables.unselectedNavBarColor,
              tabs: const [
                GButton(
                  icon: Icons.home_filled,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Wishlist',
                ),
                GButton(
                  icon: Icons.shopping_bag_outlined,
                  text: 'Cart',
                ),
                GButton(
                  icon: Icons.person_outline,
                  text: 'Account',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                  _active = index;
                });
              },
            ),
          ),
        ));
  }
}
