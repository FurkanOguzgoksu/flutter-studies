import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        // ilk yazılan ilk başta olur...
        children: [
          Container(width: 100, height: 100, color: Colors.green),
          Container(width: 200, height: 200, color: Colors.blue),
          Container(width: 50, height: 50, color: Colors.red),

          /*
          Text("Merhaba"),
          Container(width: 100, height: 100, color: Colors.red),
          Container(width: 100, height: 100, color: Colors.blue),
          Container(width: 100, height: 100, color: Colors.green),
           */
        ],
      ),
    );
  }
}
