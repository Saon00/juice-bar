import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SeeAllScreen extends StatefulWidget {
  const SeeAllScreen({super.key});

  @override
  State<SeeAllScreen> createState() => _SeeAllScreenState();
}

class _SeeAllScreenState extends State<SeeAllScreen> {
  // final JuiceJson _juiceJson = JuiceJson();

  // @override
  // void initState() {
  //   JuiceJson.readJson();
  //   _juiceJson.list;
  //   super.initState();
  // }
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
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade100,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
              // Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.grey,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            // checking data availability
            _list.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: _list.length,
                      itemBuilder: (BuildContext context, int index) {
                        // card
                        return Card(
                          color: Colors.green.shade100,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      child: Image.asset(
                                          _list[index]['imagePath']),
                                    ),
                                    const SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // name
                                        Text(
                                          _list[index]['juiceName'],
                                          style: GoogleFonts.ubuntu(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),

                                        // price
                                        Row(
                                          children: [
                                            Text(
                                              '\$${_list[index]['price'].toString()}',
                                              style: GoogleFonts.ubuntu(
                                                  fontWeight: FontWeight.bold),
                                            ),

                                            // how much sales
                                            Text(
                                              '(542)',
                                              style: GoogleFonts.ubuntu(),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.lightGreen.shade600),
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.shopping_cart_checkout_rounded,
                                      color: Colors.white,
                                    ),
                                    onPressed: () => {},
                                  ),
                                )
                              ],
                            ),

                            // child: Text(_list[index]['juiceName']),
                          ),
                        );
                      },
                    ),
                  )
                : const Center(
                    child: Text('Data not founded'),
                  ),
          ],
        ),
      ),
    );
  }
}
