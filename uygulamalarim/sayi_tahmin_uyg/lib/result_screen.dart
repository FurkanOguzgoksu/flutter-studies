import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final bool? result;
  const ResultScreen({super.key, required this.result});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sonuç Ekranı")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            widget.result == true
                ? Image.asset("images/mutlu_resim.png")
                : Image.asset("images/uzgun_resim.png"),
            Text(
              widget.result == true ? "Kazandınız" : "Kaybettiniz",
              style: TextStyle(color: Colors.black54, fontSize: 36),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: Text(
                  widget.result == true ? "Yeniden Oyna" : "Tekrar Dene",
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
