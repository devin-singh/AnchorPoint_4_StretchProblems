/*:
 # Monday Stretch Problem 4.1
 ## Convert to Scientific Notation
 
 ### Instructions:
 1. Create a function called *convertToScientificNotation* that takes in a float as a parameter and returns a string.
 2. The return value should be a string of the number in scientific notation (ex: 8.9 returns "8.9 x 10 ^ 0").
 
 ### Black Diamond 💎💎💎
 Handle negative numbers.
*/

import UIKit

//: [Next](@next)



func convertToScientificNotation(num: Double) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .scientific
    formatter.positiveFormat = "0.###E^0"
    formatter.exponentSymbol = " x 10 ^ "
    guard let sciNotation = formatter.string(for: num) else { return "" }
    return sciNotation
}


convertToScientificNotation(num: -12.3415)
