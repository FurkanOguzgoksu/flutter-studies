import 'package:bolum4/19_composition/Adres.dart';
import 'package:bolum4/19_composition/Musteriler.dart';

void main(){
  var adresim = Adres("Konya", "Selçuklu");
  var musterim = Musteriler("Ali", 19, adresim);

  print("Müsteri Ad: ${musterim.ad}");
  print("Müsteri yaşı: ${musterim.yas}");
  print("Müsteri ili: ${musterim.adres.il}");
  print("Müsteri ilçe: ${musterim.adres.ilce}");
}