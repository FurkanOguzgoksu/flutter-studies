Future<String> mektupGelir() { // -> ileriki adım
  // 5 saniye sonra mektubu getirir
  return Future.delayed(Duration(seconds: 5), () => "Selam!");
}

/* Future<String> mektupGelir() async {
  // 5 saniye bekle
  await Future.delayed(Duration(seconds: 5));
  // sonra sonucu döndür
  return "Selam!";
}     // Hata Kontrolü için kullanılır.
*/

// async/await: beklerken uğraşma
void main() async { // -> EŞZAMANSIZ
  print("Kahvemi yapıyorum...");
  String mektup = await mektupGelir(); // bekle
  // await dediğin anda bu satırın devamı
  // mektupGelir() bitene kadar askıda kalır,
  // ama diğer işler (UI güncelleme vb.) devam eder.
  print("Mektup geldi: $mektup");
}


