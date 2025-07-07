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
  int radioValue = 0;
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
            RadioListTile(
              title: Text("Galatasaray"),
              value: 1,
              groupValue: radioValue,
              activeColor: Colors.red,
              onChanged: (int? value){
                setState(() {
                  radioValue = value ?? 0;
                });
                print("GalataSaray seçildi...");
              }),
            RadioListTile(
                title: Text("Fenerbahçe"),
                value: 2,
                groupValue: radioValue,
                activeColor: Colors.blue,
                onChanged: (int? value){
                  setState(() {
                    radioValue = value ?? 0;
                  });
                  print("Fenerbahçe seçildi...");
                }),
            ElevatedButton(
              child: Text("Göster"),
              onPressed: (){
                if(radioValue == 1){
                  print("Seçili takım: Galatasaray(1)");
                }else if(radioValue == 2){
                  print("Seçili takım: Fenerbahçe(2)");
                }

              },)
          ],
        ),
      ),
    );
  }
}
