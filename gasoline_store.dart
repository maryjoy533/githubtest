import 'dart:io';

//gasoline store

void main() {
  Map<String, double> gasoline = {
    'leaded': 45.75,
    'unleaded': 43.18,
    'diesel': 37.12,
    'biodiesel': 48.03
  };
  // type of fuel
  print(gasoline);
  print('Select Type of Fuel: ');
  String type_of_gasoline = stdin.readLineSync();
  var price_of_gasoline = gasoline[type_of_gasoline];
  print('price: $price_of_gasoline');

  //type of purchase
  var purchase_choice = ['cash', 'liter'];
  print('enter type of purchase $purchase_choice');
  String type_of_purchase = stdin.readLineSync();
  int liters_acquired = 0;
  //for cash
  if (type_of_purchase == 'cash') {
    print('enter amount');
    double amount = double.parse(stdin.readLineSync());
    while (amount >= price_of_gasoline) {
      amount = amount - price_of_gasoline;
      liters_acquired += 1;
    }
    print('number of liters:$liters_acquired');
    print(amount);
    //by liter purchase
  } else if (type_of_purchase == 'liter') {
    int number = 1;
    print('how many liters: ');
    int numbers_of_liter = int.parse(stdin.readLineSync());
    for (int add = numbers_of_liter; add >= number; add--) {
      var total = numbers_of_liter * price_of_gasoline;
      number++;
      print('Total payment:$total');
    }
  } else {
    print('wrong input');
  }
}
