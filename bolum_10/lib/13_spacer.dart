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
        children: [ // boş x tane spacer olduğu zaman 100/x şeklinde parçalar...
          Container(width: 100, height: 100, color: Colors.green,),
          Spacer(), // Spacer(flex:30) e
          Container(width: 150, height: 150, color: Colors.red,),
          Spacer(), // Spacer(flex:70) diyerek boşluğu oranlı bir şekilde parçalarız...
          Container(width: 80, height: 80, color: Colors.yellow,),
        ],
      )
    );
  }
}
/*
Spacer --> Conteiner dışındaki tüm boş alanı boşluk olarak ele alır.
flex yöntemi ile boşluğu yüzdelik olarak oranlayabilir...
 */
