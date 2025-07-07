import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:eat_app/yemekler.dart';

class DetaySayfasi extends StatefulWidget {
  final Yemekler eat;
  const DetaySayfasi({super.key, required this.eat});

  @override
  State<DetaySayfasi> createState() => _DetaySayfasiState();
}

class _DetaySayfasiState extends State<DetaySayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(widget.eat.eatName!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/${widget.eat.eatImage!}"),
            Text(
              "${widget.eat.eatPrice} \u{20BA}",
              style: TextStyle(fontSize: 17.0),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  if (kDebugMode) {
                    print("${widget.eat.eatName} sipariş verildi.");
                  }
                },
                child: Text("Sipariş Ver"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
