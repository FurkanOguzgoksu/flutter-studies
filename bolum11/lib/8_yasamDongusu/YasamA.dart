import 'package:flutter/material.dart';

class YasamA extends StatefulWidget {


  @override
  State<YasamA> createState() => _YasamAState();
}

class _YasamAState extends State<YasamA> {

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("Yaşam A: deactivate() çalıştı");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("Yaşam A: dispose() çalıştı");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Yaşam A"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ],
        ),
      ),
    );
  }
}
