import 'package:bolum4/27_InterfaceOrnek/Eatable.dart';
import 'package:bolum4/27_InterfaceOrnek/Squeezable.dart';

class ELma implements Eatable,Squeezable{
  @override
  void howToEAT() {
    // TODO: implement howToEAT
    print("Dilimle ve ye");
  }

  @override
  void howToSqueeze() {
    // TODO: implement howToSqueeze
    print("Blender ile sık");
  }

}