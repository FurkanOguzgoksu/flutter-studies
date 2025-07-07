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

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: ekranYuksekligi/100),
            child: SizedBox(
                width: ekranGenisligi/2,
                height: ekranYuksekligi/5,
                child: Image.asset("18_resimler/arsa.png")
            ),
          ),
          Container(width: ekranGenisligi, height: ekranYuksekligi/4,color: Colors.green,),
          Text("Hoşgeldiniz", style: TextStyle(fontSize: ekranGenisligi/10)),
        ],
      )
    );
  }
}

/*
Tasarımı	Ekrana	Göre Oranlama

--> Tasarımda	sabit	olarak	oluşturduğumuz	genişlik	,	yükseklik	,	boşluk
miktarı	gibi	sayıları	ekranın	boyutuna	oranlayarak	işlem	yapabiliriz.
--> Bu	şekilde	yapılan	oranlama	dinamik	olarak	boyutlama	sağlamaktadır
--> Oranlama	işlemi	için	ekran	bilgisini	MediaQuery	sınıfı	ile	alabiliriz.
--> Oranlama yaparken orijinal resim boyutunu bozmasını engellemektedir.
 */
