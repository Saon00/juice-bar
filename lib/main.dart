import 'package:flutter/material.dart';
import 'package:juicebar/exampleprovider/counter_provider.dart';
import 'package:juicebar/exampleprovider/example_one_provider.dart';
import 'package:juicebar/exmaples/counter_exmpl.dart';
import 'package:provider/provider.dart';

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
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CounterProvider()),
          ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
        ],
        child: const Scaffold(
          body: CounterExample(),
        ));

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
