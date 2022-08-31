import 'package:coffee_masters/datamodel.dart';
import 'package:flutter/material.dart';

import '../datamanager.dart';

class MenuPage extends StatelessWidget {
  final DataManager dataManager;
  const MenuPage({Key? key,required this.dataManager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Product p = Product(id: 1, name: "Dummy Product", price: 20.4, image: "");
    Product q =
        Product(id: 1, name: "Dummy Product too large", price: 20.4, image: "");

    return ListView(children: [
      ProductItem(
        product: p,
        onAdd: () {},
      ),
      ProductItem(
        product: q,
        onAdd: () {},
      ),
    ]);
  }
}

class ProductItem extends StatelessWidget {
  final Product product;
  final Function onAdd;
  const ProductItem({Key? key, required this.product, required this.onAdd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Card(
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("images/black_coffee.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(product.name,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("\$${product.price}"),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: ElevatedButton(
                      onPressed: () {
                        onAdd(product);
                      },
                      child: const Text("Add")),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
