import 'dart:io';

void hesapla(int kenar1, kenar2){
  print("Dikdörtgenin çevresi: ${(kenar1 + kenar2) * 2}");
  print("Dikdörtgenin alanı: ${(kenar1 * kenar2)}");
}

void main(){
  print("Dikdörtgenin kısa kenarını giriniz: ");
  int kisaKenar = int.parse(stdin.readLineSync()!);
  print("Dikdörtgenin uzun kenarını giriniz: ");
  int uzunKenar = int.parse(stdin.readLineSync()!);

  hesapla(kisaKenar, uzunKenar);
}