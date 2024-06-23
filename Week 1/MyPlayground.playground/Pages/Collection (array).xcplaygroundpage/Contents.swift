//: [Previous](@previous)

//: ## Part 3: Collection
/*:
You should know how to declare an __Array__ in Swift, and also how to add, remove, insert, read an object in an array. You should be familiar with the following syntax: __append__, __insert__, __remove__.
 
Arrays are dangerous in Swift. If you access the array with an index which is out of range, your app will crash with fatal error. Please interact with the array very carefully.
 
 1. Please initialize an empty array with String data type and assign it to a variable named __myFriends__.
 */

     var myFriends: [String] = []

/*:
 2. According to Q1, now I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help me to add their name into __myFriends__ array at once.
*/
 
     myFriends += ["Ian", "Bomi", "Kevin"]
     print(myFriends)

/*:
 3. Oops, I forgot to add ‘Michael’ who is one of my best friends, please help me to add Michael to the end of __myFriends__ array.
*/

     myFriends.append("Michael")
     print(myFriends)

/*:
 4. Because I usually hang out with Kevin, please move Kevin to the beginning of the __myFriends__ array.
*/

     myFriends.swapAt(0, 2)
     print(myFriends)

/*:
 5. Use for...in to print all the friends in __myFriends__ array.
*/

     for friend in myFriends {
     print(friend)
}

/*:
 6. Now I want to know who is at index 5 in the __myFriends__ array, try to find the answer
 for me. Please explain how you get the answer and why the answer is it.


     //myFriends[5]
     There is no index five in the myFriends array, myFriends only have 0...3, four value in it.

 7. How to get the first element in an array?
*/

     if let firstFriend = myFriends.first {
     print(firstFriend)
}

/*:
 8. How to get the last element in an array?
*/

     if let lastFriend = myFriends.last {
     print(lastFriend)
}

/*:
 9. Please initialize a __Dictionary__ with keys of type String, value of type Int, and assign it to a variable named __myCountryNumber__.
*/

     var myCountryNumber: [String: Int] = [:]

/*:
10.Please add three values 1, 44, 81 to __myCountryNumber__ for keys ‘US’, ‘GB’, ‘JP’ respectively.
*/

     myCountryNumber = ["US": 1, "GB": 44, "JP": 81]
     print(myCountryNumber)

/*:
11.Change the value of ‘GB’ from 44 to 0.
*/

     myCountryNumber.updateValue(0, forKey: "GB")
     //myCountryNumber["GB"] = 0 (another way)
     print(myCountryNumber)

/*:
12.How to declare an empty dictionary?
*/

    //var myFriends: [String] = []
    //Just as Q1. Need to specify the type of keys and values.

/*:
13.How to remove a key-value pair in a dictionary?
*/

    //For example
     myCountryNumber.removeValue(forKey: "JP")
    //Remove a key means remove that entire key-value pair.
     myCountryNumber["GB"] = nil
    //Assign a nil value to a key also means to remove that entire key-value pair cause in dictionary, a key must have a value.
     print(myCountryNumber)


//: [Next](@next)
