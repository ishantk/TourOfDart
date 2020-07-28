// Lambdas Expressions
// addNumbers(var num1, var num2) => num1 +num2;
// void main() => print("sum of 10 and 20 is: ${addNumbers(10, 20)}");


// Named Inputs to Functions in {}
/*addNumbers({var num1, var num2}){
  var sum = num1+num2;
  return sum;
}*/

// Optional Inputs to Function in []
//multiplyNumbers(var num1, var num2, [var num3]){
  
// Optional Inputs to Function in [] with default values
multiplyNumbers(var num1, var num2, [var num3=1]){

  var result = num1*num2*num3;
  return result;
}

// default values to named inputs
addNumbers({var num1=2, var num2=4}){
  var sum = num1+num2;
  return sum;
}

// multiple values can be returned : returnong a multi value container
// prices(){
//   var productPrices = <int>[62512, 136213, 21343, 13421, 23431];
//   return productPrices;
// }

// ShortHand Expression or Lambda
prices() => [62512, 136213, 21343, 13421, 23431];

void main(){
  //var result = addNumbers(10, 20); // error
  //var result = addNumbers(num1:10, num2:20); // for named inputs, you need to 
  // specify the name of input whicle giving the value to it
  
  var result = addNumbers(num1:100);
  print("result is: $result");
  
  result = multiplyNumbers(1, 2, 5);
  print("result is: $result");
  
}

// Assignment: Strcutre the data in containers from https://www.covid19india.org/

// Implement InsertionSort on the Data in ascending arrangement
// Filter the States with cases greater than the average cases for all states