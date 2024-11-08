import 'package:ecomerce/models/shoes.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoes> shoeShop = [
    Shoes(
        name: "AirFlight",
        price: "290",
        imgpath: "lib/images/nike-airflight.png",
        description: "Good for running"),
    Shoes(
        name: "DunkHigh",
        price: "300",
        imgpath: "lib/images/nike-dunkhigh.png",
        description: "Crafted for High agility sports"),
    Shoes(
        name: "Jordan 3",
        price: "310",
        imgpath: "lib/images/nike-jordan3.png",
        description: "The OG "),
    Shoes(
        name: "JoyRide",
        price: "180",
        imgpath: "lib/images/nike-joyride.jpg",
        description: "Good for track events"),
    Shoes(
        name: "Jumpman",
        price: "250",
        imgpath: "lib/images/nike-jumpman.png",
        description: "The perfect description doesnt exist for this shoes")
  ];

  // list of items in users cart blank at beginning
  List<Shoes> userCart = [];

  //get shoplist
  List<Shoes> getShoesList(){
    return shoeShop;
  }

  //get cart
  List<Shoes> getuserCart(){
    return userCart;
  }

  // add item to cart
  void addItemToCart(Shoes shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoes shoe){
    userCart.remove(shoe);
    notifyListeners();  
  }
}
