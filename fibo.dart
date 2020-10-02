import 'dart:io';

void main() {
  print("Fibbonacci Checker\n");
  List<int> fn = new List();
  print("Enter size of list ;it should be greater than 3 and less than 10): ");
  int sizeOflist = int.parse(stdin.readLineSync());
  if (sizeOflist < 3 || sizeOflist > 10) {
    print("Invalid size of list");
  } else {
    for (int i = 0; i < sizeOflist; i++) {
      int n = i + 1;
      print("Enter number $n: ");
      fn.add(int.parse(stdin.readLineSync()));
    }
    print(fn);
    print(checkFibonacci(fn));
  }
}

bool checkFibonacci(List<int> fn) {
  for (int i = 2; i < fn.length; i++) {
    if ((fn[i - 1] + fn[i - 2]) != fn[i]) {
      return false;
    }
  }
  return true;
}
