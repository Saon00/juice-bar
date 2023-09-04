import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          color: Colors.deepPurple.shade300),
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
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('\$$juicePrice',
                        style: GoogleFonts.ubuntu(
                            fontSize: 16, fontWeight: FontWeight.bold)),
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
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
