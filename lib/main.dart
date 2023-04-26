import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicebar/screens/cart_screen.dart';
import 'package:juicebar/screens/drawer.dart';
import 'package:juicebar/screens/home_screen.dart';
import 'package:juicebar/screens/main_navbar_screen.dart';

void main(List<String> args) {
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
      bottomNavigationBar: MainNavBarScreen(
        onTab: (index) => navigateBottomBar(index),
      ),
      body: _index[_selectPage],
    );

    // this one is for multiple provider
    /*
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CounterProvider()),
          ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
        ],
        child: const Scaffold(
          body: CounterExample(),
        ));
*/
    // this one is for single provider
    /*
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ExampleOneScreen(),
      ),
    );
    */
  }
}
