class AuthUser{
  
  // Attributes
  String phone;
  int otp;
  
  // Initializer List for Constructors | C++
  AuthUser(phone, otp): phone = phone, otp = otp;
 
  void authUser(){
    if(phone == "9876511111" && otp == 3027){
      print("User Authenticated for Phone $phone");
    }else{
      print("User Authentication Failed for Phone $phone");
    }
  }
    
}

// Constructor Chaining
class Transaction{
  
  double amount;
  double taxes;
  
  Transaction({this.amount, this.taxes});
  
  // Constructor Chaining : Using one constructor from another
  Transaction.init({double payment}) : this(amount:payment, taxes:0.18);
  
  void showTransactionDetails(){
    amount += amount*taxes;
    print("Please Pay \u20b9$amount");
  }
  
}

void main(){
  
  AuthUser user1 = AuthUser("9876511111", 3027);
  user1.authUser();
  
  Transaction tRef1 = Transaction.init(payment:500.50);
  tRef1.showTransactionDetails();
  
}