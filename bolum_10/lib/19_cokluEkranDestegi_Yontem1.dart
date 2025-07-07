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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints){
            if(constraints.maxWidth < 600){
              return telefonTasarim();
            }else{
              return tabletTasarim();
            }
          }
      ),
    );
  }
}

class telefonTasarim extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              width: 200,
              height: 100,
              child: Image.asset("18_resimler/resim.jpg")
          ),
          Text("Resim", style: TextStyle(fontSize: 15.0),),
        ],
      ),
    );
  }
}

class tabletTasarim extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              width: 350,
              height: 250,
              child: Image.asset("18_resimler/resim.jpg")
          ),
        Text("Resim",style: TextStyle(fontSize: 50.0),),
        ],
      ),
    );
  }
}

/*
Her	Ekrana	Göre	Tasarım	Yapmak için;
Body kısmında

LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints){
            if(constraints.maxWidth < 600){
              return telefonTasarim();
            }else{
              return tabletTasarim();
            }
          }
      ),
bu kod bloğuı tarzı olması lazım

--> Tasarımların	ekrana	göre	açılmasını	sağlamalıyız
--> Tasarım	geçişi	otomatik	gerçekleşmektedir
 */
