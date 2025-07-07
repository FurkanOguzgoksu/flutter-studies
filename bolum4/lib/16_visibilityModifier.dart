class Erisim{
  int public = 5;
  int _private = 7;
}

void main(){
  var nesne = Erisim();
  print("Public: ${nesne.public}");
  print("Private: ${nesne._private}");
  // Aynı sınıf içerisinden hem publice hem private ulaştık...
}