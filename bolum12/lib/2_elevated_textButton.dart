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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Butonlarrr"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text("ElevatedButton", style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shadowColor: Colors.black, // gölge rengi
                elevation: 10, // gölge derinliği
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)), // radius --> çevre, circular --> dairesel
                  side: BorderSide(color: Colors.black), // side -> kenar; Çerçeve rengi
                ),
              ),
              onPressed: (){
                print("Elevated Butona tıklandı....");
              },
            ),
            TextButton(
              child: Text("TextButton", style: TextStyle(color: Colors.white)),
              style: TextButton.styleFrom(
                backgroundColor: Colors.yellow,
                shadowColor: Colors.black, // gölge rengi
                elevation: 10, // gölge derinliği
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)), // radius --> çevre, circular --> dairesel
                  side: BorderSide(color: Colors.black), // edge -> kenar
                ),
              ),
              onPressed: (){
                print("Text Buttona tıklandı...");
              },
            ),
          ],
        ),
      ),

    );
  }
}
