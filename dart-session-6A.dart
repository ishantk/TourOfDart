// mixins
// has-a relationship
// data representation, search, sort, filter

/*
class CA{
  void show() => print("This is show in CA");
}

class CB{
  void hello() => print("This is hello in CB");
}

// Multiple Inheritance Not Supported
class CC extends CA, CB{ // Error

}*/

mixin CA{
  int a = 100;
  void show() => print("This is show in CA");
}

mixin CB{
  int a = 111;
  int b = 200;
  void hello() => print("This is hello in CB");
  void bye() => print("This is bye in CB");
}

// If CA and CB are used with CC and they have something common, CB's properties will be accessed :)
class CC with CA, CB{

}

void main() {
  
  // var cRef = CA(); Error -> For mixin we are unable to create objects unlike classes :(

  var cRef = CC();

  cRef.show();
  cRef.hello();
  cRef.bye();

  print("a is: ${cRef.a} and b is: ${cRef.b}");


}