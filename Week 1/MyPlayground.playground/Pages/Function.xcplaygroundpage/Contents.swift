//: [Previous](@previous)

/*:
 ## Part 5: Function

1. What are the return types in the following statements?
 
   func birthday( ) -> String {}
 
      String
 
   func payment( ) -> Double {}
 
      Double
 
2. Please declare a function named __multiply__ with two arguments __a__ and __b__. This function won’t return any value and will only print out the result of __a * b__ . Be noticed that we want to give the argument __b__ a default value of 10.
*/

     func multiply(a: Int, b: Int = 10) {
        print("\(a * b)")
}
     multiply(a: 2, b: 10)

/*:
3. What’s the difference between __argument label__ and __parameter name__ in a function?


     argument label is used when calling the function.
 
     parameter label is used inside the fuction.


4. Please declare a function named __greet__ with __person__ as an argument label and __name__ as a parameter name. This __greet__ function will return a String. For example, if you call the __function__ greet like this:
 
   greet(person: "Luke")
 
   It will return the string: “Hello, Luke”.
*/
     
     func greet(person name: String) -> String {
         print("Hello, \(name)")
         return "Hello, \(name)"
    
}
     greet(person: "Luke")

//: [Next](@next)

