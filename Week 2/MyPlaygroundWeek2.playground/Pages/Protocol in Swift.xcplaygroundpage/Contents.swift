//: [Previous](@previous)

//: ## Part 3: Protocol in Swift
//: 1. Declare a struct Person with a name property type String and a protocol name PoliceMan . There is only one method arrestCriminals with no argument in the protocol.
//: 2. Make struct Person conform to PoliceMan protocol.
//: 3. Declare a protocol ToolMan with a method fixComputer that has no argument.
//: 4. Add a property toolMan to the struct Person with data type ToolMan.
//: 5. Declare a struct named Engineer that conforms to the ToolMan protocol.
//: 6. Create a Person instance with the name “Steven” and also create the relative data you need to declare this instance.
protocol Policeman {
    func arrestCriminals()
}

protocol ToolMan {
    func fixComputer()
}

struct Person: Policeman {
    let name: String
    let toolMan :ToolMan
    
    func arrestCriminals() {
        
    }
}

struct Engineer: ToolMan {
    func fixComputer() {
        
    }
}


let steven = Person(name: "Steven", toolMan: Engineer())
//: [Next](@next)
