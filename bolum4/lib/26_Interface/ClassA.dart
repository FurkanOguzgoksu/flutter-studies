import 'package:bolum4/26_Interface/Interface1.dart';

class ClassA implements Interface1{
  @override
  late int degisken = 77;

  @override
  void metod1() {
    // TODO: implement metod1
    print("Interface Merhaba");
  }

  @override
  String metod2() {
    // TODO: implement metod2
    return "Interface1 çalışması";
  }

}