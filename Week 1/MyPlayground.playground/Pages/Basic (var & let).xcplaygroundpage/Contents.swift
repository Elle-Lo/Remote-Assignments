//: [Previous](@previous)

//: ## Part 2: Basic
/*:
1. Please explain the difference between let and var.
 
    __let__ is constant and __var__ is variable.
 
    __let__ stores a value that can not be changed in the future.
 
    __var__ stores a value that can be change in the future.
 
2. In Swift, we usually define a variable through the syntax as below:

   __var x: Int = 10__

   We use the formula: __2 * radius * pi__ to calculate the circumference. Now, please define a variable pi and assign a value to it. You can refer to the syntax above while thinking about using var or let and which data type it should be.
 */

     let pi: Double = 3.14 //cause pi will not change
     let radius: Int = 1
     let circumference = 2 * 1 * pi

/*:
3. Declare two constants x and y of type Int then assign any value to them. After that, please calculate the average of x and y and store the result in a constant named average.
*/

     let x: Int = 2
     let y: Int = 6
     let average = (x + y)/2
  
/*:
4. Following Q3, now we want to save the average in a record system, but the system doesn’t accept 65 but 65.0.
 
* Please solve this problem so that we can put the average in the record system.
* Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ).
*/

     let averageInSystem = Double(average)
     print(averageInSystem)
     //(10/3) are type Int, and (10.0/3.0) are type Double or Float

 
/*:
5. Declare two constants that values are 10 and 3 each, then please calculate the
remainder and save the result in a constant named remainder.
*/

     let a = 10
     let b = 3
     let remainder = 10 % 3

/*:
6. Swift is a very powerful language that can infer the data type for you (Type Inference) while we still need to know the basics well. Please change the following codes into the ones with the type annotation.
 
   Ex: var x = 10 => var x:Int = 10
*/

     var flag:Bool = true
     var inputString:String = "Hello, world."
     let bitsInBite:Int = 8
     let averageScore:Double = 86.8

/*:
7. What is Type Inference in Swift?
 
    Type Inference in Swift means that Swift will automatically infer the type of your variables or constants to be same as the value you set after "=".
 
 8. What is the issue about this piece of code?
 
    Ex:
 
    var phoneNumber = 0987654321
 
    phoneNumber = "Hello, world."
 
    The type of phoneNumber is already set as type Int, so it can not be assigned to a String value.
 
 
 9. __Compound assignments__ operators are very useful when programming. Please declare a variable __salary__ with initial value 22000, and use __unary plus operator__ adding 28000 to salary, so it will be 50000 after this process.
*/

     var salary = 22000
     let finalSalary = salary + 28000

/*:
 10. You should notice that ‘=’ has a different meaning in programming. In the real world, ‘=’ means equal while in programming, ‘=’ means assign. You simply put the right hand side data into the left hand side variable or constant.
 
     Now please write down the __Equality__ operator in Swift.
 */
     x == 0 //cause x == 2


//: [Next](@next)🧚‍♀️
