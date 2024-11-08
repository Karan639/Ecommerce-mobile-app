// ignore_for_file: prefer_const_constructors

import 'package:ecomerce/components/shoe_tile.dart';
import 'package:ecomerce/models/cart.dart';
import 'package:ecomerce/models/shoes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopingPage extends StatefulWidget {
  const ShopingPage({super.key});

  @override
  State<ShopingPage> createState() => _ShopingPageState();
}

class _ShopingPageState extends State<ShopingPage> {
  // add shop to cart
  void addItemToCart(Shoes shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    //alert the user that shoes has been added
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Successfully added!!"),
              content: Text("Check your Cart"),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                // search bar
                Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.symmetric(horizontal: 22),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),

                // message
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Everyone flies... Some fly higher",
                    style: TextStyle(fontSize: 15),
                  ),
                ),

                // hot picks
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "Hot Picks",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                // listview builder build items via list
                Expanded(
                    child: ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          Shoes shoe = value.getShoesList()[index];
                          return ShoeTile(
                            shoe: shoe,
                            onTap: () => addItemToCart(shoe),
                          );
                        })),

                const Padding(
                  padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                  child: Divider(
                    color: Colors.white,
                  ),
                )
              ],
            ));
  }
}
