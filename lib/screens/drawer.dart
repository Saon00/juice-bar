import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:juicebar/screens/display_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      backgroundColor: Colors.grey.shade900,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // drawer header logo
              DrawerHeader(
                child: Image.asset('assets/juice.png'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey.shade600,
                ),
              ),

              // home button
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: GestureDetector(
                  onTap: () {},
                  child: ListTile(
                    leading: const Icon(
                      Icons.home_rounded,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: GoogleFonts.ubuntu(color: Colors.white),
                    ),
                  ),
                ),
              ),

              // info button
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: GestureDetector(
                  onTap: () {},
                  child: ListTile(
                    leading: const Icon(
                      Icons.info_outline_rounded,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Info',
                      style: GoogleFonts.ubuntu(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // logout button
          Padding(
            padding: const EdgeInsets.only(left: 15.0, bottom: 25),
            child: GestureDetector(
              onTap: () {
                Get.to(() => const DisplayScreen());
              },
              child: ListTile(
                leading: const Icon(
                  Icons.logout_rounded,
                  color: Colors.white,
                ),
                title: Text(
                  'Log Out',
                  style: GoogleFonts.ubuntu(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
