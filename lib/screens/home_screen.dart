import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  List _list = [];

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/juiceshop.json');
    final data = await json.decode(response);
    setState(() {
      _list = data['juices'];
    });
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

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
              SizedBox(
                height: 280,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _list.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          RecommendedWidget(
                            title: _list[index]['juiceName'],
                            subtitle: _list[index]['juiceDescription'],
                            price: _list[index]['price'].toString(),
                            img: _list[index]['imagePath'],
                          ),
                          const SizedBox(width: 10),
                        ],
                      );
                    }),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
