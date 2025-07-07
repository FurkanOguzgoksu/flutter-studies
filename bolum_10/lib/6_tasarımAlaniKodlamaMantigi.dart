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
      debugShowCheckedModeBanner:
          false, // sağ köşedeki debug kısmını kaldırır...
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        // ortalayıcı widget
        child: Row(
          // yatay dizilim
          children: <Widget>[
            Container(
              // kutu
              color: Colors.red,
              width: 300,
              height: 300,
              child: Center(
                // kutunun içeriğini ortalayan widget
                child: Text("Merhaba"), // yazı
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Row ve column altında birden falza widget eklenecekse children ile eklenir
/*
      --> Her şey bir widget'tır
      --> Kodlama iç içe gider
      -->  child ve children Farkı

      ✅ child: Widget
      Eğer bir widget yalnızca tek bir alt öğe alıyorsa child kullanılır.

      Center(
        child: Text("Merhaba")
      )
      ✅ children: <Widget>[]
      Eğer widget birden fazla alt öğe alacaksa, children kullanılır.
      children, bir liste (dizi) olduğu için köşeli parantez [] ile yazılır.
      Row, Column, Stack gibi widget'lar children ister.

      Row(
        children: [
          Text("Merhaba"),
          Icon(Icons.star),
        ]
      )
❗ children: altında tekrar child: yazılmaz, çünkü zaten children bir liste (dizi) olduğu
      için her öğe zaten "child" gibi değerlendirilir.
*/