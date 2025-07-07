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
  Future<List<String>> verileriGetir() async{
    var ulkeListesi = ["Türkiye","Almanya","İtalya","Rusya","Çin"];
    return ulkeListesi;
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(""),
      ),
      body: FutureBuilder<List<String>>(
          future: verileriGetir(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              var ulkeList = snapshot.data;
              return ListView.builder(
                itemCount: ulkeList!.length,
                itemBuilder: (context,index){
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: screenHeight/ulkeList.length,
                        child: Row(
                          children: [
                            Text(ulkeList[index]),
                          ],
                        ),
                      ),
                    ),
                  );
                }
              );
            }else{
              return Center();
            }
          }
      )
    );
  }
}
