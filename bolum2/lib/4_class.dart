class Deneme{
  int x = 10;  // Global
  int y = 20;  // Global

  void topla(){
    int x = 40;  // Local
    x = x + y;
    print(x);
  }
  // Değişkenlerdeki renkler global mı local mı olduğu belirlemede fayda sağlamaktadır.
  void carpma(){
    x = x * y;
    print(x);
  }
}