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
      home: const MyHomePage(title: 'İlham Ver'),
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
    double ekranGenisligi = ekranBilgisi.size.width;
    double ekranYuksekligi = ekranBilgisi.size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: ekranYuksekligi/100, bottom: ekranYuksekligi/100),
            child: SizedBox(
                width: ekranGenisligi/10,
                // sadece genislik veya yüksekliği ayarlayarak resmi boyutlandırabiliriz
                // Çünkü resim orijinalliğini bozmuyor. Kendini koruyor..
                child: Image.asset("images/pp.jpg")
            ),
          ),
          Text("Furkan Oğuzgöksu",
            style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
              fontSize: ekranGenisligi/25,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(left: ekranGenisligi/20, right: ekranGenisligi/20),
            child: Text("Teknolojinin hızla değiştiği bu çağda, "
                "kendimi sürekli güncellemeye ve sektörün "
                "önde gelen gelişmelerini yakından takip etmek istiyorum. ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom:ekranYuksekligi/100, top:ekranYuksekligi/100),
            child: SizedBox(
              width: ekranGenisligi/2,
              height: ekranYuksekligi/15,
              child: ElevatedButton(
                onPressed: (){
                  print("İlham verildi....");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.yellow,
                ),
                child: Text(
                   "İlham Ver",
                    style: TextStyle(
                        fontSize: ekranGenisligi/25,
                        ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
