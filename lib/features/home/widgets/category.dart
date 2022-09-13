import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {
        "icon": "assets/icons/shirt.png",
        "title": "Shirts",
      },
      {
        "icon": "assets/icons/women-dress.png",
        "title": "Women",
      },
      {
        "icon": "assets/icons/sneakers.png",
        "title": "Shoes",
      },
      {
        "icon": "assets/icons/sun-glasses.png",
        "title": "Glasses",
      },
      {
        "icon": "assets/icons/bag.png",
        "title": "Bag",
      },
    ];
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
            width: MediaQuery.of(context).size.width * 0.82,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CategoryCard(
                      icon: categories[i]["icon"],
                      text: categories[i]["title"],
                      press: () {},
                    ),
                  );
                }),
          )
        ]);
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: (55 / 375.0) * width,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all((15 / 375.0) * width),
              height: (55 / 375.0) * width,
              width: (55 / 375.0) * width,
              decoration: BoxDecoration(
                color: const Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                icon!,
                color: const Color.fromARGB(255, 255, 102, 0),
              ),
            ),
            const SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
