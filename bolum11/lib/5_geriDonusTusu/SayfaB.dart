import 'package:bolum11/5_geriDonusTusu/5_geriDonus.dart';
import 'package:flutter/material.dart';

class SayfaB extends StatefulWidget {

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  Future<bool> geriDonusTusu(BuildContext context) async{
    print("Geri tuşuna tıklandı.......");
    return false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayfa B"),
        leading: IconButton(
            onPressed: (){
              print("AppBar geri tuşuna basildi");
            }, 
            icon: Icon(Icons.arrow_back),
        ),
      ),
      body: WillPopScope(
        onWillPop: () => geriDonusTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("Geldiği Sayfaya Dön"),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).popUntil((predicate) => predicate.isFirst);
                },
                child: Text("Ana Sayfaya Dön"),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AnaSayfa(title: "Yeni Baslik")));
                },
                child: Text("Ana Sayfaya Geçiş Yap"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
