import 'package:bolum14/10_detaySayfa.dart';
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
    double screenHeight = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(""),
        ),
        body: SizedBox(
          height: screenHeight/10,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: country.length,
            itemBuilder: (context,index){
              return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(ulkeAdi: country[index])));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: screenHeight/country.length,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: (){
                                print("Text ile ${country[index]} seçildi...");
                              },
                              child: Text(country[index])
                          ),
                          Spacer(),
                          PopupMenuButton(
                            child: Icon(Icons.more_vert_outlined),
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                child: Text("Kes"),
                                value: 1,
                              ),
                              PopupMenuItem(
                                child: Text("Kopyala"),
                                value: 2,
                              ),
                            ],
                            onSelected: (menuItemValue){
                              if(menuItemValue == 1){
                                print("Kesme işlemi ${country[index]} yapıldı..");
                              }else if(menuItemValue == 2){
                                print("Kopyalama işlemi ${country[index]} yapıldı..");
                              }
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        )
    );
  }
}
