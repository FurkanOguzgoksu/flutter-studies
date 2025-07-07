import 'dart:math';

Future<String> mektupGelir() async {
  // 5 sn bekle
  await Future.delayed(Duration(seconds: 5));

  // %50 şansla hata fırlat
  if (Random().nextBool()) {
    throw Exception("Posta dağıtımı başarısız!");
  }
  return "Selam!";
}

void main() async {
  print("Sipariş verdim, mektup bekleniyor...");
  try {
    String mektup = await mektupGelir();
    print("Mektup geldi: $mektup");
  } catch (e) {
    print("Hata yakalandı: $e");
  } finally {
    print("Sipariş süreci tamamlandı.\n");
  }
}
