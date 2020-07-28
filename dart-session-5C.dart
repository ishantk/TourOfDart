// Abstraction
// we use abstraction when we have to create some code for others
// eg: PayTM wallet in Zomato/Swiggy/OLA/Uber
//     PayTM will write code, which will be used by other apps and those apps will not have some direct access to PaytM Code and PayTM will write some rules which all other apps should implement for transactional purpose


// abstract class is only for Inheritance and we cannot create its objects
abstract class PayTMGateway{
  void onSuccess() => print("[PayTM] Payment Transaction Successfull");
  void onFailed() => print("[PayTM] Payment Transaction Failed");
  void enterToken() => print("[PayTM] Submit Token for Transactions");
  
  // create pay funtion as a RULE so that other child classes must implement it as per their customizations
  // abstract function is a RULE, it has no defintion, created by Parent and which must be defined by Children
  // abstract function can be created only in abstract class
  // we need not to put keyword abstract, this will become by default abstract for us
  void pay(int amount);
}

// Any class which is child of abstract class has to define all the abstract functions if available in Parent
class PaytmPaymentsWithUPI extends PayTMGateway{
  void enterUPI()=>print("Enter Your UPI");
  void enterPassword()=>print("Enter Your Password");
  
  void pay(int amount){
    print("Processing Payment with UPI for $amount");
    enterUPI();
    enterPassword();
    enterToken();
    onSuccess(); // or onFailed()
  }
}

class PaytmPaymentsWithNetBanking extends PayTMGateway{
  
  void enterUserName()=>print("Enter Your User Name");
  void enterPassword()=>print("Enter Your Password");
  
  void pay(int amount){
    print("Processing Payment with NetBanking for $amount");
    enterUserName();
    enterPassword();
    enterToken();
    onSuccess(); // or onFailed()
  }
}

class PaytmPaymentsWithCard extends PayTMGateway{
  
  void enterCardNumber()=>print("Enter Your Card Details");
  void enterCardValidity()=>print("Enter Your Card Validity");
  void enterCVV()=>print("Enter Your CVV");
  
  void pay(int amount){
    print("Processing Payment with Card for $amount");
    enterCardNumber();
    enterCardValidity();
    enterCVV();
    enterToken();
    onSuccess(); // or onFailed()
  }
}


class ZomatoAppPayments{
  
  //PayTMGateway gateway; // This is not object, its a ref variable
  
  ZomatoAppPayments(){
    //gateway = PayTMGateway(); // NOT ALLOWED
    //gateway.onSuccess(); // lead to illeagl access of various functions in PayTMGateway 
  }
  
  void processPayments(){
    
    int choice = 3; // 1 means UPI, 2 means NetBanking, 3 means Card
    int amount = 1000;
    
    // Ref var of Parent can point to the object of Child :)
    PayTMGateway gateway = null; // Ref Var to Gateway
    
    // RUN TIME POLYMORPHISM | RTP
    if(choice == 1){
      gateway = new PaytmPaymentsWithUPI();
    }else if(choice == 2){
      gateway = new PaytmPaymentsWithNetBanking();
    }else if(choice == 3){
      gateway = new PaytmPaymentsWithCard();
    }else{
      print("Please Select a Valid Payment Option First");
    }
   
    gateway.pay(amount);
  }
  
}

void main(){
  
  var app = ZomatoAppPayments();
  app.processPayments();
  
}
