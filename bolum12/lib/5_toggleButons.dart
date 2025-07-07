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
  var toggleDurumlar = [false,true,false];
  int secilenToggleIndeks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(""),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ToggleButtons(
                children: [
                  Icon(Icons.looks_one_outlined),
                  Icon(Icons.looks_two_outlined),
                  Icon(Icons.looks_3_outlined),
                ],
                color: Colors.indigo,
                selectedColor: Colors.pink,
                borderColor: Colors.black,
                splashColor: Colors.black45,
                hoverColor: Colors.deepPurpleAccent,
                focusColor: Colors.blue,
                fillColor: Colors.yellow,
                isSelected: toggleDurumlar,
                onPressed: (int secilenIndex){
                  secilenToggleIndeks = secilenIndex;
                  print("${secilenIndex+1}. toggle seçildi..");

                  setState(() {
                    toggleDurumlar[secilenIndex] = !toggleDurumlar[secilenIndex];
                  });
                },
            ),
            ElevatedButton(
                onPressed: (){
                  print("En son ${secilenToggleIndeks+1}. toggle seçildi");
                },
                child: Text("Göster")
            ),
          ],
        ),
      ),
    );
  }
}
