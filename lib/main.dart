import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _count = 0;

  void _addCount() async {
    setState(() {
      _count++;
    });
  }

  void _minusCount() async {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hive Test',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),

      /// Floating Action Button
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _addCount,
            backgroundColor: Colors.blue,
            child: const Icon(
              Icons.exposure_plus_1,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
          ),
          FloatingActionButton(
            onPressed: _minusCount,
            backgroundColor: Colors.blue,
            child: const Icon(
              Icons.exposure_minus_1,
            ),
          ),
        ],
      ),

      /// Body
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Count Data
            Text(
              _count.toString(),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
