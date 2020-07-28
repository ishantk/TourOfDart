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
  
  List<Dish> getSortedDishes(){ // Low to High
    // Buuble Sort, Insertion Sort, Merge Sort, Quick Sort, heap Sort, Radix Sort....
    // we may have an API(Application Programming Interfaces) in Dart to sort the List
    /*dishes.sort(
      (dish1, dish2){
        
      }
    );*/
  }
  
  Dish getDish(String name){
    // return a Dish whose name matches in the List
    // Linear Search, Divide and Conquer...
    //dishes.contains() API
  }
  
  Dish getDishBySomeAplhabets(String input){ // input = 'n'
    // return a Dish whose name matches in the List
    // Linear Search, Divide and Conquer...
    //dishes.contains() API
  }
  
  List<Dish> getFilteredDishes(int price){
     // A loop and if condition to return back the result
     
     for(int i=0;i<dishes.length;i++){
       Dish dish = dishes[i];
       if(dish.price<=200){
         
       }
     }
     
   }
  
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
  
  // Final Assignment for how to work on Dart Based Syntaxes for algorithmic problems
  // 1. Filter: example: get list of dishes whose price is <= 200
  // 2. Search: example: search Noodles as a dish
  //                     simple search -> matching the exact name
  //                     complex/exhaustive -> search restaurants containining some alphabets enetred by user
  // 3. Sort : example : dishes as per price low to high
  
}


/*
  
  More of Dart- > Comes as a part of flutter app development
 
  Async Programming
    Futures
    
  map function
  
  Streams | Play with lot of data :)
 
 */