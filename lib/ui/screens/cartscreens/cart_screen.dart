import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:juicebar/models/cart_model.dart';

import '../../../controllers/cart_controllers.dart';
import 'bottom_widget.dart';
import 'cart_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // getx cart controller initialize
  final CartController cartController = Get.put(CartController());

  final value = Get.put(CartModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Cart',
                style: GoogleFonts.ubuntu(fontSize: 40, color: Colors.black54),
              ),
              const SizedBox(height: 40),
              const CartNewWidget(
                  imgPath: 'assets/images/cranberry.png',
                  juiceName: 'Cranberry Juice',
                  juicePrice: '2.50'),
              const SizedBox(height: 10),
              const CartNewWidget(
                  imgPath: 'assets/images/grapefruit.png',
                  juiceName: 'Grapefruit Juice',
                  juicePrice: '3.00'),
              const SizedBox(height: 10),
              const CartNewWidget(
                  imgPath: 'assets/images/mango.png',
                  juiceName: 'Mango Juice',
                  juicePrice: '4.00'),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNewWidget(),
    );
  }
}
