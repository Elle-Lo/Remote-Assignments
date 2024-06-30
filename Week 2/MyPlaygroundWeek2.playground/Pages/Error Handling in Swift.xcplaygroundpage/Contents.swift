//: [Previous](@previous)

//: ## Part 4: Error Handling in Swift


enum GuessNumberGameError: Error {
    case wrongNumber
}

class GuessNumberGame {
    
    var targetNumber = 10
    var number: Int
    
    init(targetNumber: Int = 10, number: Int = 0) {
        self.targetNumber = targetNumber
        self.number = number
    }
    
    func guess(number: Int) throws {
        guard number == targetNumber else {
         throw GuessNumberGameError.wrongNumber
        }
                
        print("Guess the right number: \(targetNumber)")
    }

}
var guessGame = GuessNumberGame()

do {
    try guessGame.guess(number: 20)
    
} catch GuessNumberGameError.wrongNumber {
    print("It's the wrong number!")
}


//:Read the code above first and paste it in the playground file, there is an error inside the code. Please solve the error by adding a piece of code in the file. Call guess(number:) and pass 20 as the argument after you fix the problem.


//: [Next](@next)
