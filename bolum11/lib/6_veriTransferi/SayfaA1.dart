import 'package:bolum11/6_veriTransferi/Kisiler.dart';
import 'package:bolum11/6_veriTransferi/SayfaB.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SayfaA1 extends StatefulWidget {
  Kisiler kisi;

  SayfaA1({required this.kisi});

  @override
  State<SayfaA1> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sayfa A"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SayfaB()),
                  );
                });
              },
              child: Text("Sayfa B'ye git"),
            ),
            Text("İsim: ${widget.kisi.isim}"),
            Text("Boyu: ${widget.kisi.boyu}"),
            Text("Yasi: ${widget.kisi.yasi}"),
            Text("Bekar: ${widget.kisi.bekarMi}"),
          ],
        ),
      ),
    );
  }
}
