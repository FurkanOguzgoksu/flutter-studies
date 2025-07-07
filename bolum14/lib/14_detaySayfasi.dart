import 'package:flutter/material.dart';

class DetaySayfasi extends StatefulWidget {
  final String ulkeAdi;

  DetaySayfasi({required this.ulkeAdi});

  @override
  State<DetaySayfasi> createState() => _DetaySayfasiState();
}

class _DetaySayfasiState extends State<DetaySayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("14-Detay")),
      body: Center(
        child: Text(widget.ulkeAdi, style: TextStyle(fontSize: 30.0)),
      ),
    );
  }
}
