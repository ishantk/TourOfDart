// Functional Programming in Dart
// Dart here supports writing functions to solve problems which can occur again and gaina
// Further, we need not to write Class to create functions like java

// In our program, we may write a piece of logic (may be multiple lines of code) which is used to solve the problme again and agian
// So such code we place in a fucntion :)

// function -> 1. name 2. input(s) 3. output(return/ack)

void showMaxNumber(var data){
 
  var max = data[0];  
  for(int i=1;i<data.length;i++){
    if(data[i] > max){
      max = data[i];
    }
  }
  
  print("Max in $data is: $max");
}

// int is return type -> output
int getMaxNumber(var data){
 
  var max = data[0];  
  for(int i=1;i<data.length;i++){
    if(data[i] > max){
      max = data[i];
    }
  }
  
  return max; // function with output -> data returned as int
}

//int addNumbers(var num1, var num2){
// as we are not sure, what can be returned back as per the functions operation in data, let us not specify any return type
addNumbers(var num1, var num2){
  var sum = num1 + num2;
  return sum;  
}

// main is a function
void main(){
  print("This is Awesome");
  //0: maharashtra, 1: gujrat so on and so forth
  //                              0       1      2      3      4
  var covid19Cases21July = <int>[102441, 45311, 34321, 65677, 187654];
  var covid19Cases22July = <int>[132441, 49311, 44321, 295677, 81654];
  
  var iplTeamData = [18, 17, 11, 10, 20];
  
  /*
  var max21July = covid19Cases21July[0];  
  for(int i=1;i<covid19Cases21July.length;i++){
    if(covid19Cases21July[i] > max21July){
      max21July = covid19Cases21July[i];
    }
  }
  
  print("Max Cases for 21 July are: $max21July");
  
  var max22July = covid19Cases22July[0];  
  for(int i=1;i<covid19Cases22July.length;i++){
    if(covid19Cases22July[i] > max22July){
      max22July = covid19Cases22July[i];
    }
  }
  
  print("Max Cases for 22 July are: $max22July");
  */
  
  showMaxNumber(covid19Cases21July);
  showMaxNumber(covid19Cases22July);
  showMaxNumber(iplTeamData);
  
  var max21July = getMaxNumber(covid19Cases21July);
  var max22July = getMaxNumber(covid19Cases22July);
  
  print("Max Cases for 21 July are: $max21July");
  print("Max Cases for 22 July are: $max22July");
  
  print("sum of 10 and 20 is: ${addNumbers(10, 20)}");
  print("sum of 10.1 and 20.2 is: ${addNumbers(10.1, 20.2)}");
  
}

// when we have our function doing one line of execution
// lambda expression :) Single Expression Execution by Function
//void main() => print("This is Awesome Again");
