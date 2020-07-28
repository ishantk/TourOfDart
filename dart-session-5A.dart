// OOPS: Inheritance, Abstraction and Interfaces

// What is Inheritance ?
//  Parent Child Relationship
//  whatever is  availble in Parent, that is accessible by child iff not available in child

// Why we need Inheritance ?
//  Saving Development Time by Code Resuse Property

// Rule#1: Before the Object of Child, Object of Parent is Created in Memory
// Rule#2: Child can access everything in Parent, if not available with Child

class Parent{
  String fname;
  String lname;
  int wealth;
  
  Parent(){
    print("Parent Object Constructed");
    fname = "John";
    lname = "Watson";
    wealth = 100000;
  }
  
  void printDetails(){
    print("Details: $fname $lname | \u20b9$wealth");
  }
  
}

/*class Child extends Parent{ // Inheritance Relationship
  Child(){
    wealth -= 10000; // updating attribute of Parent
    print("Child Object Constructed");
  }
}*/

class Child extends Parent{ // Inheritance Relationship
  
  String fname;   // Same attribute as of Parent
  int wealth;     // Same attribute as of Parent
  String vehicle; // additional attribute in Child Object
  
  Child(){
    fname = "Fionna";
    wealth = 35000;
    vehicle = "4W | PB10AB1234";
    print("Child Object Constructed");
  }
  
  // Overriding
  void printDetails(){
    super.printDetails();// access Parent's Properties in child with super keyword
    print("Details: $fname $lname | \u20b9$wealth");
    print("Vehicle: $vehicle");
  }
  
}

void main(){
  
  //var pRef = Parent();
  //pRef.printDetails();
  
  var cRef = Child();
  cRef.printDetails(); // Possible, as Child does not have it but its Parent has it
}