import 'package:bolum4/2_otobus_class.dart';

void main(){
  var kamilkoc = Otobus();
  kamilkoc.kapasite = 50;
  kamilkoc.nereden = "Konya";
  kamilkoc.nereye = "Batman";
  kamilkoc.mevcutYolcu = 10;
  kamilkoc.bilgAl();

  kamilkoc.yolcuAl(20);
  kamilkoc.bilgAl();

  kamilkoc.yolcuIndir(15);
  kamilkoc.bilgAl();

  Otobus metro = Otobus();
  metro.kapasite = 10;
  metro.nereden = "Konya";
  metro.nereye = "Samsun";
  metro.mevcutYolcu = 2;
  metro.bilgAl();

  metro.yolcuAl(5);
  metro.bilgAl();

  metro.yolcuIndir(2);
  metro.bilgAl();
}