import 'package:bolum4/25_polymorphismVeTipDonusum/Iscii.dart';
import 'package:bolum4/25_polymorphismVeTipDonusum/Ogretmenn.dart';
import 'package:bolum4/25_polymorphismVeTipDonusum/Personell.dart';

class Mudurr extends Personell {
  void iseAl(Personell p) {
    p.iseAlindi();
  }

  void terfiEttir(Personell p) {
    if(p is Ogretmenn){
      p.maasArttir();
    }else if(p is Iscii){
      Personell perso = p; // Upcasting

      p = Ogretmenn();
      Ogretmenn ogretmen = p as Ogretmenn; // Downcasting
      print("İsçi sınıfından ogretmen üretildi:");
      ogretmen.maasArttir();
    }
  }
}
