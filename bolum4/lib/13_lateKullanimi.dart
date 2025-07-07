class LateKullanimi {
  late int x;
  // Değişken null değerinde yani "int x;" böyle olacaksa mecbur başına late eklenmeli...
  late int y = 10;
  // Değişken bir değere sabit olacaksa late kullanılanilir veya kullanılmayabilir...
}

class Kisiler {
  // Sınıf içerisinde constructor varsa late kullanmaya gerek yok...
  int kisiNo;
  String kisiAd;

  Kisiler(this.kisiNo, this.kisiAd);
}

void main() {
  late int a = 5;
  print(a);
  int? y;
  print(y);
}
