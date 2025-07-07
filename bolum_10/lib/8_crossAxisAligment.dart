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
        useMaterial3: true,
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.end, // tüm olsaılıkları aşağıya not aldım....
        children: [
          Container(width: 200, height: 200, color: Colors.green,),
          Container(width: 100, height: 100, color: Colors.blue,),
          Container(width: 25, height: 25, color: Colors.red,),
        ],
      ),
    );
  }
}
/*
CrossAxisAlignment.start
Row’da: Tüm çocukları üst kenara yaslar.
Column’da: Tüm çocukları sol kenara yaslar.
Ne zaman kullanılır? Başlangıç çizgisine (üst/sol) sabitlenmiş yerleşim istediğinizde.

CrossAxisAlignment.center
Row’da: Çocukları dikey eksende ortalar (üst ve alt arasında eşit boşluk bırakır).
Column’da: Çocukları yatay eksende ortalar (sol ve sağ arasında eşit boşluk bırakır).
Ne zaman kullanılır? Ekranın tam ortasında veya parent widget’ın ortasında hizalamak istediğinizde.

CrossAxisAlignment.end
Row’da: Çocukları alt kenara yaslar.
Column’da: Çocukları sağ kenara yaslar.
Ne zaman kullanılır? Bitiş çizgisine (alt/sağ) sabitlenmiş bir düzen istediğinizde.

CrossAxisAlignment.stretch
Row’da: Çocukların yüksekliklerini, parent’ın izin verdiği maksimum yüksekliğe kadar esnetir.
Column’da: Çocukların genişliklerini, parent’ın izin verdiği maksimum genişliğe kadar esnetir.
Ne zaman kullanılır? Çocuk widget’ın cross-axis boyunca tüm alanı kaplamasını, içerik boyutundan bağımsız olarak gerilmesini istediğinizde.
 */