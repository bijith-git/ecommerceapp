import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:ecommerceapp/models/Cart.dart';

import 'cart_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List demoCarts = [];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: MediaQuery.of(context).size.height * .70,
      padding: EdgeInsets.symmetric(horizontal: (20 / 375.0) * width),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Dismissible(
                key: const Key("1412412413"),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  setState(() {
                    // demoCarts.removeAt(index);
                  });
                },
                background: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFE6E6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      const Spacer(),
                      SvgPicture.asset("assets/icons/Trash.svg"),
                    ],
                  ),
                ),
                child: const CartCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
