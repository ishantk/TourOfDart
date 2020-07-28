void main(){
  
  // Conditional Flows:
  // JUMBO -> Flat 40% Off
  // ZOMATO -> Flat 50% Off
  // BINGO -> Flat 20% Off Applicable for amount > Rs 600 but upto Rs 200
  
  String promoCode = "BINGO"; 
  double amount = 1200;
  
  // Regular if/else
  /*
  if(promoCode == "JUMBO"){
    amount = amount - (0.40*amount);
    print("Promo Code JUMBO Applied Successfully");
  }else{
    print("Promo Code INVALID");
  }*/
  
  // Ladder if/else
  /*
  if(promoCode == "JUMBO"){
    amount -= (0.40*amount);
    print("Promo Code JUMBO Applied Successfully");
  }else if(promoCode == "ZOMATO"){
    amount -= (0.50*amount);
    print("Promo Code ZOMATO Applied Successfully");
  }else{
    print("Promo Code INVALID");
  }*/
  
  
  // Nested if/else
  
  if(promoCode == "JUMBO"){
    amount -= (0.40*amount);
    print("Promo Code JUMBO Applied Successfully");
  }else if(promoCode == "ZOMATO"){
    amount -= (0.50*amount);
    print("Promo Code ZOMATO Applied Successfully");
  }else if(promoCode == "BINGO"){
    if(amount>=600){
        var discount = 0.20*amount;
        if(discount > 200){
          discount = 200;
        }
        amount -= discount;
      print("Promo Code BINGO Applied Successfully");
    }else{
       print("Promo Code Not Applicable");
    }
   
  }else{
    print("Promo Code INVALID");
  }
  
  print("Please Pay \u20b9$amount");
  
  // Switch Case
  var state = "DELIVERED";
  
  switch(state){
      
      // when user will place order, state of order will be placed
    case "PLACED":
      print("Notify Restaurant to start Preparing the Order");
      print("Notify Rider to pick up the Order");
      break;
    
      // when restaurant will hand over order to the Rider
    case "SHIPMENT":
      print("Notify User, Rides is on the Way");
      break;
      
      // When Rider will deliver the Order to Customer
    case "DELIVERED":
      print("Thank you for Choosing Zomato as your Food Partner");
      break;
      
  }
  
}