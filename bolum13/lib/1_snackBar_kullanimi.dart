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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Snack Bar Kullanımı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Merhaba Dünya!"),
                    backgroundColor: Colors.red,
                  ),
                );
              },
              child: Text("Varsayılanı Göster"),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Silmek için Evet'e basın!"),
                    backgroundColor: Colors.green,
                    action: SnackBarAction(
                      label: "Evet",
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Silindi!"),
                            backgroundColor: Colors.blue,
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
              child: Text("Snack Bar Göster"),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "İnternet Bağlantısı Yok!",
                      style: TextStyle(color: Colors.orange),
                    ),
                    backgroundColor: Colors.red,
                    duration: Duration(seconds: 5),
                    action: SnackBarAction(
                      label: "Tekrar Dene",
                      textColor: Colors.white,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Silindi!"),
                            backgroundColor: Colors.blue,
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
              child: Text("Snack Bar Özeli Göster"),
            ),
          ],
        ),
      ),
    );
  }
}
