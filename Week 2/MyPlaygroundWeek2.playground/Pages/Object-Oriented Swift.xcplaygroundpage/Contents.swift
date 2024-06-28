//: [Previous](@previous)

//: ## Part 1: Object-Oriented Swift

//: 1. Declare a class Animal with a property gender and a method eat() . The data type of gender should be enum Gender as below and when you call eat() method, it will print “I eat everything!”
class Animal {
    enum Gender {
        case male
        case female
        case undefined
    }
    
    func eat() {
        print("I eat everything!")
    }
}

let animal = Animal()
animal.eat()
//: 2. Declare three classes: Elephant , Tiger , Horse that inherits from Animal and override the eat() method to print what they usually eat.
class Elephant: Animal {
    override func eat() {
        print("Elephant eats apples~")
    }
}

class Tiger: Animal {
    override func eat() {
        print("Tiger eats meat!")
    }
}

class Horse: Animal {
    override func eat() {
        print("Horse eats grass.")
    }
}
let elephant = Elephant()
let tiger = Tiger()
let horse = Horse()
elephant.eat()
tiger.eat()
horse.eat()
//: 3. Declare a class Zoo with a property weeklyHot which means the most popular one in the zoo this week. The codes below can’t work correctly, please find what data type should A be and solve the problem. Note that tiger , elephant , and horse are instances of class Tiger, Elephant, and Horse respectively.
class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: ) { }
}
let zoo = Zoo(weeklyHot: Tiger())

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

//: 4. What is an instance? What does Initilizer do in Class and Struct?
/*:
 
*/

//:5. What’s the difference between Struct and Class ?
/*: Struct is reference type and Class is value type.
 
 Struct has free initializer, while class need the initializer.
*/

//:6. What’s the difference between reference type and value type ?
/*: Refernce type means that the copy is from the initial value, and value type is copy a initial one.
 
 */

//:7. What’s the difference between instance method and type method ?
/*:
*/

//:8. What does self mean in an instance method and a type method respectively?
/*:
 
 
*/


//: [Next](@next)
