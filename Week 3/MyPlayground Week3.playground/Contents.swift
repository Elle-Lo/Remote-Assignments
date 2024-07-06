//: 1. What is a closure ? How to execute a closure?
/*: Closure is similar to function, like function without a name. Except name, it doesn't have argument label and can't assign the default value, but also have parameter list, return type, and body.
*/
// {(parameter: type) -> return type in
//   body
// }

var number = {
    (a: Int, b: Int) -> Int in
    a * b
}

number(3, 2)

//: 2. Please declare a closure whose input type is Int, output type is Bool. The functionality of this closure is to verify if the input is odd or not. Return true if it’s odd and vice versa.

var odd = { (a: Int) -> Bool in
    a % 2 != 0
}

odd(2)
odd(7)

//shorter version closure
var isOdd = {$0 % 2 != 0}

isOdd(4)
isOdd(9)

//: 3. Please complete the following function that prints a triangle made of asterisks. For example, here’s what the output of __printTriangle(layer: 5)__ should be:


func printTriangle(layers: Int) {
    
    var component = " "
    
    for _ in 1...layers {
    component += "*"
        
    print(component)
        
    }
}

printTriangle(layers: 5)
