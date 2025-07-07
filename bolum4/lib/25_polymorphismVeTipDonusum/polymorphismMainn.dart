import 'package:bolum4/25_polymorphismVeTipDonusum/Iscii.dart';
import 'package:bolum4/25_polymorphismVeTipDonusum/Mudurr.dart';
import 'package:bolum4/25_polymorphismVeTipDonusum/Ogretmenn.dart';
import 'package:bolum4/25_polymorphismVeTipDonusum/Personell.dart';

void main() {
  var mudur = Mudurr();

  Personell ogretmen = Ogretmenn();
  Personell isci = Iscii();

  mudur.iseAl(ogretmen); // Output: Personel Mutlu
  mudur.iseAl(isci);     // Output: Personel Mutlu

  mudur.terfiEttir(ogretmen); // Output: Maaş arttı
  mudur.terfiEttir(isci);     // Hiçbir şey yapmaz (çünkü isci Ogretmen değil)
}
