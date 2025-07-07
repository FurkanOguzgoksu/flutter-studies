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
  Future<int> faktoriyelHesaplama(int sayi) async{
    int result = 1;
    for(int i=2 ; i<= sayi; i++){
      result *= i;
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Future Builder"),
      ),
      body: Center(
        child: FutureBuilder<int>(
          future: faktoriyelHesaplama(5),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text("Hata sonucu: ${snapshot.error}");
            } else if (snapshot.hasData) {
              return Text("Faktöriyel: ${snapshot.data}");
            } else {
              return const Text("Gösterilecek veri yok");
            }
          }
        ),
      ),
    );
  }
}
