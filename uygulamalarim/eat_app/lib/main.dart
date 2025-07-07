import 'package:eat_app/detay_sayfasi.dart';
import 'package:eat_app/yemekler.dart';
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
      home: const MyHomePage(title: "Yemeklerr"),
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
  Future<List<Yemekler>> fetchEats() async {
    var eatList = <Yemekler>[];
    var eat1 = Yemekler(1, "Köfte", "kofte.png", 124.99);
    var eat2 = Yemekler(2, "Ayran", "ayran.png", 15.00);
    var eat3 = Yemekler(3, "Fanta", "fanta.png", 29.99);
    var eat4 = Yemekler(4, "Makarna", "makarna.png", 110.50);
    var eat5 = Yemekler(5, "Kadayıf", "kadayif.png", 69.99);
    var eat6 = Yemekler(6, "Baklava", "baklava.png", 89.99);

    eatList.add(eat1);
    eatList.add(eat2);
    eatList.add(eat3);
    eatList.add(eat4);
    eatList.add(eat5);
    eatList.add(eat6);

    return eatList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,

        title: Text(widget.title),
      ),
      body: FutureBuilder<List<Yemekler>>(
        future: fetchEats(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var eatList = snapshot.data;
            return ListView.builder(
              itemCount: eatList?.length,
              itemBuilder: (context, index) {
                var selectedEat = eatList![index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetaySayfasi(eat: selectedEat),
                      ),
                    );
                  },
                  child: Card(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: Image.asset("images/${selectedEat.eatImage!}"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              selectedEat.eatName!,
                              style: TextStyle(fontSize: 25.0),
                            ),
                            SizedBox(height: 40),
                            Text(
                              "${selectedEat.eatPrice} \u{20BA}",
                              style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.arrow_right, color: Colors.blueGrey),
                      ],
                    ),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("Hata: ${snapshot.error}"));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
