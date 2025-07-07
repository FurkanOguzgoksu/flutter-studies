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
      home: myHomePage(),
    );
  }
}

class myHomePage extends StatefulWidget {
  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  bool control = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Kodlama Teknikleri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            (() {
              if (control) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.done_all), Text("Doğru")],
                );
              } else {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.cancel_outlined), Text("Yanlış")],
                );
              }
            }()),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  control = true;
                });
              },
              child: Text("Durum 1"),
            ),
            ElevatedButton(
              onPressed: () {
                control = false;
              },
              child: Text("Durum 1"),
            ),
          ],
        ),
      ),
    );
  }
}

/*
Visibility	:	Görünür	– Görünmez	Yapma

Ternary	Koşul	Kullanma
 • koşul	? true	olma	durumu	: false	olma	durumu
• if	koşulu	yerine	widget özelliklerini	ternary koşul	ile	kontrol edebiliriz.
 • Örn	:	Text’in	içindeki	yazıyı	,	boyutu	vb	özellikleri	değiştirebiliriz.

Kodlama	Alanı	Açabiliriz
 • Detaylı	bir	kodlama	yapmak	istiyorsak	kullanılır
 [ ((){

 }()),
 ]
 */
