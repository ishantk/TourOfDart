void main(){
  
  // Data Types: [SINGLE VALUE CONTAINERS]
  // Numbered : int and double
  // Textual  : String
  // Logical  : bool
  
  //String cafeName = 'John\'s Coffee Shop';
  String cafeName = "John's Coffee Shop";
  print(cafeName);
  
  // One Line String even if from developer's perspective it is a multi line
  var quote = 'Work Hard, Get Luckier'
              'Be Exceptional'
              "Be Consistent" + "And Value Time";
  print(quote);
  
  // Multi Line String
  var message = """This is John.
I am here to tell that we will go to a restaurant tonight
Thank You
  """;
  print(message);
  
  // Raw Strings: begins with r and will take special chars eg: \n as data only
  String line = r"This is a Good Day.\nSee ya now tomorrow.";
  print(line);
  
  bool isInternetOn = true;
  isInternetOn = false;
  
  print("Is Internet On $isInternetOn");
}

