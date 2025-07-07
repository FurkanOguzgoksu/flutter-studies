import 'package:bolum4/1_araba_class.dart';

void main(){
  var bmw = Araba();
  bmw.renk = "kırmızı";
  bmw.hiz = 0;
  bmw.calisiyorMu = false;
  bmw.bilgiAl(); // Tek tek print ile değerler alınabilir...

  bmw.calistir();
  bmw.bilgiAl();

  for(int i=0 ; i<5 ; i++){
    bmw.hizlan(30);
    bmw.bilgiAl();
  }

  for(int i=0 ; i<15 ; i++){
    bmw.yavasla(10);
    bmw.bilgiAl();
  }

  bmw.durdur();
}