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
  var formKey = GlobalKey<FormState>();
  var tfKullaniciAdi = TextEditingController();
  var tfSifre = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Form Kullanımı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: tfKullaniciAdi,
                        decoration: InputDecoration(hintText: "Kullanıcı Adı:",),
                        validator: (tfInput){
                          if(tfInput!.isEmpty){
                            return "Kullanıcı adı giriniz";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: tfSifre,
                        obscureText: false,
                        decoration: InputDecoration(hintText: "Şifre:"),
                        validator: (tfSifre){
                          if(tfSifre!.isEmpty){
                            return "Şifre giriniz";
                          } else if(tfSifre.length < 5){
                            return "Lütfen en az 5 karakter giriniz";
                          }
                          return null;
                        },
                      ),
                      ElevatedButton(
                        child: Text("Giriş"),
                        onPressed: (){
                          bool kontrolSonucu = formKey.currentState!.validate();
                          if(kontrolSonucu){
                            print("Kullanıcı Adı: ${tfKullaniciAdi.text} - Şifre: ${tfSifre.text}");
                          }
                        },
                      )
                    ],
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
