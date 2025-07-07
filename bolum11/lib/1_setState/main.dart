import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', // Görev Yöneticisinde gözüken kısım
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const AnaSayfa(title: 'Yeni Başlık'),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key, required this.title});

  final String title;

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Yeni Başlık"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    count += 1;
                  });
                },
                child: Text("Tıkla"),
            ),
            Text("Sonuç: $count"),
          ],
        ),
      ),
    );
  }
}

/*
State	Yapısı
 • Eğer	ara	yüzde	değişiklik	yapacak
değişken	oluşturacaksanız	kullanılır.

 • setState()	metodu	değişkene	state
özelliği	katmaktadır.

 • setState()	metodu	ile	değişken	değeri	kodlama	içinde	değiştiği	anda	ilişkili
olduğu	bütün	kodlamalarda	anlık	olarak	değişir.

 • setState() metodu	StatefulWidget
özelliği	olan	sınıflar	içinde	olabilir.
 */
