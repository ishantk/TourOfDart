void main(){
  
  // Multi Value Containers
  // They are menat to hold lot of data
  // 1. List -> Dynamic List with Indexing | Array but not of Fixed Size
  // 2. Set  -> Uniqueness with Hashing and no indexing
  // 3. Map  -> Key Value Pair
  
  // Size can grow or shrink dynamically i.e. data can be added ore removed
  // eg: Shopping Cart -> List
  
  // Hetro
 // var options = ["Flights", "Hotels", "Holidays", "Trains", "Cabs", 10, 20, //2.2];
  
  // Homo
  var options = <String>["Flights", "Hotels", "Holidays", "Trains", "Cabs"];
  print(options);
  print(options.runtimeType);
  
  var productPrices = [10, 20, 30];
  var anotherPrices = [50, ...productPrices]; // spread oeprator
  print(anotherPrices);
  print(anotherPrices.length);
  
  //var rollNums = [101, 201, 301, 401, 201, 301];
  var rollNums = {101, 201, 301, 401, 201, 301}; // Sets are for unique data
  print(rollNums);
    
  var employee = {
    "name":"john",
    "email":"john@example.com",
    "salary":3000
  };
  
  print(employee);
  
}

