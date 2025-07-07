import 'dart:io';

void main(){
  while(true){
    print("Sayi giriniz:");
    int sayi = int.parse(stdin.readLineSync()!);

    if(sayi % 2 == 0){
      print("Sayı çifttir");
    }else{
      print("Sayı tektir");
    }

    print("Çıkmak için -1'i - Devam etmek için diğer sayılari giriniz");
    int secim = int.parse(stdin.readLineSync()!);

    if(secim == -1){
      print("Çıkış yapıldı...");
      break;
    }else{
      print("Programa devam ediliyor...");
    }
  }
}