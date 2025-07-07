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
      home: MyHomePage(title: ''),
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
  var tfControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Alert Dialog Kullanımı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Uyarı"),
                      content: Text("Bu bir uyarı mesajıdır."),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Tamam"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Alert Dialog Göster"),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Onay"),
                      content: Text("Silmek istediğinize emin misiniz?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            print("Silme işlemi iptal edildi...");
                            Navigator.of(context).pop();
                          },
                          child: Text("Hayır"),
                        ),
                        TextButton(
                          onPressed: () {
                            print("Silme işlemi başladı");
                            // Silme işlemi burada yapılabilir
                            Navigator.of(context).pop();
                          },
                          child: Text("Evet"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Onay Dialog Göster"),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Veri al"),
                      backgroundColor: Colors.deepPurple,
                      content: SizedBox(
                        height: 100,
                        child: Column(
                          children: [
                            TextField(
                              controller: tfControl,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                labelText: "Verii",
                                labelStyle: TextStyle(
                                  color: Colors.amberAccent,
                                )
                              ),
                            )
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("İptal", style: TextStyle(color: Colors.white),),
                      ),
                        TextButton(
                          onPressed: () {
                            print("Okunan veri: ${tfControl.text}");
                            tfControl.text = "";
                            Navigator.of(context).pop();
                          },
                          child: Text("Veri oku", style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    );
                  },
                );
              },
            child: Text("Özel Alert Dialog Göster"),
          ),
          ],
        ),
      ),
    );
  }
}
