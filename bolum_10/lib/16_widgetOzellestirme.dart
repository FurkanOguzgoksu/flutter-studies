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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaviKare(),
            SizedBox(height: 50),
            KirmiziKare(),
            SizedBox(height: 50),
            Yazi("Hosgeldiniz", 15.0),
          ],
        ),
      ),
    );
  }
}

class MaviKare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, color: Colors.blue);
  }
}

class KirmiziKare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, color: Colors.red);
  }
}

class Yazi extends StatelessWidget {
  final String mesaj;
  final double yaziBoyutu;

  Yazi(this.mesaj, this.yaziBoyutu);

  @override
  Widget build(BuildContext context) {
    return Text(mesaj, style: TextStyle(fontSize: yaziBoyutu));
  }
}
 /*
 --> Sık	kullandığınız	tasarımları	modüler	olarak	kullanmak	için	ayrı	bir
widget	gibi	oluşturup	ismi	ile	erişim	sağlayabiliriz.

--> stless terimiyle metod olusturulmaktadır...

  */


