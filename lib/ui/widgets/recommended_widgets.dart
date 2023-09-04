import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/cart_controllers.dart';

class RecommendedWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String img;
  final VoidCallback onTap;
  RecommendedWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.img,
    required this.onTap,
  });

  // getx cart controller initialize
  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 280,
          width: 200,
          color: Colors.yellow.shade100,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 20),
                        child: Text(
                          title,
                          style: GoogleFonts.ubuntu(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                          subtitle,
                          style: GoogleFonts.ubuntu(fontSize: 12),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: Text(
                              "\$$price",
                              style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, top: 10),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.brown,
                                  borderRadius: BorderRadius.circular(10)),
                              child: IconButton(
                                  color: Colors.white,
                                  onPressed: onTap,
                                  icon: const Icon(Icons.add)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 15,
                right: 55,
                child: CircleAvatar(
                  backgroundColor: Colors.yellow.shade100,
                  maxRadius: 50,
                  child: Image.asset(
                    img,
                    height: 70,
                    width: 70,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
