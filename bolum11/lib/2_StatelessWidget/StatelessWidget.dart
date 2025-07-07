import 'package:bolum11/2_StatelessWidget/Sayfa1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', // Görev Yöneticisinde gözüken kısım
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Sayfa1(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key, required this.title});

  final String title;

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Yeni Başlık"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ],
        ),
      ),
    );
  }
}

/*
 • Bir	kere	çalışan	widget’lardır.
 • State	özelliği	ile	arayüzde	tekrar	tekrar	değişiklik	yapılamaz.
 • Build	metodu	bir	kere	çalışır.
 • StatelessWidget’lar	state	özelliğini	kullanamazlar.
 • Bu	widgetlar	bir	durum	değiştiremezler.
 */

