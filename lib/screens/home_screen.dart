import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:juicebar/screens/see_all_screen.dart';

import '../widgets/recommended_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Text("Stay Fresh",
                  style: GoogleFonts.redHatDisplay(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.grey.shade800)),
              // subtitle
              Text("Any Time Any Where",
                  style: GoogleFonts.redHatDisplay(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.grey.shade800)),

              // divider
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  thickness: 1,
                ),
              ),

              // text
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  'Recommended',
                  style: GoogleFonts.ubuntu(fontSize: 18),
                ),
              ),

              // recommended widgets
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    RecommendedWidget(
                      title: 'Apple Juice',
                      subtitle:
                          'Apple made with Sugar, Ice, Apple Flavour, Apple Powder, and so on...',
                      price: '3.55',
                      img: 'apple.png',
                    ),
                    SizedBox(width: 10),
                    RecommendedWidget(
                      title: 'Orange Juice',
                      subtitle:
                          'Orange made with Sugar, Ice, Apple Flavour, Apple Powder, and so on...',
                      price: '2.25',
                      img: 'orange.png',
                    ),
                    SizedBox(width: 10),
                    RecommendedWidget(
                      title: 'Water Melon Juice',
                      subtitle:
                          'Water Melon made with Sugar, Ice, Apple Flavour, Apple Powder, and so on...',
                      price: '1.90',
                      img: 'watermelon.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // popular drinks
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Popular Drinks 🔥',
                      style: GoogleFonts.ubuntu(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextButton(
                        onPressed: () {
                          Get.to(const SeeAllScreen());
                        },
                        child: Text('See all',
                            style: GoogleFonts.ubuntu(
                                color: Colors.red.shade300))),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
