/*:
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous)
 ****
 */
import Foundation
//: ## Challenge
//: **This exercise is completely optional and is not required for completing the Swift Problem Set.**
//: ### Challenge 1
//: Mystery code! What does this code do? Briefly, using comments, describe what is happening in each line. **Hint**: You may need to look up [Int initializers](http://stackoverflow.com/questions/30739460/toint-removed-in-swift-2).

// Declare and initialise an array of seven strings
let array = ["A", "13", "B", "5", "87", "t", "41"]

// Declare and initialise an integer with a value of 0
var sum = 0

// Iterate over each string
for string in array {
    // If you get back something because the initialiser didn't bring back an optional with nothing in it, meaning the string was a valid numeric representation...
    if Int(string) != nil {
        // Add the string to the sum variable
        let intToAdd = Int(string)!
        sum += intToAdd
    }
}
// Hence 13, 5, 87 and 41 equal 146
// (I'm guessing about the Int initialiser using optionals, but I think optionals are the only things capable of coming back as nil)
print(sum)

/*:
 ****
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous)
 */
