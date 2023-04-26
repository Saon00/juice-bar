import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SeeAllScreen extends StatefulWidget {
  const SeeAllScreen({super.key});

  @override
  State<SeeAllScreen> createState() => _SeeAllScreenState();
}

class _SeeAllScreenState extends State<SeeAllScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade100,
        elevation: 0,
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.grey,
                ))),
      ),
    );
  }
}
