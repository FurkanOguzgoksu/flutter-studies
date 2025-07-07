import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        backgroundColor: Colors.red,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("App Bar Özelliştirme",style: TextStyle(fontSize: 24.0, color: Colors.white),),
            Text("Alt başlık:",style: TextStyle(fontSize: 12.0, color: Colors.white),)
          ],
        ),
        centerTitle: false,
        leading: IconButton(
            onPressed: (){
              print("Menu Icona tıklandı");
            },
            tooltip: "Menu Icon",
            icon: Icon(Icons.dehaze)
        ),
        actions: [
          ElevatedButton(
              onPressed: (){
                print("Çıkışa basıldı");
                SystemNavigator.pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
              ),
              child: Text("Çıkış",style: TextStyle(color: Colors.white),)
          ),
          IconButton(
              onPressed: (){
                print("Bilgiye tıklandı");
              },
              tooltip: "Bilgi",
              icon: Icon(Icons.info_outline),
          ),
          IconButton(
            onPressed: (){
              print("Popup Menüye tıklandı");
            },
            tooltip: "Popup Menu",
            icon: Icon(Icons.more_vert),
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
