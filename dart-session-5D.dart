// Interfaces

abstract class GooglePay{
  void onSuccess();
  void onFailed();
}


// PS: in case abstract class has all functions as abstract i.e. no function with definition it is considered as interface and hence can be implemented
abstract class AmazonPay{
  void onSuccess();
  void onFailed();
}

// Multiple Inheritance -> Not Supported | more than once class cannot be extended
//class ZomatoPayments extends GooglePay, AmazonPay{

// GooglePay, AmazonPay are now behaving as interfaces :)
class ZomatoPayments implements GooglePay, AmazonPay{
  
  void onSuccess(){
    
  }
  
  void onFailed(){
    
  }
}

void main(){
  
}