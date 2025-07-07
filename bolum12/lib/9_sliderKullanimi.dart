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
  double progress = 50.0;
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
            Text("Sonuç: ${progress.toInt()}"),
            Slider(
              max: 100,
              min: 0,
              activeColor: Colors.red,
              inactiveColor: Colors.yellow,
              value: progress,
              onChanged: (double i){
              setState(() {
                progress = i;
              });
            },
            ),
            ElevatedButton(
                onPressed: (){
                  print("Slider ilerleme: ${progress.toInt()}");
                },
                child: Text("Göster"),
            )
          ],
        ),
      ),
    );
  }
}
