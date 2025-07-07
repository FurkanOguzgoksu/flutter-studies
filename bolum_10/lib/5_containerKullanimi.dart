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
      // ctrl + f --> ile //.* ile yorum satırlarını sill...
      body: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(15.0), // Kenar boşluk
            // const EdgeInsets.only(top: 15.0, left: 5.0) --> sağdan ve soldan farklı değerde boşluk verilebilir
            width: 200,
            height: 200,
            child: Text("Hosgeldiniz"),
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(
                // Dış çerçeve yani kenar çerçevesi
                color: Colors.green,
                width: 5.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ), // Kenarlar 15 birim yuvarlatılmış.
            ),
          ),
        ],
      ),
    );
  }
}
