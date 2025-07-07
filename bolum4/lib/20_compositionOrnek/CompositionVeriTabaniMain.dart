import 'package:bolum4/20_compositionOrnek/Filmler.dart';
import 'package:bolum4/20_compositionOrnek/Kategoriler.dart';
import 'package:bolum4/20_compositionOrnek/Yonetmenler.dart';

void main(){
  var kategori1 = Kategoriler(1, "Dram");
  var kategori2 = Kategoriler(2, "Komedi");
  
  var yonetmen1 = Yonetmenler(1, "Nuri Bilge Ceylan");
  var yonetmen2 = Yonetmenler(2, "Quentin Tatantino");
  
  var film1 = Filmler(1, "Dijango", 2013, kategori1, yonetmen1);
  print("Film id: ${film1.film_id}");
  print("Film adı: ${film1.film_ad}");
  print("Film yılı: ${film1.film_yili}");
  print("Film kategori: ${film1.kategorim.kategori_ad}");
  print("Film yönetmnei: ${film1.yonetmenim.yonetmen_ad}");
}