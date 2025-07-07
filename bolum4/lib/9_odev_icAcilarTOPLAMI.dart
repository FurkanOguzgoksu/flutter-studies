import 'dart:io';

int icAcilarToplami(int kenarSayisi){
  int toplam = (kenarSayisi - 2) * 180;
  return toplam;
}

void main(){
  print("Kenar sayisi giriniz: ");
  int kenarSayisi = int.parse(stdin.readLineSync()!);
  int sonuc = icAcilarToplami(kenarSayisi);
  print("Girilen kenar sayısına bağlı olarak iç açılar toplamı: $sonuc");
}