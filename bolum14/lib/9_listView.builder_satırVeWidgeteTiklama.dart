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
        body: ListView.builder(
          itemCount: country.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                print("${country[index]} seçildi...");
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
                        ElevatedButton(
                            onPressed: (){
                              print("Buton ile ${country[index]} seçildi.");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ) ,
                            child: Text("Ülke seç"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        )
    );
  }
}
