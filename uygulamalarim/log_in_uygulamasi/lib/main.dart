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
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: SingleChildScrollView( // Ekran daraldığında aşağı yukarı hareket ettirme özelliği aktif etme
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: ekranYuksekligi/20),
                child: SizedBox(
                    width: ekranYuksekligi/4,
                    child: Image.asset("images/mayinTarlasi.png")),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi/30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Kullanıcı Adı",
                    filled: true, // arka plan rengi izin
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(13.0)), // köşeleri yuvarlama
                    )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi/30),
                child: TextField(
                  obscureText: true, // girilen karakterleri gizleme
                  decoration: InputDecoration(
                      hintText: "Şifre",
                      filled: true, // arka plan rengi izin
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(13.0)), // köşeleri yuvarlama
                      )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi/30),
                child: SizedBox(
                  width: ekranGenisligi/1.2,
                  height: ekranYuksekligi/12,
                  child: ElevatedButton(
                      onPressed: (){
                        print("Giriş yapıldııı........");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        foregroundColor: Colors.white,
                      ),
                      child: Text("GİRİŞ YAP",
                        style: TextStyle(
                          fontSize: ekranYuksekligi/30,
                        )
                      ),
                  ),
                ),
              ),
              GestureDetector( // Buton tıklama özelliği widget aktif etme
                onTap: (){ // Tıklama özelliği
                  print("Yardım istendi...");
                },
                child: Text("Yardım",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: ekranYuksekligi/30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
