void main(){
  var sayilar = <int>[];
  sayilar.add(35);
  sayilar.add(36);

  // try bloğuna hatalı düşünülen ya da sıkıntılı kod yazılır.
  // catch bloğuna ise hatanın sebebi tutulur...
  // finally bloğu her halükarda çalışır.
  try{
    sayilar[2] = 80;
    print("İşlem yapıldı...");
  }catch(Exception){
    print("Hata yakalandı");
  }

}