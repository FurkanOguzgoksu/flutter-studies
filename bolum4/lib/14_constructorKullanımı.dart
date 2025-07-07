class Kisiler{
  late String ad;
  late int yas;

  /*Kisiler(){
    this.ad = ad;
    this.yas = yas;
  }*/

  Kisiler(this.ad, this.yas);
}

class Ogrenciler{
  int no;
  String ad;

  Ogrenciler({required this.no, required this.ad});
  // Required terimi kullanılarak hem güvenlik artmış oldu hem de kod okunurluğu
  // Main kısmında değişken adı kullanılarak atama yapılır...
}

void main(){
  var kisi = Kisiler("Ayşe", 21);
  print(kisi.ad);
  print(kisi.yas);

  var ogrenci = Ogrenciler(no: 75, ad: "Faruk");
  print(ogrenci.ad);
  print(ogrenci.no);
}