import 'dart:ffi';
import 'package:ffi/ffi.dart';

void main() {
  // RAM'den bir Int32 alanı ayır
  Pointer<Int32> ptr = malloc<Int32>();

  print("Ptr:\n");
  ptr.value = 10;
  print("x'in RAM adresi: ${ptr.address}");
  print("x'in değeri: ${ptr.value}");

  ptr.value = 20;
  print("x'in RAM adresi: ${ptr.address}");
  print("x'in değeri: ${ptr.value}");

  print("\nint:\n");
  int x = 7;
  print("x hashCode: ${identityHashCode(x)}");
  x = 27;
  print("x hashCode: ${identityHashCode(x)}");
  x = 17;
  print("x hashCode: ${identityHashCode(x)}");

  print("\nString:\n");
  String name = "ahmet";
  print("name hashCode: ${identityHashCode(name)}");

  name = "ayşe";
  print("name hashCode: ${identityHashCode(name)}");

  print("\nBool:\n");
  bool a = true;
  print("a hashCode: ${identityHashCode(a)}");

  a = false;
  print("a hashCode: ${identityHashCode(a)}");

  a = true;
  print("a hashCode: ${identityHashCode(a)}");

  print("\n\n\nList:\n");
  List<int> numbers = [1, 2, 3];
  print("numbers identity: ${identityHashCode(numbers)}");
  numbers.add(4);
  print("numbers identity after add: ${identityHashCode(numbers)}");
  numbers[0] = 10;
  print("numbers: $numbers");
  print("numbers identity after modification: ${identityHashCode(numbers)}");

  print("\nSet:\n");
  Set<String> names = {'ahmet', 'mehmet'};
  print("names identity: ${identityHashCode(names)}");
  names.add('ayşe');
  print("names identity after add: ${identityHashCode(names)}");
  names.remove('mehmet');
  print("names: $names");
  print("names identity after remove: ${identityHashCode(names)}");

  malloc.free(ptr);
}
