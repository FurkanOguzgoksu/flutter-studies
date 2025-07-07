Future<String> pizzaSiparisi() {
  return Future.delayed(Duration(seconds: 3), () => "Pizza hazır!");
}

void main() async {
  print("Masayı kuruyorum...");
  var pizza = await pizzaSiparisi();
  print(pizza);
}