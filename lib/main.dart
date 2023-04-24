import 'package:flutter/material.dart';
import 'package:juicebar/screens/cart_screen.dart';
import 'package:juicebar/screens/home_screen.dart';
import 'package:juicebar/screens/main_navbar_screen.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
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
