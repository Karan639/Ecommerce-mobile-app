// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavbar extends StatefulWidget {
  void Function(int)? onTabChange;
  BottomNavbar({super.key, required this.onTabChange});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey.shade800,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBackgroundColor: Colors.grey.shade100,
          tabBorderRadius: 12,
          onTabChange: (value) => widget.onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              text: "Shop",
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              text: "Cart",
            )
          ]),
    );
  }
}
