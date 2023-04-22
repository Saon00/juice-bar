import 'dart:async';

import 'package:flutter/material.dart';
import 'package:juicebar/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  @override
  void initState() {
    super.initState();
    final provider = Provider.of<CounterProvider>(context, listen: false);
    Timer.periodic(const Duration(seconds: 0), (timer) {
      provider.setCounter();
    });
  }

  @override
  Widget build(BuildContext context) {
    final counterProvider =
        Provider.of<CounterProvider>(context, listen: false);
    print('build');

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Provider Test'),
      ),
      body: Center(
        child: Consumer<CounterProvider>(builder: (context, value, child) {
          return Text(
            value.count.toString(),
            style: const TextStyle(fontSize: 50),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterProvider.setCounter();
          },
          child: const Icon(Icons.add)),
    );
  }
}
