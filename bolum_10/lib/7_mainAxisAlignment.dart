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
        useMaterial3: true,
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
        mainAxisAlignment: MainAxisAlignment.center, // tüm olsaılıkları aşağıya not aldım....
        children: [
          Container(width: 200, height: 200, color: Colors.green,),
          Container(width: 100, height: 100, color: Colors.blue,),
          Container(width: 25, height: 25, color: Colors.red,),
        ],
      ),
    );
  }
}

/*
🔹🔹🔹🔹 MainAxisAlignment – Row 🔹🔹🔹🔹
• start (varsayılan) → Widget’lar satırın en başına (soldan) hizalanır.
    Row(mainAxisAlignment: MainAxisAlignment.start, ...)

• end → Widget’lar satırın en sonuna (sağ tarafa) hizalanır.
    Row(mainAxisAlignment: MainAxisAlignment.end, ...)

• center → Widget’lar yatay eksende ortalanır.
    Row(mainAxisAlignment: MainAxisAlignment.center, ...)

* • spaceBetween → İlk widget en sola, son widget en sağa yerleşir. Aradakiler eşit boşlukla ayrılır.
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, ...)

* • spaceEvenly → Tüm widget’lar arasında ve kenarlarda ''eşit boşluk'' bırakılır.
    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, ...)


🔹🔹🔹🔹 MainAxisAlignment – Column 🔹🔹🔹🔹
• start (varsayılan) → Widget’lar sütunun en üstüne hizalanır.
    Column(mainAxisAlignment: MainAxisAlignment.start, ...)

• end → Widget’lar sütunun en altına hizalanır.
    Column(mainAxisAlignment: MainAxisAlignment.end, ...)

• center → Widget’lar dikey eksende ortalanır.
    Column(mainAxisAlignment: MainAxisAlignment.center, ...)

• spaceBetween → İlk widget en üste, son widget en alta yerleşir. Aradakiler eşit boşlukla ayrılır.
    Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, ...)

• spaceEvenly → Tüm widget’lar arasında ve kenarlarda ''eşit boşluk'' bırakılır.
    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, ...)

*/
