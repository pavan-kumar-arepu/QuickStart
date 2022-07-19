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



// Collection: Array, Dictionaries and Sets
// Arrays

let nameArray = ["Gopal", "Krishna", "Ram"]
let ageArray = [12, 21, 42]
let employeeCourse = ["DataStuctures", "OOPS", "M1"]
let studentDetails = ["Pavan", 123, 2431.31, nameArray] as [Any]


var employeDetails = ["age": 32, "name": "Kumar", "Occupation": "SelfEmployeed", "employeeCourse": employeeCourse] as [String : Any]


employeDetails["age"]
employeDetails["employeeCourse"]
employeDetails["salary"] = 20000


print(employeDetails)
