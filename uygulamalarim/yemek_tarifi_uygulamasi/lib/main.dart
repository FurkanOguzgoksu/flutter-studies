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
      home: const MyHomePage(title: 'Yemek Tarifi'),
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
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange, title: Text(widget.title)),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Container(color: Colors.red, width: double.infinity, height: 50,) ,
            SizedBox(
              width: ekranGenisligi,
              child: Image.asset("images/yemek.webp"),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: ekranGenisligi / 8,
                    child: TextButton(
                      onPressed: () {
                        print("Beğenilme butonuna basıldı...");
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          // Butonu dikdörtgen yapmayı sağlıyor...
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      child: Text(
                        "Beğen",
                        style: TextStyle(fontSize: ekranGenisligi / 25),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: ekranGenisligi / 8,
                    child: TextButton(
                      onPressed: () {
                        print("Yorum yap butonuna basıldı...");
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      child: Text(
                        "Yorum Yap",
                        style: TextStyle(fontSize: ekranGenisligi / 25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi / 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Köfte",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: ekranGenisligi / 20,
                    ),
                  ),
                  Row(
                    children: [
                      Yazi("Fırında pişirmeye uygun", ekranGenisligi / 25),
                      Spacer(),
                      Yazi("18 Haziran", ekranGenisligi / 25),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi / 80),
              child: Yazi(
                "Köfte	harcını	hazırlamak	için,	soğanları	rendeleyin	ve"
                "maydanozları	ince ince	kıyın. İsterseniz, bir	diş	sarımsak	da"
                "ekleyebilirsiniz.Soğan, maydanoz,	kıyma, yumurta,	zeytinyağı	ve	tuzu	bir	kaba"
                "alıp	iyice	yoğurun. Bu sırada	istediğiniz	baharatları	da	ekleyerek"
                "yoğurmaya	devam	edin.Hazırladığınız	harcın	üzerini	streç	filmle kapatarak	yarım	saat"
                "buzdolabında	dinlendirin. Ardından	harçtan	ceviz	büyüklüğünde parçalar koparıp"
                "yuvarlayın. 1 cm olacak şekilde	üzerine	bastırarak	yassılaştırın.",
                ekranGenisligi / 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Yazi extends StatelessWidget {
  final String icerik;
  final double yaziBoyut;

  Yazi(this.icerik, this.yaziBoyut);

  @override
  Widget build(BuildContext context) {
    return Text(icerik, style: TextStyle(fontSize: yaziBoyut));
  }
}
