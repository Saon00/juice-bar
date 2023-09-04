import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:juicebar/constants/text_styles.dart';
import 'package:juicebar/ui/screens/see_all_screen.dart';

import '../widgets/popular_widgets.dart';
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
              Text(
                "Stay Fresh",
                style: homeScreenBannerText,
              ),
              // subtitle
              Text(
                "Any Time Any Where",
                style: homeScreenBannerText,
              ),

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
                          // title: _list[index]['juiceName'],
                          title: _list[index]['juiceName'],
                          subtitle: _list[index]['juiceDescription'],
                          price: _list[index]['price'].toString(),
                          img: _list[index]['imagePath'],
                        ),
                        const SizedBox(width: 10),
                      ],
                    );
                  },
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
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (builder) => const SeeAllScreen()));
                        },
                        child: Text('See all',
                            style: GoogleFonts.ubuntu(
                                color: Colors.red.shade300))),
                  ),
                ],
              ),

              const PopularWidgets()

              // SingleChildScrollView(
              //   scrollDirection: Axis.vertical,
              //   child: ListView.builder(
              //       shrinkWrap: true,
              //       scrollDirection: Axis.vertical,
              //       itemCount: _list.length ~/ 2,
              //       itemBuilder: (context, index) {
              //         return Card(
              //           color: Colors.green.shade100,
              //           child: Padding(
              //             padding: const EdgeInsets.all(15.0),
              //             child: Row(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Row(
              //                   children: [
              //                     SizedBox(
              //                       height: 40,
              //                       child:
              //                           Image.asset(_list[index]['imagePath']),
              //                     ),
              //                     const SizedBox(width: 20),
              //                     Column(
              //                       crossAxisAlignment:
              //                           CrossAxisAlignment.start,
              //                       children: [
              //                         // name
              //                         Text(
              //                           _list[index]['juiceName'],
              //                           style: GoogleFonts.ubuntu(
              //                               fontSize: 20,
              //                               fontWeight: FontWeight.bold),
              //                         ),
              //                         const SizedBox(
              //                           height: 10,
              //                         ),

              //                         // price
              //                         Row(
              //                           children: [
              //                             Text(
              //                               '\$${_list[index]['price'].toString()}',
              //                               style: GoogleFonts.ubuntu(
              //                                   fontWeight: FontWeight.bold),
              //                             ),

              //                             // how much sales
              //                             // Text(
              //                             //   '(542)',
              //                             //   style: GoogleFonts.ubuntu(),
              //                             // ),
              //                           ],
              //                         ),
              //                       ],
              //                     ),
              //                   ],
              //                 ),
              //                 Container(
              //                   height: 40,
              //                   width: 40,
              //                   decoration: BoxDecoration(
              //                       borderRadius: BorderRadius.circular(10),
              //                       color: Colors.lightGreen.shade600),
              //                   child: IconButton(
              //                     icon: const Icon(
              //                       Icons.add,
              //                       color: Colors.white,
              //                     ),
              //                     onPressed: () => {},
              //                   ),
              //                 )
              //               ],
              //             ),

              //             // child: Text(_list[index]['juiceName']),
              //           ),
              //         );
              //       }),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
