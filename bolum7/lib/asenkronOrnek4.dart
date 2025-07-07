Future<void> mektupGetir(){
  return Future.delayed(Duration(seconds: 4), () {
    print("Future sınıfındasın");
  });
}
void main() async{
  print("*******");
  await mektupGetir();
  print("future kısmı bitti");
}