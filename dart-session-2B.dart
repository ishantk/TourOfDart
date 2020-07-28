void main(){
  
  // CONTROLLER
  // Logical Processing of Data
  // 1. operators         -> mathematical computations
  // 2. conditional flows -> decide where the control shall move as per user's decision
  // 3. iterations        -> to do something in repetition
  
  // 1.1 Arithmetic Operators
  // _, -, *, /, ~/, %
  
  int num1 = 10;
  int num2 = 3;
  //var result = num1 / num2; // double point division
  var result = num1 ~/ num2;  // integral division
  print("result is $result");
  
  int hashTableCapacity = 10;
  var data = 99;
  
  int hashCode = data % hashTableCapacity;
  print("HashCode is: $hashCode"); // $variable to print variable
  print("HashCode is: ${data % hashTableCapacity}"); // ${} to have an expression in print statement
  
  // 1.2 increment decrement operators
  var a = 10;
  a++;  // 11
  ++a;  // 12
  --a;  // 11
  a--;  // 10
  ++a;  // 11
  
  print("a is: $a");  // 11
  
  //  12   12
  var b = ++a;    // increment first and than assign
  print("a is: $b");
  print("b is: $b");
          //      12  + 12  + 14  - 13  -> 25  
  var expResult = a++ + b++ + ++b - --b;
  print("expResult is: $expResult"); // ?
  
  // 1.3 conditional operators | generate result as booleans
  // >, <, >=, <=, ==, !=
  var walletBalance = 300;
  var cabFare = 575;
  
  print("Can i book the Cab: ${walletBalance >= cabFare}");
  
  // 1.4 logical operators
  // &&, ||, !
  
  var isInternetEnabled = true;
  var isGPSEnabled = true;
  
  print("Can we Navigate using google maps: ${isInternetEnabled && isGPSEnabled}");
  
  // 1.5 Type Test Operator
  // is, is!, as (oops)
  var pi = 3.14;
  print("Is Pi double: ${pi is double}");
  print("Is Pi not int: ${pi is! int}");
  
  // 1.6 Bitwise and Shift Operators
  // &, |, ^, >>, <<
  
  var n1 = 10;      // 1 0 1 0
  var n2 = 8;       // 1 0 0 0
  
  var n3 = n1 & n2; // 1 0 0 0 // 8
  var n4 = n1 ^ n2; // 0 0 1 0 // 2
  
  print("n3 is: $n3");
  print("n4 is: $n4");
  
  var n5 = n1 >> 3; // n1 must be divided by 2 power 3
  var n6 = n1 << 3; // n1 must be multiply by 2 power 3
  
  print("n5 is: $n5");
  print("n6 is: $n6");
  
  // 1.7 Ternary Opertor
  // ? :
  var discount = cabFare > 500 ? 100 : 50;
  
  // For UniCodes: https://unicode-table.com/en/
  print("discount for $cabFare is \u20b9 $discount");
  
  // 1.8 Assignment operators
  // =, +=, -=, *=, /=....
  discount += 20;
  print("Final Discount is: \u20b9 $discount");
  
  // 1.9 Null Check Operator
  // ??
  
  var name;
  print("name is: $name");
  
  name ??= "John"; // assign John to name iff its null
  
  print("name is: $name");
  
}