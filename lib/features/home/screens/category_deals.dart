// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerceapp/features/home/services/home_services.dart';
import 'package:ecommerceapp/features/home/widgets/product_card.dart';
import 'package:ecommerceapp/models/product.dart';
import 'package:flutter/material.dart';

class CategoryDeals extends StatefulWidget {
  static const String routeName = '/categories';

  final String category;
  const CategoryDeals({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  State<CategoryDeals> createState() => _CategoryDealsState();
}

class _CategoryDealsState extends State<CategoryDeals> {
  @override
  void initState() {
    super.initState();
    fetchCategoryProduct();
  }

  HomeServices homeServices = HomeServices();
  List<Product>? productList;
  fetchCategoryProduct() async {
    productList = await homeServices.fetchCategoryProducts(
        context: context, category: widget.category);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title:
            Text(widget.category, style: const TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: productList == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'keep shopping for ${widget.category}',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * .75,
                    child: GridView.builder(
                        itemCount: productList!.length,
                        scrollDirection: Axis.vertical,
                        padding: const EdgeInsets.only(left: 15),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                childAspectRatio: 1.4,
                                mainAxisSpacing: 10),
                        itemBuilder: (context, i) {
                          final product = productList![i];
                          return ProductCard(
                              img: product.images.toString(),
                              title: product.name,
                              price: product.price.toInt(),
                              bgColor: Colors.black87,
                              onPress: () {});
                        })),
              ],
            ),
    );
  }
}
