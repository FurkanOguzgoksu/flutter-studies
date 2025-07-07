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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool durum1 = false;
  bool durum2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(""),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              title: Text("Kotlin"),
              value: durum1,
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.blue,
              activeColor: Colors.yellow,
              onChanged: (bool? veri){
                print("Kotlin seçildi: $veri");
                setState(() {
                  durum1 = veri ?? false ;
                });
              },
            ),
            CheckboxListTile(
              title: Text("Dart"),
              value: durum2,
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.blue,
              activeColor: Colors.yellow,
              onChanged: (bool? veri){
                print("Dart seçildi: $veri");
                setState(() {
                  durum2 = veri ?? false;
                });
              },
            ),
            ElevatedButton(
                child: Text("Göster"),
                onPressed: (){
                  print("Kotlin durum: $durum1");
                  print("Dart durum: $durum2");
                  setState(() {
                    print("En son durumlar $durum1 , $durum2");
                  });
                },
            ),
          ],
        ),
      ),
    );
  }
}
