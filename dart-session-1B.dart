void main(){
  
  var ten = "10";
  print(ten);
  print(ten.runtimeType);
  
  // In case we are fetching data from UI or wish to display data on UI
  // Any excahnge of data on UI is String
  
  var realTen = int.parse(ten);
  print(realTen);
  print(realTen.runtimeType);
  
  var strTen = realTen.toString();
  print(strTen);
  print(strTen.runtimeType);  
  
  var pi = 3.14159;
  var piAgain = pi.toStringAsFixed(2);
  
  print(pi);
  print(piAgain);
  
}