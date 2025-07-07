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
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(""),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
              visible: value,
              child: LinearProgressIndicator(

              ),
            ),
            Container(height: 100,),
            Visibility(
              visible: value,
              child: CircularProgressIndicator(

              ),
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    value = true;
                  });
                },
                child: Text("Başla"),
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  value = false;
                });
              },
              child: Text("Dur"),
            )
          ],
        ),
      ),
    );
  }
}
