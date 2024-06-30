//: [Previous](@previous)

//: ## Part 1: Object-Oriented Swift

//: 1. Declare a class Animal with a property gender and a method eat() . The data type of gender should be enum Gender as below and when you call eat() method, it will print “I eat everything!”
class Animal {
    
    enum Gender {
        case male
        case female
        case undefined
    }
    
    var gender: Gender
    
    init(gender:Gender) {
        self.gender = gender
    }
    
    func eat() {
        print("I eat everything!")
    }
}

let animal = Animal(gender: .female)
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
let elephant = Elephant(gender: .male)
let tiger = Tiger(gender: .female)
let horse = Horse(gender: .female)
elephant.eat()
tiger.eat()
horse.eat()

//: 3. Declare a class Zoo with a property weeklyHot which means the most popular one in the zoo this week. The codes below can’t work correctly, please find what data type should A be and solve the problem. Note that tiger , elephant , and horse are instances of class Tiger, Elephant, and Horse respectively.

class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal) { 
        self.weeklyHot = weeklyHot
    }
}
let zoo = Zoo(weeklyHot: Tiger(gender: .female))

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

//: 4. What is an instance? What does Initilizer do in Class and Struct?
/*: Instance in structure is a value, and instance in class is object with identity. It can be created with using var and let.
 
 Initializer is a type of function that initialize the blueprint(class or struct), prepare the instance to be used.
 
*/

//:5. What’s the difference between Struct and Class ?
/*: Struct is value type and Class is reference type.
 
 __Struct__ has memberwise initializer(automatically generated for struct by swift compiler), so we don't need to declare it by ourself.
 
 While __Class__ need to declare its own initializer.
 
 __Structures'__ properties are immutable when they're declared as constants.
 
 __Classes'__ properties are mutable.
*/

//:6. What’s the difference between reference type and value type ?
/*: Refernce type means that when it comes to create a new instance, the new one is reference from the original one. And new one may affect the original one.(share the data) ex:class, function, closure

 Value type means that when it comes to create a new instance, the new one is copied from the original one. And the original one won't be affected by new one.(copy the value) ex: struct, enum, tuple
 
 */

//:7. What’s the difference between instance method and type method ?
/*:
Instance method needs a instance to execute the method, and can't be called on a type.
 
Type method can only be called on a type, and can't be called on an instance.
*/

//:8. What does self mean in an instance method and a type method respectively?
/*: self in __instance method__ is equal to instance itself.
 
 self in __type method__ refer to the type itself, not the instance in the type.
 
 
*/


//: [Next](@next)
