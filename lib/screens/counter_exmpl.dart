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
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Provider Test'),
      ),
      body: Center(
        child: Text(counterProvider.count.toString(),
            style: const TextStyle(fontSize: 50)),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterProvider.setCounter();
          },
          child: const Icon(Icons.add)),
    );
  }
}
