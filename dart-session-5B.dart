// OOPS: Inheritance, Abstraction and Interfaces

// Why we need Inheritance ?
//  Saving Development Time by Code Resuse Property

class OneWayFlightBooking{
  
  String fromLocation;
  String toLocation;
  String departureDate;
  int travellers;
  String travelClass;
  
}

/*class RoundTripFlightBooking{
  
  String fromLocation;
  String toLocation;
  String departureDate;
  String returnDate;
  int travellers;
  String travelClass;
  
}*/

// In child class i must write only additional code
class RoundTripFlightBooking extends OneWayFlightBooking{
   String returnDate;
}

/*class MultipleFlightBooking{
  
  String fromLocation1;
  String toLocation1;
  String departureDate1;
  String returnDate1;
  int travellers1;
  String travelClass1;
  
  String fromLocation2;
  String toLocation2;
  String departureDate2;
  String returnDate2;
  int travellers2;
  String travelClass2;
  
}*/

class MultipleFlightBooking extends RoundTripFlightBooking{
  
  String fromLocation2;
  String toLocation2;
  String departureDate2;
  String returnDate2;
  int travellers2;
  String travelClass2;
}

class Product{
  int pid;
  String name;
  String brandName;
  int price;
  String color;
}

class MobilePhone extends Product{
  int ram;
  int memory;
  String os;
}

class Shoe extends Product{
  List<int> shoeSizes;
}

class TV extends Product{
  String technology;
  double screenSize;
}

void main(){
  
}