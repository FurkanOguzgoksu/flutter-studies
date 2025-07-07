import 'package:bolum14/14_detaySayfasi.dart';
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
  var country = ["Çin","Abd","Türkiye","İtalya","Rusya","Kore"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(""),
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 1,
            ),
            itemCount: country.length,
            itemBuilder: (context,index){
              return GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => DetaySayfasi(ulkeAdi: country[index])));
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: (){
                              print("Text ile ${country[index]} seçildiiiii");
                            },
                            child: Text(country[index])),
                        Spacer(),
                        TextButton(
                            onPressed: (){

                            },
                            child: Text("Ülke Seç",style: TextStyle(color: Colors.amber),),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
        )
    );
  }
}
