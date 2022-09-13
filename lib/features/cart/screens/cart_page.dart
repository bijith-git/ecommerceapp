import 'package:ecommerceapp/constants/global_variables.dart';
import 'package:ecommerceapp/features/cart/widgets/body.dart';
import 'package:ecommerceapp/features/cart/widgets/check_out_card.dart';
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
      appBar: buildAppBar(context),
      body: const Body(),
      bottomNavigationBar: const CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black)),
      elevation: 0,
      backgroundColor: GlobalVariables.primaryColor,
      title: Column(
        children: [
          const Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${5} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}

    
    
    
    
    
    // Scaffold(
    //     appBar: AppBar(
    //       backgroundColor: GlobalVariables.backgroundColor,
    //       elevation: 0,
    //       leading: IconButton(
    //         icon: const Icon(
    //           Icons.arrow_back_ios_new_outlined,
    //           color: Colors.black,
    //         ),
    //         onPressed: () {},
    //       ),
    //       title: const Text(
    //         'My cart',
    //         style: TextStyle(color: Colors.black),
    //       ),
    //       centerTitle: true,
    //     ),
    //     body: Column(
    //       children: [
    //         SizedBox(
    //           height: MediaQuery.of(context).size.height * .71,
    //           child: ListView.builder(
    //             physics: const BouncingScrollPhysics(),
    //             itemCount: 10,
    //             itemBuilder: (context, i) {
    //               return const CartCards(
    //                 title: 'fossil watch',
    //                 price: '4888',
    //                 img:
    //                     'https://i5.walmartimages.com/asr/d63cc29a-1802-4b13-bee5-30f1f03435e7.ef5de3226a1d75ce0e8dd94e4f79eaca.jpeg',
    //               );
    //             },
    //           ),
    //         ),
    //         CustomButton(onTap: () {}, text: "Buy now")
    //       ],
    //     ));
//   }
// }
