import 'package:flutter/material.dart';

class Sayfaa1 extends StatefulWidget {
  const Sayfaa1({super.key});

  @override
  State<Sayfaa1> createState() => _Sayfaa1State();
}

class _Sayfaa1State extends State<Sayfaa1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Sayfaa1" ,style: TextStyle(color: Colors.black54,fontSize: 30.0),),
    );
  }
}
