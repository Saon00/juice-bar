import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main_nav_screen.dart';

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({super.key});

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => Get.to(() => const MainNavScreen()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              // svg picture
              Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(
                  'assets/refreshing.svg',
                  height: 250,
                ),
              ),
              const Spacer(),
              // card
              Container(
                height: 250,
                width: 270,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    // title
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        'Fruit Juice',
                        style: GoogleFonts.varelaRound(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),

                    // subtitle
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        'One sip; One sip closer to a healthy, happy you.',
                        style: GoogleFonts.varelaRound(
                            color: Colors.grey, fontSize: 15),
                      ),
                    ),

                    // button
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          minimumSize: const Size(50, 60),
                          backgroundColor: const Color(0xff362727),
                        ),
                        onPressed: () {
                          // Get.to(() => const MainNavScreen());
                        },
                        child: Text("Let's Drink 👉",
                            style: GoogleFonts.varelaRound()),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
