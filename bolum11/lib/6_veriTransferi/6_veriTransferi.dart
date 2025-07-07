import 'package:bolum11/6_veriTransferi/Kisiler.dart';
import 'package:bolum11/6_veriTransferi/SayfaA1.dart';
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
      home: AnaSayfa(title: "Ana Sayfa"),
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
            ElevatedButton(
              onPressed: () {
                var kisi = Kisiler(
                  isim: "Ahmet",
                  yasi: 18,
                  boyu: 1.81,
                  bekarMi: true,
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SayfaA1(kisi: kisi)),
                );
              },
              child: Text("Sayfa A'ya git"),
            ),
          ],
        ),
      ),
    );
  }
}
