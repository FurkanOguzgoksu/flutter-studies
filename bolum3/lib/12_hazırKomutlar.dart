import 'dart:math';

void main(){
  // Random sayı üretme yöntemi...
  int min = 5;
  int max = 10;
  var randomSayi = Random();
  int rastgeleSayi = min + randomSayi.nextInt(max - min + 1); // 5  ile 10 arasında
  print(rastgeleSayi);

  double x = 6.5;
  int sayi1 = x.ceil(); // Üstte yuvarlar...
  print("Sayı-1: $sayi1"); // veya --> print("Sayı-1: ${x.ceil()}");
  int sayi2 = x.floor(); // Aşağıya yuvarlar...
  print("Sayı-2: $sayi2"); // veya --> print("Sayı-2: ${x.floor()}");

  double karekok = sqrt(x); // Karekökünü alır...
  print("Karekok islemi sonucu: $karekok");

  int y = -10;
  int mutlak = y.abs(); // Mutlak işlemi...
  print("$y sayısının mutlak alma işlemi sonucu: $mutlak");

  num usAl = pow(2,3); // Üs alma işlemi...
  print("Üs alma işlemi sonucu: $usAl");
}