void main(){
  int yas = 17;
  String isim = "Mehmet";

  // Örnek 1-2
  if(yas >= 18){
    print("Reşitsiniz...");
  }else if(7 < yas && yas < 18){
    print("Çocuksunuz...");
  }else{
    print("Bebeksiniz...");
  }

  // Örnek 3-4
  if(isim == "Ahmet"){
    print("Merhaba Ahmet...");
  }else{
    print("Tanınmayan kişi...");
  }

  // Örnek 5
  String kullaniciAdi = "admin";
  int sifre = 12345;

  if(kullaniciAdi == "admin" && sifre == 12345){
    print("Hoşgeldiniz $kullaniciAdi");
  }else{
    print("Hatalı Giriş");
  }

  // Örnek 6
  int sinif = 10;
  if(sinif == 9 || sinif == 10 || sinif == 11){
    print("Sınava çok çalışmalısınız");
  }else{
    print("Durumunuz diğerlerinden daha iyii");
  }

  // İF in kısa kullanımı

  int sayi1 = 10;
  int sayi2 = 20;

  if(sayi1 == sayi2) print("Sayilar birbirine eşit"); else print("Sayilar birbirine eşit değil");
}