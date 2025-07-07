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
  var pageList = [Sayfa1(),Sayfa2(),Sayfa3()];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Bottom Navigition Bar"),
      ),
      body: pageList[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one),
            label: "Bir",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: "İki",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_3),
            label: "Üç",
          ),
        ],
        backgroundColor: Colors.deepPurpleAccent,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
