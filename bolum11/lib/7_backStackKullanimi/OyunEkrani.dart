import 'package:bolum11/7_backStackKullanimi/SonucEkrani.dart';
import 'package:flutter/material.dart';

class OyunEkrani extends StatefulWidget {
  const OyunEkrani({super.key});

  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Oyun Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SonucEkrani()));
              },
              child: Text("Oyuna Bitti"),
            )
          ],
        ),
      ),
    );
  }
}

/*
Sayfayı	Back	Stackten	Silme
 • Android	içindeki	Finish	metodu	gibi	çalışır
 • Bu	yapı	ile	sayfaya	geçişi	yapıldığında	back	stackten	kendisini	siler.
 • Kendisini	sildiği	için	geçiş	yapıldığı	sayfadan	geri	tuşu	ile	bu	sayfaya
gelinemez	çünkü	back	stackten	silinmiştir
 */
