// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';


class CartCards extends StatefulWidget {
  final String title;
  final String price;
  final String img;
  const CartCards({
    Key? key,
    required this.title,
    required this.price,
    required this.img,
  }) : super(key: key);

  @override
  State<CartCards> createState() => _CartCardsState();
}

class _CartCardsState extends State<CartCards> {
  var cartItem = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.white70,
        elevation: 5,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.25,
                  maxHeight: MediaQuery.of(context).size.width * 0.28,
                ),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(widget.img, fit: BoxFit.cover),
                    )),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.38,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                  child: Text(
                    '\$ ${widget.price}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                height: 100,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          if (cartItem != 1) {
                            setState(() {
                              cartItem--;
                            });
                          }
                        },
                        icon: const Icon(Icons.remove)),
                    Text(cartItem.toString()),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            cartItem++;
                          });
                        },
                        icon: const Icon(Icons.add))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      // ),
    );
  }
}
