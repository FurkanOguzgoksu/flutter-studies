import 'dart:io';

int maasHesapla(int gunSayisi){
  int calismaSaati = gunSayisi * 8;
  print("Çalıştığınız saat: $calismaSaati");
  int maas = 0;
  if(calismaSaati > 160){
    maas = 160 * 10 + (calismaSaati - 160) * 20;
  }else{
    maas = calismaSaati * 10;
  }
  return maas;
}

void main(){
  print("Çalıştığınız gün sayısını giriniz: ");
  int gun = int.parse(stdin.readLineSync()!);
  int maas = maasHesapla(gun);
  print("Maaşınız: $maas tl");
}