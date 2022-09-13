import 'package:ecommerceapp/features/account/widgets/tile_button.dart';
import 'package:flutter/material.dart';

class AccountTiles extends StatelessWidget {
  AccountTiles({Key? key}) : super(key: key);

  List items = [
    {"icon": Icons.person_outlined, 'title': "Edit Profile"},
    {"icon": Icons.list_alt, 'title': "Orders"},
    {"icon": Icons.contact_support, 'title': "Help"},
    {"icon": Icons.settings, 'title': "setting"},
    {"icon": Icons.group_add, 'title': "Invite "}
  ];

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 400,
      child: ListView.builder(
          physics:const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: items.length,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child:
                  TileButton(icon: items[i]['icon'], title: items[i]['title']),
            );
          }),
    );
  }
}
