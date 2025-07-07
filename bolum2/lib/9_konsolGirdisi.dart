import 'dart:io';

void main(){
  print("Adınızı giriniz: ");
  String isim = stdin.readLineSync()!; // Kendi import ediyor.
  print("Adınız: $isim");

  print("Birinci sayıyı giriniz: ");
  int sayi1 = int.parse(stdin.readLineSync()!);
  print("Birinci girilen sayi: $sayi1");

  print("İkinci sayıyı giriniz: ");
  int sayi2 = int.parse(stdin.readLineSync()!);
  print("İkinci girilen sayi: $sayi2");

  print("İki sayinın toplamı: ${sayi1 + sayi2}");
}