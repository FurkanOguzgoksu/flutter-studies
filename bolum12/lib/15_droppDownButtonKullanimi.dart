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
  var countryList = <String>[];
  String selectedCountry = "Türkiye";

  @override
  void initState() {
    super.initState();
    countryList.addAll(["Türkiye", "İtalya", "Almanya", "Rusya", "Çin"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Dropdown Örneği"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: selectedCountry,
              items: countryList.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    "Ülke: $value",
                    style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                  ),
                );
              }).toList(),
              icon: Icon(Icons.arrow_drop_down),
              onChanged: (String? selectedValue) {
                setState(() {
                  selectedCountry = selectedValue!;
                });
              },
            ),
            Text("Seçilen Ülke: $selectedCountry"),
          ],
        ),
      ),
    );
  }
}
