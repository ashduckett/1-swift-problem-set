/*:
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
 ****
 */
//: ## Functions 
//: ### Exercise 14
//: The function `emojiLove` should take two `String` parameters and use them to print a `String` with  the format "stringParameterOne ❤️ stringParameterTwo".
func emojiLove(s1: String, s2: String) {
    print("\(s1) ❤️ \(s2)")
}


 
 emojiLove(s1: "cats", s2: "dogs") // prints "cats ❤️ dogs"
 emojiLove(s1: "udacity", s2: "students") // prints "udacity ❤️ students"
 emojiLove(s1: "peanut butter", s2: "jelly") // prints "peanut butter ❤️ jelly"
 emojiLove(s1: "ying", s2: "yang") // prints "ying ❤️ yang"
 

//: ### Exercise 15
//: The function `median` should take three `Int` parameters and return the `Int` value in the middle.
func median(num1: Int, num2: Int, num3: Int) -> Int {
    var median = 0
    
    
   
    // If num1 is the biggest number, check to see if either of the other numbers is bigger or smaller than the other.
    // If one is bigger, then it's the second biggest, so it must be the middle value.
    if num1 > num2 && num1 > num3 {
        if(num2 > num3) {
            median = num2
        } else if num3 > num2 {
            median = num3
        }
    // If num2 is the biggest number, check to see if either of the other numbers is bigger or smaller than the other.
    // If one is bigger, then it's the second biggest, so it must be the middle value here too.
    } else if (num2 > num1 && num2 > num3) {
        if num1 > num3 {
            median = num1
        } else if num3 > num1 {
            median = num3
        }
    // If num3 is the biggest number, check to see if either of the other numbers is bigger or smaller than the other.
    // If one is bigger, then it's the second biggest, so it must be the middle value here also.
    } else if (num3 > num1 && num3 > num2) {
        if num1 > num2 {
            median = num1
        } else if num2 > num1 {
            median = num2
        }
    // If we get here, we know we don't have three distinct numbers...
    } else {
        // num1 is a dupe, so return it
        if num1 == num2 || num1 == num3 {
            median = num1
        } else {
            // num2 must be the same as num3, so return the dupe
            median = num2
        }
        
    }
    return median
    
}


/* Example Function Call */
 
print(median(num1: 1, num2: 5, num3: 6)) // 5
print(median(num1: 2, num2: 1, num3: 4)) // 2
print(median(num1: 3, num2: 6, num3: 6)) // 6
print(median(num1: -10, num2: 10, num3: 0)) // 0
print(median(num1: 0, num2: 0, num3: 0)) // 0
print(median(num1: 2, num2: 3, num3: 1)) // 2
print(median(num1: 2, num2: 2, num3: 1)) // 2
 


/*:
 ### Exercise 16
 
 The function `beginsWithVowel` should take a single `String` parameter and return a `Bool` indicating whether the input string begins with a vowel. If the input string begins with a vowel return true, otherwise return false.
 
 First, you will want to test if the input string is "". If the input string is "", then return false. Otherwise, you can access the first character of a `String` by using `nameOfString.characters[nameOfString.startIndex]`.
 
 
 **Note**: It is assumed that the input string is given in English.
 */
func beginsWithVowel(stringToCheck: String) -> Bool {

    // If we have an empty string, it won't start with anything, false
    if stringToCheck.isEmpty {
        return false
    } else {
        // We have something to check
        
        // First grab the first character of the string, then build a string of vowels to check against
        let firstCharacter = stringToCheck.characters[stringToCheck.startIndex]
        let vowels = "aeiou"
        
        // Iterate over each of the vowels and compare each one with the first letter of stringToCheck
        // Note that each character in the loop is converted to a string so it can be compared with another string.
        // The other string being the firstCharacter converted to a string so we can lazily convert it to a lowercase version to match the vowels string's case
        for character in vowels.characters {
            if String(character) == String(firstCharacter).lowercased() {
                return true
            }
        }
    }
    return false
}

//Example Function Call
 
print(beginsWithVowel(stringToCheck: "Apples")) // true
print(beginsWithVowel(stringToCheck: "pIG")) // false
print(beginsWithVowel(stringToCheck: "oink")) // true
print(beginsWithVowel(stringToCheck: "udacity")) // true
print(beginsWithVowel(stringToCheck: "")) // false
 


/*:
 ### Exercise 17
 
 The function `funWithWords` should take a single `String` parameter and return a new `String` that is uppercased if it begins with a vowel or is lowercased if it begins with a consonant.
 
 - To uppercase a `String`, use `nameOfString.uppercased()`.
 - To lowercase a `String`, use `nameOfString.lowercased()`.
 - It is assumed that the input string is given in English.
 
 **Hint**: Re-use the `beginsWithVowel` function.
 */
func funWithWords(stringToCheck: String) -> String {
   
    if beginsWithVowel(stringToCheck: stringToCheck) {
        return stringToCheck.uppercased()
    } else if stringToCheck != "" {
        // Could have checked explicitly for consonants, but I expect a character that isn't a consonant would look the same in uppercase?
        return stringToCheck.lowercased()
    }
    // It started with neither a vowel or a consonant, so just return it as it is
    return stringToCheck
}

// Example Function Call
 
 funWithWords(stringToCheck: "Apples") // "APPLES"
 funWithWords(stringToCheck: "pIG") // "pig"
 funWithWords(stringToCheck: "oink") // "OINK"
 funWithWords(stringToCheck: "udacity") // "UDACITY"
 funWithWords(stringToCheck: "") // ""
 

/*:
 ****
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
 */
