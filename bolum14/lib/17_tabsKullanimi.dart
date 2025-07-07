import 'package:bolum14/17_sayfa1.dart';
import 'package:bolum14/17_sayfa2.dart';
import 'package:bolum14/17_sayfa3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Tabs Kullanımı"),
          bottom: TabBar(
              tabs: [
                Tab(text: "Bir",),
                Tab(icon: Icon(Icons.looks_two,color: Colors.cyanAccent,),),
                Tab(text: "Üç",icon: Icon(Icons.looks_3),),
              ],
            indicatorColor: Colors.green,
          ),
        ),
        body: TabBarView(
          children: [
            Sayfa1(),
            Sayfa2(),
            Sayfa3(),
          ]
        )
      ),
    );
  }
}
