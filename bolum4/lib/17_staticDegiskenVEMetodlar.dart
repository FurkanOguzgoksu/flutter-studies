class Sinif{
  static int sayim = 11;
  static final doublem = 10.45;
  static void metodum(){
    print("Merhaba");
  }
}

void main(){
  print(Sinif.sayim);
  Sinif.sayim = 12;
  print(Sinif.sayim);
  print(Sinif.doublem);
  Sinif.metodum();
  // static ile nesne üretmeden sınıfın adı ile değişkenlere ulaşılbiliyor.
  //
}