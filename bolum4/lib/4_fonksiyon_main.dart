import 'package:bolum4/4_fonksiyon_class.dart';

void main(){
  var m = Matematik();
  m.topla(40, 70);
  print("Çıkarma: ${m.cikar(40.0, 45.5)}");
  m.carp(9, 5, "Ahmet");
  print(m.bol(5, 4));
}