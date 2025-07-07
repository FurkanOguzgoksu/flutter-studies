class Otobus{
  late int kapasite;
  late String nereden;
  late String nereye;
  late int mevcutYolcu;

  void yolcuAl(int yolcuSayisi){
    mevcutYolcu += yolcuSayisi;
  }

  void yolcuIndir(int yolcuSayisi){
    mevcutYolcu -= yolcuSayisi;
  }

  void bilgAl(){
    print("Otobüsün kapasitesi: $kapasite");
    print("Otobüsün kalkış noktası: $nereden");
    print("Otobüsün varış nıktası: $nereye");
    print("Otobüsün mevcut yolcu sayısı: $mevcutYolcu");
    print("\n");
  }
}