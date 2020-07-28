// OOPS in Dart :)
// Object and Class

// Object is a storage container in CS
// It is meant to Store Data just like, List, Set and Map

// Coding an Object is done by writing Class which is representation of Object
// Class is the Structure of Object as designed by developer

// Whatever we put in class is basically the property of Object

// FlightBooking Use Case from makemytrip
// https://www.makemytrip.com/flights/


// Principle of OOPS
// 1. Think of an Object
//    associate data whcih you need in your object
// Name of Object: FlightBooking
// Attributes    : fromLocation, toLocation, departureDate, numOfTravellers, travelClass

// 2. Create its Class
// Represents how an object will look like in memory
class FlightBooking{
  
  // Attributes: Property of Object. They are not part of class
  // No specific Data Types: It means any attribute can take any type of value
  /*var fromLocation;
  var toLocation;
  var departureDate;
  var numOfTravellers;
  var travelClass;*/
  
  // Attributes: Property of Object. They are not part of class
  // With specific Data Types
  String fromLocation;
  String toLocation;
  String departureDate;
  int numOfTravellers;
  int travelClass;    // 1 -> economy, 2->business
  
}

void main(){
  
  // 3. From the Class Create a Real Object in Memory :)
  // Object Construction Statements:
  var fRef1 = new FlightBooking();
  var fRef2 = FlightBooking();
  FlightBooking fRef3 = FlightBooking();
  
  // Reference Copy Operation. Not an Object Contruction.
  FlightBooking fRef4 = fRef2;
  
  // new is the one which will create the Object in memory at tun time.
  // But, we can skip new and compiler will take care of it automatically on our behalf
  
  print("fRef1 is: $fRef1 ${fRef1.hashCode} ${fRef1.runtimeType}");
  print("fRef2 is: $fRef2 ${fRef2.hashCode} ${fRef2.runtimeType}");
  print("fRef3 is: $fRef3 ${fRef3.hashCode} ${fRef3.runtimeType}");
  print("fRef4 is: $fRef4 ${fRef4.hashCode} ${fRef4.runtimeType}");
  
  // Writing Data In Object
  fRef1.fromLocation = "Delhi";
  fRef1.toLocation = "Bangalore";
  fRef1.departureDate = "25th Jul, 2020";
  fRef1.numOfTravellers = 2;
  fRef1.travelClass = 1;
  
  fRef2.fromLocation = "Pune";
  fRef2.toLocation = "Bangalore";
  fRef2.departureDate = "28th Jul, 2020";
  fRef4.numOfTravellers = 4;
  fRef4.travelClass = 2;
  
  fRef3.fromLocation = "Goa";
  fRef3.toLocation = "Chandigarh";
  fRef3.departureDate = "30th Jul, 2020";
  fRef3.numOfTravellers = 3;
  fRef3.travelClass = 1;
  
  // Update Data In Object
  fRef2.departureDate = "15th Aug, 2020";
  fRef1.numOfTravellers = 6;
  
  // Read Data From Object
  print("Flight from ${fRef1.fromLocation} to ${fRef1.toLocation} with number of travellers ${fRef1.numOfTravellers} is sheduled on ${fRef1.departureDate}");
  
    print("Flight from ${fRef2.fromLocation} to ${fRef2.toLocation} with number of travellers ${fRef2.numOfTravellers} is sheduled on ${fRef2.departureDate}");
  
    print("Flight from ${fRef3.fromLocation} to ${fRef3.toLocation} with number of travellers ${fRef3.numOfTravellers} is sheduled on ${fRef3.departureDate}");
  
    print("Flight from ${fRef4.fromLocation} to ${fRef4.toLocation} with number of travellers ${fRef4.numOfTravellers} is sheduled on ${fRef4.departureDate}");
  
  // Delete Object From Memory
  // Grabage Collector will delete the unused objects from the memory for us.
  // fRef4 = null; // this way we try to tell GC we dont need this object and let it be removed from memory :)
    
  
}