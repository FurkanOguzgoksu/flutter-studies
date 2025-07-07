import 'package:bolum4/24_polymorphism/Isci.dart';
import 'package:bolum4/24_polymorphism/Mudur.dart';
import 'package:bolum4/24_polymorphism/Ogretmen.dart';
import 'package:bolum4/24_polymorphism/Personel.dart';

void main(){
  var mudur = Mudur();

  Personel ogretmen = Ogretmen();
  Personel isci = Isci();

  mudur.iseAl(ogretmen);
  mudur.iseAl(isci);
}