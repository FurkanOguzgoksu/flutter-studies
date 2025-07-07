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
            Container(width: 80, height: 80, color: Colors.blue,),
            SizedBox(
                width: 300,
                height: 400,
            ),
            Container(width: 100, height: 100, color: Colors.red,),
            Container(width: 60, height: 60, color: Colors.green,),
          ],
        )
    );
  }
}
/*
sizedBox ın iki görevi var
1-) Boşluk oluşturma işlemi
2-) Tekrardan boyutlandırma işlemi
 */