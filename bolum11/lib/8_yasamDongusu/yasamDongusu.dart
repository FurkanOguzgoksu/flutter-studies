import 'package:bolum11/8_yasamDongusu/YasamA.dart';
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
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> with WidgetsBindingObserver{
  @override
  void initState() {
    super.initState();
    print("initState() metodu çalıştı");
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose() metodu çalıştı");
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if(state == AppLifecycleState.inactive){
      print("inactive() çalıştı");
    }
    if(state == AppLifecycleState.paused){
      print("paused() çalıştı");
    }
    if(state == AppLifecycleState.resumed){
      print("resumed() çalıştı");
    }
    if(state == AppLifecycleState.detached){
      print("detached() çalıştı");
    }
  }


  @override
  Widget build(BuildContext context) {
    print("build() metodu çalıştı");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Yaşam Döngüsü"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => YasamA()));
                },
                child: Text("Tıkla"),
            )
          ],
        ),
      ),
    );
  }
}
