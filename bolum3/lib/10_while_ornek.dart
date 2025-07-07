import 'dart:io';

void main(){
  print("İşlenecek veri miktarını giriniz:");
  int miktar = int.parse(stdin.readLineSync()!);

  while(miktar > 0){
    print("$miktar. veri");
    miktar--;
  }
}