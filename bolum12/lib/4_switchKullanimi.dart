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
  bool switchControl = false; 

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
            Switch(
              activeColor: Colors.lightGreenAccent ,
              activeTrackColor: Colors.green,
              inactiveThumbColor: Colors.black45,
              inactiveTrackColor: Colors.black,
                value: switchControl,
                onChanged: (deger){
                  setState(() {
                    switchControl = deger;
                  });
                  print("Switch:$deger");
                }
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    print("Switch Durum: $switchControl");
                  });
                },
                child: Text("Göster"),
            ),
          ],
        ),
      ),
    );
  }
}
