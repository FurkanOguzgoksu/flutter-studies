import 'dart:io';

void main(){
  print("Toplama (1)");
  print("Çıkarma (2)");
  print("Çarpma (3)");
  print("Bölme (4)");

  int tercih = int.parse(stdin.readLineSync()!);
  print("Tercihiniz: $tercih");

  print("Birinci sayıyı giriniz");
  int sayi1 = int.parse(stdin.readLineSync()!);
  print("İkinci sayıyı giriniz");
  int sayi2 = int.parse(stdin.readLineSync()!);

  switch(tercih){
    case 1:{
      print("Toplamları: ${sayi1 + sayi2}");
    }
    break;

    case 2:{
      print("Farkları: ${sayi1 - sayi2}");
    }
    break;

    case 3:{
      print("Çarpımları: ${sayi1 * sayi2}");
    }
    break;

    case 4:{
      print("Bölümleri: ${sayi1 / sayi2}");
    }
    break;

    default: {  print("Geçerli seçim yapmadınız..."); }
    break;
  }


}