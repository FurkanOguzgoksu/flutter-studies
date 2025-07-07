import 'dart:io';

void main(){
  print("Dikdörtgenin Alanı (1)");
  print("Çamberin Alanı (2)");

  int secim = int.parse(stdin.readLineSync()!);
  print("Seçiminiz: $secim");

  if(secim == 1){
    print("Kısa kenar giriniz:");
    int kisaKenar = int.parse(stdin.readLineSync()!);
    print("Uzun kenar giriniz:");
    int uzunKenar = int.parse(stdin.readLineSync()!);
    print("Dikdörtgenin Alanı: ${kisaKenar * uzunKenar}");
  }else if(secim == 2){
    final pi = 3.14;
    print("Yaricap giriniz:");
    int yaricap = int.parse(stdin.readLineSync()!);
    print("Çemberin Alanı: ${pi * yaricap * yaricap}");
  }
}