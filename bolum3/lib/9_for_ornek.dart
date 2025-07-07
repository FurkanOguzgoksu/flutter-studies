import 'dart:io';

void main(){
  print("Lütfen isim giriniz: ");
  String isim = stdin.readLineSync()!;
  print("İsmin tekrarlanma sayısını giriniz: ");
  int tekrar = int.parse(stdin.readLineSync()!);

  for(int i=0 ;i<tekrar ; i++){
    print("${i+1}.$isim");
  }
}