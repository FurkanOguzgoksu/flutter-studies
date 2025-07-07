import 'dart:io';

void main(){
  print("Toplama (1)");
  print("Çıkarma (2)");
  print("Çarpma (3)");
  print("Bölme (4)");
  
  int tercih = int.parse(stdin.readLineSync()!);
  print("Tercihiniz: $tercih");
  
  print("Birinci sayiyi giriniz:");
  int sayi1 = int.parse(stdin.readLineSync()!);

  print("İkinci sayiyi giriniz:");
  int sayi2 = int.parse(stdin.readLineSync()!);

  if(tercih == 1){
    print("Toplama: ${sayi1 + sayi2}");
  }else if(tercih == 2){
    print("Çıkarma: ${sayi1 - sayi2}");
  }else if(tercih == 3){
    print("Çarpma: ${sayi1 * sayi2}");
  }else if(tercih == 4){
    print("Bölme: ${sayi1 / sayi2}");
  }else{
    print("Geçerli bi tercih yapmadınız...");
  }
}