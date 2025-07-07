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
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Row(
          children: [
            Padding( // Özelliği olduğu container ın etrafına belirli boşluklar verebiliriz
              // .all dersek 4 bir tarafına aynı boşluğu verir
              /* .only dersek her bir tarafına istenilen boyut kadar bosluk verilebilir. ya da
              sadece belirli kenrlarına boşluk verebiliriz --> ( left:, right:, top:, bottom: )
               */
              padding: const EdgeInsets.all(8.0),
              child: Container(width: 100, height: 100, color: Colors.green,),
            ),
            Container(width: 100, height: 100, color: Colors.blue,),
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Container(width: 100, height: 100, color: Colors.yellow,),
            ),
          ],
        )
    );
  }
}

