import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.img,
    required this.title,
    required this.price,
    required this.bgColor,
    required this.onPress,
  }) : super(key: key);
  final String img;
  final String title;
  final int price;
  final Color bgColor;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(16 / 2),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        width: 154,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: const BorderRadius.all(Radius.circular(12))),
              child: Image.network(
                img,
                height: 130,
              ),
            ),
            const SizedBox(
              height: 16 / 2,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis, color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 16 / 4,
                ),
                Text(
                  '\$ ${price.toString()}',
                  style: Theme.of(context).textTheme.subtitle2,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
