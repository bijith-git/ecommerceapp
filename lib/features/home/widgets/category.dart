import 'package:ecommerceapp/features/home/widgets/card_button.dart';
import 'package:flutter/material.dart';

class Catergories extends StatelessWidget {
  Catergories({
    Key? key,
  }) : super(key: key);

  List democategories = [
    {"icon": "assets/icons/shirt.png", "title": "Shirts", "isSelected": true},
    {
      "icon": "assets/icons/women-dress.png",
      "title": "Women",
      "isSelected": false
    },
    {
      "icon": "assets/icons/sneakers.png",
      "title": "Shoes",
      "isSelected": false
    },
    {
      "icon": "assets/icons/sun-glasses.png",
      "title": "Glasses",
      "isSelected": false
    },
    {"icon": "assets/icons/bag.png", "title": "Bag", "isSelected": false},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          itemCount: democategories.length,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: CardButton(
                title: democategories[i]["title"],
                icon: democategories[i]["icon"],
              ),
            );
          }),
    );

    // SingleChildScrollView(
    //   physics: const BouncingScrollPhysics(),
    //   scrollDirection: Axis.horizontal,
    //   child: Row(
    //       children: List.generate(
    //     democategories.length,
    //     (index) => Padding(
    //       padding: const EdgeInsets.only(right: 16),
    //       child: CardButton(
    //         title: democategories[index]["title"],
    //         icon: democategories[index]["icon"],
    //       ),
    //     ),
    //   )),
    // );
  }
}
