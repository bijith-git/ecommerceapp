import 'package:ecommerceapp/common/custom_button.dart';
import 'package:ecommerceapp/constants/global_variables.dart';
import 'package:ecommerceapp/features/cart/widgets/cart_cards.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int cartItem = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: GlobalVariables.backgroundColor,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          title: const Text(
            'My cart',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .71,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, i) {
                  return const CartCards(
                    title: 'fossil watch',
                    price: '4888',
                    img:
                        'https://i5.walmartimages.com/asr/d63cc29a-1802-4b13-bee5-30f1f03435e7.ef5de3226a1d75ce0e8dd94e4f79eaca.jpeg',
                  );
                },
              ),
            ),
            CustomButton(onTap: () {}, text: "Buy now")
          ],
        ));
  }
}
