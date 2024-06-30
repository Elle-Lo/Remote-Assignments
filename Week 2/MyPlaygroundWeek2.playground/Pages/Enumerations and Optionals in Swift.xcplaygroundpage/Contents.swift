//: [Previous](@previous)

//: ## Part 2: Enumerations and Optionals in Swift

//:1. There are several gasoline types, 92, 95, 98, and diesel that we can use enum to model them.
/*:
 * Please declare an enum named Gasoline to model gasoline.
 
 * Every kind of gasoline has its price. Please declare a computed property named price and a method named getPrice separately in Gasoline enum that both will return different prices depending on different gasoline.
 
 * Please establish raw values for Gasoline . The data type of raw value should be String. For example, Gasoline.oil92.rawValue should be “92”.
 
 * Please explain what enum associated value is and how it works.
 
 */
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case oilDiesel = "diesel"
    
    
    var price: Int {
        switch self {
        case .oil92:
            return 10
        case .oil95:
            return 20
        case .oil98:
            return 30
        case .oilDiesel:
            return 15
        }
    }
        
    func getPrice() -> Int {
        return self.price
        }
    }

Gasoline.oil92.rawValue

//: enum associated value is the value each cases in enum carry(inside the parenthesis), it can be any type and store different kinds of information.
//: It can let us use the value that store inside when we access the case.


//: 2. Optional is a very special data type in Swift. Take var a: Int? = 10 for example, the value of a will be nil or Int . You should have learned how to deal with Optional.
/*:
 * People would like to have pets, but not everyone could have one. Declare a class Pet with name property and a class People with pet property which will store a Pet instance or nil. Please try to figure out what data type is suitable for these properties in Pet and People.
 
 * Please create a People instance. Use guard let to unwrap the pet property and print its name.
 
 * Please create another People instance. Use if let to unwrap the pet property and print its name.
 
 
 */
class Pet {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

class People {
    var pet: Pet?
        
    init(pet: Pet?) {
        self.pet = pet
    }
}

let person = People(pet: Pet(name: "Pudding"))
let pet = Pet(name: "dog")

func personPetName() {
    guard let petName = person.pet?.name else {
        print("I don't have a pet")
        return
    }
    print("My pet's name is \(petName)")
}

if let petName = person.pet?.name {
    print("My pet's name is \(petName).")
} else {
    print("I don't have a pet.")
}


//: [Next](@next)
