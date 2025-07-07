import 'dart:io';

double donustur(double derece){
  return (derece * 1.8) + 12;
}

void main(){
  print("Fahrenhiet'a dönüştürülecek dereceyi giriniz: ");
  double derece = double.parse(stdin.readLineSync()!);

  double sonuc = donustur(derece);
  print("Dönüşüm sonucu: $sonuc");
}