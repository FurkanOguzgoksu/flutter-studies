import 'dart:math';
import 'package:flutter/material.dart';
import 'package:sayi_tahmin_uyg/result_screen.dart';

class GuessScreen extends StatefulWidget {
  const GuessScreen({super.key});

  @override
  State<GuessScreen> createState() => _GuessScreenState();
}

class _GuessScreenState extends State<GuessScreen> {
  int randomNumber = 0; // 0 - 50 arasında rastgele sayı
  int remainingRight = 5; // Kalan hak sayısı
  String orientation = ""; // "Tahmini Arttır" veya "Tahmini Azalt"
  TextEditingController tfGuess =
      TextEditingController(); // Tahmin girişi için kontrolcü

  @override
  void initState() {
    super.initState();
    randomNumber = Random().nextInt(51); //0  - 50
    print("Rasgele Sayı : $randomNumber");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tahmin Ekranı")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Kalan Hak : $remainingRight",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            Text(
              "İpucu : $orientation",
              style: TextStyle(color: Colors.green, fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: tfGuess,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "Tahmin",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: Text("TAHMİN ET", style: TextStyle(color: Colors.pink)),

                onPressed: () {
                  if (tfGuess.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "Lütfen bir tahmin girin!",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                    return;
                  }

                  int tahmin = int.parse(
                    tfGuess.text,
                  ); // Tahmin girişini al ve int'e çevir
                  if (tahmin < 0 || tahmin > 50) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Lütfen 0-50 arasında bir sayı girin!"),
                      ),
                    );
                  }
                  if (tahmin == randomNumber) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(result: true),
                      ),
                    );
                    return;
                  } else if (tahmin > randomNumber) {
                    setState(() {
                      orientation = "Tahmini Azalt";
                    });
                  } else if (tahmin < randomNumber) {
                    setState(() {
                      orientation = "Tahmini Arttır";
                    });
                  }

                  setState(() {
                    remainingRight -= 1;
                  });

                  if (remainingRight == 0) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(result: false),
                      ),
                    );
                  }
                  tfGuess.clear(); // Tahmin girişini temizle
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
