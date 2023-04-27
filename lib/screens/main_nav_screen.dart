import 'package:flutter/material.dart';
import 'package:juicebar/screens/home_screen.dart';

import 'cart_screen.dart';
import 'drawer.dart';
import '../widgets/g_navbar_widget.dart';

class MainNavScreen extends StatefulWidget {
  const MainNavScreen({super.key});

  @override
  State<MainNavScreen> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends State<MainNavScreen> {
  int _selectPage = 0;

  final List<Widget> _index = [
    const HomeScreen(),
    const CartScreen(),
  ];

  void navigateBottomBar(int index) {
    setState(() {
      _selectPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(
                icon: const Icon(
                  Icons.notifications_none_rounded,
                  color: Colors.grey,
                ),
                onPressed: () {}),
          ),
        ],
        backgroundColor: Colors.yellow.shade100,
        elevation: 0,
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.menu_outlined,
                  color: Colors.grey,
                ))),
      ),
      bottomNavigationBar: GNavBarWidget(
        onTab: (index) => navigateBottomBar(index),
      ),
      body: _index[_selectPage],
    );
  }
}
