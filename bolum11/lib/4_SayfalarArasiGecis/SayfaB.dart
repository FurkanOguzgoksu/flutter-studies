import 'package:bolum11/4_SayfalarArasiGecis/4_sayfalarAras%C4%B1Gecis.dart';
import 'package:flutter/material.dart';

class SayfaB extends StatefulWidget {

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sayfa B"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Geldiği Sayfaya Dön"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).popUntil((predicate) => predicate.isFirst);
              },
              child: Text("Ana Sayfaya Dön"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AnaSayfa(title: "Yeni Baslik")));
              },
              child: Text("Ana Sayfaya Geçiş Yap"),
            ),
          ],
        ),
      ),
    );
  }
}
