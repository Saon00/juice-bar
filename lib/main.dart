import 'package:flutter/material.dart';
import 'package:juicebar/provider/counter_provider.dart';
import 'package:juicebar/screens/counter_exmpl.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterExample(),
      ),
    );
  }
}
