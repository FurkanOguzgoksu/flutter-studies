void main() {
  // Örnek 1
  var sayi = 10;
  print(sayi);

  int numara = 99;
  print(numara);

  // Örnek 2 : Değişkenin değeri daha sonra değiştirilebilir
  var fiyat = 12.99;
  double ucret = 23.59;

  print(fiyat);
  print(ucret);

  fiyat = ucret;

  print(fiyat);
  print(ucret);

  // Örnek 3 : İşlem yaptıktan sonra başka bir değişkene veri aktarılabilir.
  var sayi1 = 10;
  var sayi2 = 20;

  var toplam = sayi1 + 50;
  int carpma = sayi1 * sayi2;

  print(toplam);
  print(carpma);

  // Örnek 4 : Boş değişken oluşturup daha sonra değer aktarabiliriz.
  var sonuc1;
  int sonuc2;

  sonuc1 = 333;
  sonuc2 = 555;

  print(sonuc1);
  print(sonuc2);

  // Örnek 5 : Yan yana değişken oluşturma
  var s1, s2, s3;

  s1 = 10;
  s2 = 20;
  s3 = 30;
  print("$s1 $s2 $s3");

  int k1 = 44, k2 = 78;
  print("$k1 $k2");

  /* Örnek 6 : Type Safety
  var deger = 100;
  deger = "merhaba";
    */
}
