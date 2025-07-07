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
  bool aramaYapiliyorMU = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: aramaYapiliyorMU ?
          TextField(
            decoration: InputDecoration(
              hintText: "Arama için birşeyler giriniz...",
            ),
            onChanged: (aramaSonucu){
              print("Arama sonucu: $aramaSonucu");
            },
          ) :
          Text("App Bar Arama"),
        actions: [
          aramaYapiliyorMU ?
          IconButton(
              onPressed: (){
                aramaYapiliyorMU = false;
              },
              icon: Icon(Icons.cancel_outlined),
          ) :
          IconButton(
              onPressed: (){
                setState(() {
                  aramaYapiliyorMU = true;
                });
              },
              icon: Icon(Icons.search)
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
