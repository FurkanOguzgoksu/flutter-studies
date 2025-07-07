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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Popup menü Kullnımı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PopupMenuButton<int>(
              child: Icon(Icons.open_in_new),
              onSelected: (value) {
                if (value == 1) {
                  print("Sil seçildi");
                } else if (value == 2) {
                  print("Güncelle seçildi");
                }
              },
              onCanceled: (){
                print("Seçim yapılmadı...");
              },
              itemBuilder: (context) => <PopupMenuItem<int>>[
                PopupMenuItem(
                  value: 1,
                  child: Text("Sil", style: TextStyle(color: Colors.red),),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("Güncelle", style: TextStyle(color: Colors.green,)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
