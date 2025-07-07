import 'dart:io';

void main(){
  print("Kullanılan interneti gb cinsinden giriniz: ");
  int gb = int.parse(stdin.readLineSync()!);
  int ucret = paketUcretiHesaplama(gb);
  print("Ödeyeceğiniz tutar: $ucret");
}

int paketUcretiHesaplama(int gb){
  int ucret = 0;
  if(gb > 50){
    ucret = 100 + (gb - 50) * 4;
  }else{
    ucret = 100;
  }
  return ucret;
}