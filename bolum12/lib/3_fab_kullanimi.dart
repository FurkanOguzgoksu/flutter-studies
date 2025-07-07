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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(""),
      ),
      body: Row(
          children: <Widget>[
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Yaziniz",
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: (){
                print("Fab 2 e tıklandı");
              },
              tooltip: 'Fab2',
              child: Icon(Icons.copy),
              backgroundColor: Colors.deepOrange,
              foregroundColor: Colors.white,
            ),
          ],
        ),

      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            print("Fab 1 e tıklandı");
          },
          tooltip: 'Fab1',
        icon: Icon(Icons.ac_unit),
        label: Text("Soğuk"),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
    );
  }
}
