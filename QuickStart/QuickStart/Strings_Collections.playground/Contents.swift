import UIKit

var str = "Hello, playground"

let someSampleString = "String Literal"


// Multiline String storage
var mutableString = "New Mutable String"

let myParagraph = """
 A string is a series of characters, such as Swift, that forms a collection. Strings in Swift are Unicode correct and locale insensitive,

    and are designed to be efficient. The String type bridges with the Objective-C class NSString and offers interoperability with C functions that works with strings.

You can create new strings using string literals or string interpolations.

A string literal is a series of characters enclosed in quotes
"""



print(myParagraph)


// Unicode
let registerImage = "\u{00AE}"
var heartSymbole = "\u{1F496}"


// Different way of string initializations
var firstName = ""
var lastNameWithStringObject = String()


// Mutability

var newString = "Hello"
newString += " World"


// Characters

for singleCharacter in newString {
    print(singleCharacter)
}


// String Interpolation

let totalValue = 30
let detailedTotalValue = "My total value is \(totalValue), we also got 100 time profit and next year, we will get approximately \(totalValue * 2) "

print(detailedTotalValue)


// Accessing

let welcomeMessage = "Hello, How are you"
welcomeMessage[welcomeMessage.startIndex]

print(welcomeMessage.uppercased())
//welcomeMessage[welcomeMessage.endIndex]
print(welcomeMessage.endIndex)



