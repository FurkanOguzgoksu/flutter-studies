void hesapla<T>(T veri) {
  print("Çıktı: $veri - Tipi: ${veri.runtimeType}");
}

void hesapla1<T>(T value, T value1) {
  print(int.parse(value.toString()));
  print(value.runtimeType);
}

void main() {
  hesapla("furkan");
  hesapla(5);
  hesapla(5.6);
  hesapla(true);

  List dizim = [1, 2, 3];
  print("$dizim - ${dizim.runtimeType}");

  List dizim1 = ["A", "B", "C", 1];
  print("$dizim1 - ${dizim1.runtimeType}");

  List dizim2 = ["A", 4.0, "C", 1, true];
  print("$dizim2 - ${dizim2.runtimeType}");

  //   List<String> dizim3 = ["A", "B", "C", 1];
  //   print("$dizim3 - ${dizim3.runtimeType}");

  Araba a1 = Araba("Bmw", 1.4, 800000);
  hesapla(a1);

  hesapla(a1.fiyati);

  hesapla1(3, "value1");
}

class Araba {
  String marka;
  double motorHacmi;
  int fiyati;

  Araba(this.marka, this.motorHacmi, this.fiyati);
}
