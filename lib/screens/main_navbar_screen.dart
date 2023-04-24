import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainNavBarScreen extends StatelessWidget {
  final void Function(int)? onTab;
  const MainNavBarScreen({super.key, this.onTab});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
          color: Colors.grey.shade400,
          // onTabChange: (value)=> onTab!(value),
          onTabChange: onTab!,
          //
          tabs: const [
            GButton(icon: Icons.home, text: 'Home'),
            GButton(icon: Icons.shopping_bag, text: 'Cart'),
          ]),
    );
  }
}
