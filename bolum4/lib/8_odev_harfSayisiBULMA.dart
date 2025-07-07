import 'dart:io';

void kelimedeHarfBUL(String kelime, String harf){
    int adet=0;
    for(int i=0; i<kelime.length; i++){
      if(kelime[i] == harf){
        adet++;
      }
    }
    print("\'$kelime\' kelimesinde $adet adet \'$harf\' var...");
}

void main(){
  print("Kelimeyi giriniz: ");
  String kelime = stdin.readLineSync()!;
  print("Aranacak harfi giriniz: ");
  String harf = stdin.readLineSync()!;

  kelimedeHarfBUL(kelime, harf);
}