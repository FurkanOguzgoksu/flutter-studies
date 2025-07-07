import 'package:bolum4/25_polymorphismVeTipDonusum/Iscii.dart';
import 'package:bolum4/25_polymorphismVeTipDonusum/Mudurr.dart';
import 'package:bolum4/25_polymorphismVeTipDonusum/Ogretmenn.dart';
import 'package:bolum4/25_polymorphismVeTipDonusum/Personell.dart';

void main(){
  Personell ogretmen = Ogretmenn();
  Personell isci = Iscii();

  var mudur = Mudurr();
  mudur.terfiEttir(ogretmen);
  mudur.terfiEttir(isci);
}