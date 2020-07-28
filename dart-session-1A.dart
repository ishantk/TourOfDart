// Tour of Dart - Part I
void  main(){
  
  // Intrduction to Storage Containers
  // Stroage containers will hold data for us in program
  // example: getting the name read from the textfield which is eneterd by user and storing it in some container (variable)
  
//   String name = "John";
//   int age = 20;
//   double taxes = 0.18;
  
  var name = "John"; // Data Type is automatically taken care of
  var age = 20;
  var taxes = 0.18;
  
  // name, age, taxes are known as reference variables
  // they point to the data in the memory
  // data is stored using algo called hashing in data structure hashtable
  
  // age is a reference variable which holds the HashCode where 20 is stored
  // String Hashing -> Simply add up the ASCII data 
  // Exploratory -> How floating points are Hashed ?
  
//   print(name);
//   print(age);
//   print(taxes);
  
  print("name is: $name");
  print(name.runtimeType);
  print(name.hashCode);
  
  print("Age is: $age");
  print(age.runtimeType);
  print(age.hashCode);
  
  print("Taxes are: $taxes");
  print(taxes.runtimeType);
  print(taxes.hashCode);
  
  // PS: In dart every variable is a Reference Variable holding the HashCode to the Data
  
  /*var name1 = "Jennie";
  print("name1 is: $name1");
  name1 = 10; // error
  print("name1 now is: $name1");*/
  
  // dynamic : RTP | Run Time Polymorphism
  dynamic name1 = "Jennie";
  print("name1 is: $name1");
  print(name1.runtimeType);
    
  name1 = 10; 
  print("name1 now is: $name1");
  print(name1.runtimeType);
  
  var pi = 3.14159;
  print(pi);
  print(pi.runtimeType);
  
  var exp = 1.5e2; // 1.5 * 10 power 2 -> 150
  print(exp);
  print(exp.runtimeType);
    
  // https://www.rapidtables.com/convert/number/decimal-to-hex.html
  var hexNumber = 0X3DBA;
  print(hexNumber);
  print(hexNumber.runtimeType);
  
  // Explore binary and octal representations
  
}
