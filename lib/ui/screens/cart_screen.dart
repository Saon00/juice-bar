import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:juicebar/models/cart_model.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
      bottomNavigationBar: const BottomNewWidget(),
    );
  }
}

class BottomNewWidget extends StatelessWidget {
  const BottomNewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            color: Colors.green.shade400,
            borderRadius: BorderRadius.circular(10)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Price',
                  style: GoogleFonts.comfortaa(fontSize: 20),
                ),
                Text(
                  '\$7.50',
                  style: GoogleFonts.comfortaa(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white60),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text('Pay Now', style: GoogleFonts.comfortaa(fontSize: 20)),
                    const Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class CartNewWidget extends StatelessWidget {
  final String imgPath;
  final String juiceName;
  final String juicePrice;
  const CartNewWidget({
    super.key,
    required this.imgPath,
    required this.juiceName,
    required this.juicePrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.deepPurple.shade400),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(
                  imgPath,
                  height: 70,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      juiceName,
                      style: GoogleFonts.ubuntu(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text('\$$juicePrice',
                        style: GoogleFonts.ubuntu(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: CircleAvatar(
              backgroundColor: Colors.red.shade400,
              minRadius: 20,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete_forever_rounded,
                    color: Colors.black,
                    size: 30,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
