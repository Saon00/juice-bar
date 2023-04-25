import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            Column(
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
                                padding:
                                    const EdgeInsets.only(top: 40, left: 20),
                                child: Text(
                                  'Apple Juice',
                                  style: GoogleFonts.ubuntu(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 20),
                                child: Text(
                                  'Apple made with Sugar, Ice, Apple Flavour, Apple Powder, and so on...',
                                  style: GoogleFonts.ubuntu(fontSize: 12),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 20),
                                    child: Text(
                                      "\$3.45",
                                      style: GoogleFonts.ubuntu(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 10),
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.brown,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: IconButton(
                                          color: Colors.white,
                                          onPressed: () {
                                            //...........
                                          },
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
                          backgroundColor: Colors.white,
                          maxRadius: 50,
                          child: Image.asset(
                            'assets/apple.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // popular drinks
          ],
        ),
      ),
    );
  }
}
