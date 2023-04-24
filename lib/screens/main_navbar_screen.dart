import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainNavBarScreen extends StatelessWidget {
  final void Function(int)? onTab;
  const MainNavBarScreen({super.key, this.onTab});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow.shade100,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
          color: Colors.grey.shade400,
          activeColor: Colors.grey.shade700,
          mainAxisAlignment: MainAxisAlignment.center,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.white,
          backgroundColor: Colors.yellow.shade100,
          tabBorderRadius: 16,
          gap: 5,
          textStyle: GoogleFonts.varelaRound(fontSize: 15),
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
