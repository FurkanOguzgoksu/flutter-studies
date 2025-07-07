Future<String> pizzaSiparisiHazir(){
  return Future.delayed(Duration(seconds: 2), () => "Pizza hazırrrr");
}

void main() async{
  print("Masayı kuruyorum");
  String pizza = await pizzaSiparisiHazir();
  print(pizza);
  print("Yemeğe başlıyorum.");
}