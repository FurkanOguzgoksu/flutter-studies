import 'dart:io';

int faktoriyelHesapla(int sayi){
  int sonuc = 1;
  for(int i=sayi; i>1; i--){
    sonuc *= i;
  }
  return sonuc;
}

void main(){
  print("Faktöriyeli hesaplanacak sayıyı giriniz: ");
  int sayi = int.parse(stdin.readLineSync()!);

  int sonuc = faktoriyelHesapla(sayi);
  print("Faktoriyel hesabı sonucu: $sonuc");
}