// Tour of Dart - Part 2
// Model: Multi Value Container - Combinations
//        JSON -> Java Script Object Notation : Dictionary/Map of Lists and Dictionaries
void main(){

    // Map
    var restaurant = {
      "name": "Gopal Sweets",
      "phone": "99999 88888",
      "address": "Sarabha Nagar",
      "price_per_person": 150,
      "time_to_deliver": 35,
      "categories": ["mithai", "veg", "north india"]
    };
  
   print(restaurant);
  
   restaurant["reviews"] = 5.0;
  
   print(restaurant);
  
   var dish1 = {
     "name": "Samosa",
     "price": 20
   };
  
  var dish2 = {
     "name": "Gujiya",
     "price": 200
   };
  
  var dish3 = {
     "name": "Noodles",
     "price": 150
   };
  
  var dishes = [dish1, dish2, dish3];
  
  restaurant['dishes'] = dishes;
  
  print(restaurant);
  
}

// Assignment: Represent Data in Map and Lists from the website: https://www.covid19india.org/