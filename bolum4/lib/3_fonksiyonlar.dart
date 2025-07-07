void main(){
  selamla();
  print(selamla1());
  selamla2("Faruk");
  topla();
  print(toplama());
  print(toplama2(12, 24));
}

void selamla(){
  String selam = "Merhaba Ahmet";
  print(selam);
}

String selamla1(){
  String mesaj = "Merhaba Ali";
  return mesaj;
}

void selamla2(String isim){
  String selam = "Merhaba $isim";
  print(selam);
}

void topla(){
  int topla = 30 + 40;
  print("Toplam: $topla");
}

int toplama(){
  return 35 + 55;
}

int toplama2(int sayi1, int sayi2){
  return sayi1 + sayi2;
}