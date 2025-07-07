class Araba{
  late String renk; // Direkt sabit bir özellik atanabilir. Nesnede üzerine yazılabilir.
  late int hiz;
  late bool calisiyorMu;

  void calistir(){
    calisiyorMu = true;
    hiz = 0;
    print("Motor çalıştırıldı...");
  }

  void durdur(){
    calisiyorMu = false;
    print("Kontak kapatıldı...");
  }

  void hizlan(int kacKm){
    hiz += kacKm;
  }

  void yavasla(int kacKm){
    hiz -= kacKm;
  }

  void bilgiAl(){
    print("Renk: $renk");
    print("Hız: $hiz");
    print("Çalışma Durumu: $calisiyorMu");
    print("\n");
  }
}