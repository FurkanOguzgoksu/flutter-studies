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
  var tfTarih = TextEditingController();
  var tfSaat = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Saat Seçici"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: tfSaat,
              readOnly: true, // elle yazmayı engellemek için
              decoration: const InputDecoration(
                hintText: "Saat giriniz...",
              ),
              onTap: () {
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                ).then((TimeOfDay? selectedTime) {
                  if (selectedTime != null) {
                    setState(() {
                      int saat = selectedTime.hour;
                      int dakika = selectedTime.minute;
                      tfSaat.text = "$saat:$dakika";
                    });
                  }
                });
              },
            ),
            TextField(
              controller: tfTarih,
              readOnly: true,
              decoration: const InputDecoration(
                hintText: "Tarih giriniz...",
              ),
              onTap: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2050),
                ).then((DateTime? selectedDate) {
                  if (selectedDate != null) {
                    setState(() {
                      tfTarih.text = "${selectedDate.day}.${selectedDate.month}.${selectedDate.year}";
                    });
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
