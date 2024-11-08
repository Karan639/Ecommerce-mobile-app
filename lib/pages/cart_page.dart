// ignore_for_file: prefer_const_constructors

import 'package:ecomerce/components/cart_items.dart';
import 'package:ecomerce/models/cart.dart';
import 'package:ecomerce/models/shoes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  
                  // heading
                  const Text(
                    "Cart",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  Expanded(
                      child: ListView.builder(
                          itemCount: value.getuserCart().length,
                          itemBuilder: (context, index) {
                            // get induvisual shoe
                            Shoes induvisualShoe = value.getuserCart()[index];

                            // return the cart item
                            return CartItems(
                              shoe: induvisualShoe,
                            );
                          }))
                ],
              ),
            ));
  }
}
