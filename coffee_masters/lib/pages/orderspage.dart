import 'package:coffee_masters/datamodel.dart';
import 'package:flutter/material.dart';

import '../datamanager.dart';

class OrdersPage extends StatefulWidget {
  final DataManager dataManager;

  const OrdersPage({Key? key, required this.dataManager}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    if (widget.dataManager.cart.isEmpty) {
      return const Center(
        child: Text("your cart is empty"),
      );
    } else {
      return ListView.builder(
          itemCount: widget.dataManager.cart.length,
          itemBuilder: (context, index) {
            var item = widget.dataManager.cart[index];
            return OrderItem(
                item: item,
                onRemove: (product) {
                  setState(() {
                    widget.dataManager.cartRemove(product);
                  });
                });
          });
    }
  }
}

class OrderItem extends StatelessWidget {
  final ItemInCart item;
  final Function onRemove;
  const OrderItem({Key? key, required this.item, required this.onRemove})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("${item.quantity}x"),
                )),
            Expanded(
                flex: 6,
                child: Text(
                  item.product.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )),
            Expanded(
                flex: 2,
                child: Text(
                    "\$${(item.product.price * item.quantity).toStringAsFixed(2)}")),
            Expanded(
                flex: 1,
                child: IconButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      onRemove(item.product);
                    },
                    icon: const Icon(Icons.delete)))
          ],
        ),
      ),
    );
  }
}
