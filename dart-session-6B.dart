// HAS-A Relationship
// Use Case - Zomato

// OOPS Prinicple
// Restaurant: name, phone, email, address, rating, menu
// Menu: title, description, numOfDishes, dishes
// Dish: name, description, price

// Objects are related to each other and we have majorly 2 important relationships
// 1. HAS-A | 1 to 1 | 1 to many | many to many
// 2. IS-A  | Inheritance -> Customer,  PrimeCustomer IS-A Customer


class Dish{
  String name;
  String description;
  int price;

  Dish({this.name, this.description, this.price});
}

class Menu{
  String title;
  String description;
  int numOfDishes;
  List<Dish> dishes;  // HAS-A Relationship | 1 to many

  Menu({this.title, this.description, this.numOfDishes, this.dishes});
}

class Restaurant{
  String name;
  String phone;
  String email;
  String address;
  double ratings;
  Menu menu;          // HAS-A Relationship | 1 to 1

  Restaurant({this.name, this.phone, this.email, this.address, this.ratings, this.menu});
}

void main(){

  // Traditional Laguages: Java/C++ OOPS Syntaxes
  /*Dish dish1 = Dish(name:"Noodles", description:"Hakka Noodles with Veggies", price:200);
  Dish dish2 = Dish(name:"Paneer Tikka", description:"Paneer Cubes Roasted in Tandoor", price:250);
  Dish dish3 = Dish(name:"Samsosa", description:"Aloo Stuffed Indian Snack", price:20);

  List<Dish> dishes = [dish1, dish2, dish3];

  var menu = Menu(title:"Indian Main Course", description:"Veg Food Items", numOfDishes:dishes.length, dishes:dishes);

  var restaurant = Restaurant(name: "Natural Soups & Shakes", phone:"+91 98765 54321", email:"naturals@example.com", address:"Country Homes", ratings:4.5, menu:menu);*/
  
  // Modern Laguages: JavaScript/TypeScrupt/Dart OOPS Syntaxes
  var restaurant = Restaurant(
    name: "Natural Soups & Shakes",
    phone:"+91 98765 54321",
    email:"naturals@example.com",
    address:"Country Homes",
    ratings:4.5, 
    menu:Menu(
      title:"Indian Main Course", 
      description:"Veg Food Items", 
      numOfDishes:3, 
      dishes:[
        Dish(
          name:"Noodles", 
          description:"Hakka Noodles with Veggies", 
          price:200
        ),
        Dish(
          name:"Paneer Tikka", 
          description:"Paneer Cubes Roasted in Tandoor", 
          price:250
        ),
        Dish(
          name:"Samsosa", 
          description:"Aloo Stuffed Indian Snack", 
          price:20
        )
      ]
    )
  );
  
}