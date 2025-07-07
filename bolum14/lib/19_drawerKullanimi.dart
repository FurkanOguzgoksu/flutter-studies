import 'package:bolum14/19_Sayfaa1.dart';
import 'package:bolum14/19_Sayfaa2.dart';
import 'package:bolum14/19_Sayfaa3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Drawer Kullanımı",
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
  var pageList = [Sayfaa1(),Sayfaa2(),Sayfaa3(),];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body: pageList[selectedIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text("Başlık Tasarımı",style: TextStyle(color: Colors.white, fontSize: 25 ),),
              decoration: BoxDecoration(
                color:  Colors.deepPurple,
              ),
            ),
            ListTile(
              title: Text("Sayfa Bir"),
              onTap: (){
                setState(() {
                  selectedIndex = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Sayfa İki",style: TextStyle(color: Colors.cyanAccent),),
              onTap: (){
                setState(() {
                  selectedIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Sayfa Üç"),
              leading: Icon(Icons.looks_3, color: Colors.orange,),
              onTap: (){
                setState(() {
                  selectedIndex = 2;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
