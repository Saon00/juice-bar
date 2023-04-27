import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicebar/screens/display_screen.dart';

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
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // body: DisplayScreen(),
      body: DisplayScreen(),
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
