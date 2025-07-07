void main() {
  late String? mesaj = null;
  mesaj = "Merhaba";

  String? isim = null;
  isim = "Ahmett";

  // Yöntem 1 --> ?
  print(" Sonuc 1: ${isim?.toUpperCase()}");

  // Yöntem 2 --> !
  print(" Sonuc 2: ${isim!.toUpperCase()}");

  //Yöntem 3 --> if else
  if (isim != null) {
    print("Sonuc 3: ${isim.toUpperCase()}");
  } else {
    print("Sonuc 3: Null olduğu için işlem yapılmadı...");
  }
}
