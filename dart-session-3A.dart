// Controllers
// Iterations i.e. loops -> will do some repetitive job
// for, while and do while
void  main(){
 
  // Covid Cases
  var maharahstra = 34516;
  var gujrat = 3141;
  var punjab = 1235;
  var tamilNadu = 2122;
  var up = 1789;
  
  // The data goes on for n-number of states
   // We cannot store data in so many variables for n-number of states. we must use multi value container
  
  // Use MVC to Store lot of data, in indexed form
  var covidCases = <int>[34516, 3141, 1235, 2122, 1789];
  
  var totalCases = covidCases[0] + covidCases[1] + covidCases[2] + covidCases[3]  + covidCases[4];
    
    print("Total Cases are $totalCases");
  
  // Optimiziation: 1. Time
  //                   1.1 Program Execution Time | Running Time
  //                   1.2 Development Time | Time to write code
  //                2. Memory
  //                    Saving memory by optimally creating storage containers
  
  // Iterate in the List
  // we have indexes and we can write loops to do so
  var total = 0;
  for(int i=0;i<covidCases.length;i++){
    total += covidCases[i];
  }
  
  print("Total is: $total");
  
  var productPrices = <double>[1200, 2200.55, 350, 9020, 40, 1000];
  print("product prices: $productPrices");
  // Flat 50% off on the product with prices >= 2000
  // and 25% otherwise
  
  for(int i=0;i<productPrices.length;i++){
    if(productPrices[i]>=2000){
      productPrices[i] -= 0.5*productPrices[i];
    }else{
      productPrices[i] -= 0.25*productPrices[i];
    }
  }
  
  print("product prices slashed: $productPrices");
  
  // For Each Loop with Lists
  // Here we get access to the data and not to indexes. For real purpose.
  productPrices.forEach((item){
    print(item);
  });
    
  
  var idx = 10;
  while(idx <=5){ //Condition is checked at Entry
    print("idx is: $idx");
    idx++;
  }
  
  print("=======");
  
  idx = 10;
  do{
     print("idx is: $idx");
     idx++;
  }while(idx <=5); //Condition is checked at Exit | Loop works on a min of one even condition fails
  
}


// Assignment: Explore ebreak and continue keywords with loops
//             Write codes for nested loops