import 'package:bolum4/21_kalitim/Araba.dart';
import 'package:bolum4/21_kalitim/Arac.dart';
import 'package:bolum4/21_kalitim/Nissan.dart';

void main() {
  var araba = Araba("Sedan", "Kırmızı", "Otomatik");
  print(araba.kasaTipi);
  print(araba.renk);
  print(araba.vites);

  var nissanim = Nissan("Micra", "Sedan", "Beyaz", "Manuel");
  print(nissanim.model);
  print(nissanim.kasaTipi);
  print(nissanim.renk);
  print(nissanim.vites);

  var aracim = Arac("Mavi", "Otomatik");
  print(aracim.renk);
  print(aracim.vites);
}
