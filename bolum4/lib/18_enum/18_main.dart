import 'package:bolum4/18_enum/18_enum.dart';

void ucretAl(KonserveBoyut boyut){
  switch(boyut){
    case KonserveBoyut.Kucuk:{
      print("Ucret: ${20.30}");
    }
    break;

    case KonserveBoyut.Orta:{
      print("Ucret: ${30.30}");
    }
    break;

    case KonserveBoyut.Buyuk:{
      print("Ucret: ${40.30}");
    }
    break;
  }
}

void main(){
  ucretAl(KonserveBoyut.Kucuk);
  ucretAl(KonserveBoyut.Orta);
  ucretAl(KonserveBoyut.Buyuk);
}