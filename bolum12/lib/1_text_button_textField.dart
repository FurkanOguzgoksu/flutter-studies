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

  var tfController = TextEditingController();
  String? inputData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Text-Button-TextField"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: tfController,
                obscureText: true,
                textAlign: TextAlign.center,
                maxLength: 10,
                decoration: InputDecoration(
                  hintText: "Yaziniz",
                  labelText: "Email:",
                  labelStyle: TextStyle(
                    color: Colors.indigo,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  filled: true,
                  fillColor: Colors.yellow,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  inputData = tfController.text;
                });
              },
              child: Text("Veriyi al",
                style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
                ),
              ),
            ),
            Text("Alınan Veri: $inputData",
              style: TextStyle(
                color: Colors.red,
                backgroundColor: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
