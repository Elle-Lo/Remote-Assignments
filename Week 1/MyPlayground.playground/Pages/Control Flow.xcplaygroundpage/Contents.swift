//: [Previous](@previous)

//: ## Part 4: Control Flow
/*:
1. Here is an array:

   let lottoNumbers = [10, 9, 8, 7, 6, 5]
 
   Please use For-In loop and __Range__ to print the last three members in the
__lottoNumbers__ array.
 */

     let lottoNumbers = [10, 9, 8, 7, 6, 5]
     for lastThreeNumbers in lottoNumbers[3...5] {
         print(lastThreeNumbers)
}
     print("___")

/*:
2. Please use a for-in loop to print the results as the images listed below respectively
(through __lottoNumbers__):
*/


     for countDown in lottoNumbers.reversed() {
         print(countDown)
}
     print("___")

     for evenNumber in lottoNumbers where evenNumber % 2 == 0 {
         print(evenNumber)
}
     print("___")
/*:
3. Please use a __while loop__ to solve the Q2.
*/

     var index = 5
     while index >= 0 {
         print(lottoNumbers[index])
         index -= 1
}
     print("___")

     index = 0
     while index <= 5 {
        print(lottoNumbers[index])
        index += 2
}
     print("___")
/*:
4. Please use a __repeat-while loop__ to solve Q2.
*/
     index = 5
     repeat {
        print(lottoNumbers[index])
        index -= 1
} while index >= 0
     print("___")

     index = 0
     repeat {
        print(lottoNumbers[index])
        index += 2
} while index <= 5

/*:
5. What are the differences between __while__ and __repeat-while__?

     while loop check the condition fist. It execute the code(inside curly braces) only when the condition is true.
     repeat loop execute the code(inside curly braces) first(first time) then see if the condition is true or not.


6. Declare a variable __isRaining__ to record the weather. Please write a statement that if the weather is raining, print “It’s raining, I don’t want to work today.”, otherwise print “Although it’s sunny, I still don’t want to work today.”
*/
     var isRaining: Bool? = true
     isRaining = false
     isRaining = true

     if isRaining == true {
        print("It’s raining, I don’t want to work today.")
} else {
        print("Although it’s sunny, I still don’t want to work today.")
}

/*:
7. In a company, we might use numbers to represent __job levels__. Let’s make an example. We use 1 for the Member, 2 for Team Leader, 3 for Manager, and 4 for Director.
Now, declare a variable named jobLevel and assign a number to it. If the jobLevel number is in our list, print the relative job title name; if not, just print “We don't have this job”. Please use the __if-else__ statement and the __switch__ statement to complete this requirement separately.
 */

     var jobLevel = 3

     //if-else statement
     if jobLevel == 1 {
        print("Member")
} else if jobLevel == 2 {
        print("Team Leader")
} else if jobLevel == 3 {
        print("Manager")
} else if jobLevel == 4 {
        print("Director")
} else {
        print("We don't have this job")
}

     //switch statement
     switch jobLevel {
     case 1: "Member"
     case 2: "Team Leader"
     case 3: "Manager"
     case 4: "Director"
     default: "We don't have this job"
}




//: [Next](@next)
