import 'package:bolum4/27_InterfaceOrnek/AmasyaElmasi.dart';
import 'package:bolum4/27_InterfaceOrnek/Aslan.dart';
import 'package:bolum4/27_InterfaceOrnek/Eatable.dart';
import 'package:bolum4/27_InterfaceOrnek/Elma.dart';
import 'package:bolum4/27_InterfaceOrnek/Tavuk.dart';

void main() {
  var aslan = Aslan();
  aslan.toString();
  Eatable tavuk = Tavuk();
  tavuk.howToEAT();

  var elma = ELma();
  elma.howToEAT();
  elma.howToSqueeze();

  var amasyaE = AmasyaElmasi();
  amasyaE.howToEAT();
  amasyaE.howToSqueeze();

  ELma amasyaa = AmasyaElmasi();
  amasyaa.howToEAT();
}
