// Setter and Getter for Property in Object
class Product{
  
  // Attributes or State or Instance Variables or Property
  int productCode;
  String name;
  double price;
  
  Product({this.productCode, this.name, this.price});
  
  // Setter Function for Object to set/update a property in Object
  /*void setPrice(double taxes){
    price += price*taxes;
  }*/
  
  void setPrice(double taxes) =>  price += price*taxes;
  
  // getter Function to read property data from Object
  /*double getPrice(){
    return price;
  }*/
  
  double getPrice() => price;
  
  // Dart way of creating Setter and Getter
  set productWithTaxes(double value) => price += price*value;
  double get productWithTaxes => price;
  
}


void main(){
  
  var pRef = Product(productCode:101, name:"iPhoneXI", price:70000);
  //pRef.setPrice(0.18);
  //print("Price of ${pRef.name} is: ${pRef.getPrice()}");
  
  pRef.productWithTaxes = 0.18;
  print("Price of ${pRef.name} is: ${pRef.productWithTaxes}");
  
}