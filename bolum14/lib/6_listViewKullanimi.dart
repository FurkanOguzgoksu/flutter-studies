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
        backgroundColor: Colors.red,
        title: Text(""),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.wb_sunny),
            title: Text("Güneş"),
            subtitle: Text("Güneş Alt Başlık"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              print("Güneeşe tıklandı");
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Yıldız"),
            subtitle: Text("Yıldız Alt Başlık"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              print("Yıldıza tıklandı");
            },
          ),
          GestureDetector(
            onTap: (){
              print("Card tıklandı");
            },
            child: SizedBox(
              height: 75,
              child: Card(
                child: Row(
                  children: [
                    Text("card Tasarım",style: TextStyle(color: Colors.green,),),
                    Spacer(),
                    Icon(Icons.more_vert)
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    print("Container tıklandı");
                  },
                  child: Container(
                    height: 50,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text("Merhaba",style: TextStyle(color: Colors.yellow),),
                  ),
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}
