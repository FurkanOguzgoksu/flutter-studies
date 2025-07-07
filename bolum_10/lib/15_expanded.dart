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
          Expanded(
              flex: 40,
              child: Container(width: 100, height: 100, color: Colors.blue,)
          ),
          Expanded(
              flex:60,
              child: Container(width: 150, height: 150, color: Colors.red,)
          ),
        ],
      )
    );
  }
}
/*
-> Widget	bulunduğu	alanda	Row	içindeyse yatayda	,	Column içindeyse	dikeyde	boş	olan alanda	yayılır.
-> Yayılma	miktarı	için	oranlama	yapılabilir.
-> Eğer	birden	fazla	expanded	olursa	kendi
aralarında	eşit	oranda	yayılırlar.
-> Oranlama	için	flex	özelliği	ile	kullanılabilir
-> Widget	bulunduğu	alanda	Row	içindeyse	yatayda	,	Column	içindeyse	dikeyde	boş	olan	alanda	yayılır.
-> Ters	yönde	yayılma	yapmak	için	CrossAxisAlignment.stretch	özelliği	kullanılır.

 */