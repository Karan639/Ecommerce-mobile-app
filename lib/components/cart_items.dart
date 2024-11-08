// ignore_for_file: must_be_immutable

import 'package:ecomerce/models/cart.dart';
import 'package:ecomerce/models/shoes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItems extends StatefulWidget {
  Shoes shoe;

  CartItems({super.key, required this.shoe});

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.all(12),
      child: ListTile(
        leading: Image.asset(widget.shoe.imgpath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
            onPressed: removeItemFromCart,
            icon: const Icon(
              Icons.delete,
              color: Color.fromARGB(255, 230, 66, 66),
            )),
      ),
    );
  }
}
