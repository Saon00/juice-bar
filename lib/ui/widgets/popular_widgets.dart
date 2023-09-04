import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularWidgets extends StatelessWidget {
  const PopularWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        PopularInsideWidget(
            imgPath: 'assets/images/pomegranate.png',
            juiceName: 'Pomegranate\nJuice',
            juicePrice: '3.50'),
        SizedBox(height: 10),
        PopularInsideWidget(
            imgPath: 'assets/images/apple.png',
            juiceName: 'Apple Juice',
            juicePrice: '3.00'),
        SizedBox(height: 10),
        PopularInsideWidget(
            imgPath: 'assets/images/grapefruit.png',
            juiceName: 'Grapefruit Juice',
            juicePrice: '3.00'),
        SizedBox(height: 10),
        PopularInsideWidget(
            imgPath: 'assets/images/mango.png',
            juiceName: 'Mango Juice',
            juicePrice: '4.00'),
        SizedBox(height: 10),
      ],
    );
  }
}

class PopularInsideWidget extends StatelessWidget {
  const PopularInsideWidget({
    super.key,
    required this.imgPath,
    required this.juiceName,
    required this.juicePrice,
  });

  final String imgPath;
  final String juiceName;
  final String juicePrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.green.shade400,
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(imgPath),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        juiceName,
                        style: GoogleFonts.ubuntu(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '\$$juicePrice',
                        style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  onPressed: () => {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
