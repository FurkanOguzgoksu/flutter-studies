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
      body: Stack(
        // ilk yazılan en alta atar aynı stack mantığı
        children: [
          Container(width: 400, height: 400, color: Colors.green),
          Row(
            children: [
              Container(width: 75, height: 75, color: Colors.blue),
              Container(width: 75, height: 75, color: Colors.red),
              Column(
                children: [
                  Container(width: 75, height: 75, color: Colors.black),
                  Container(width: 75, height: 75, color: Colors.indigo),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
