import UIKit

var str = "Hello, playground"


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

// Checking for emptyness

var shoppingList = ["Eggs", "Milk"]

if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list isn't empty.")
}

// Insert to Arrays

shoppingList.insert("Maple Syrup", at: 0)

// Deletion from Array
shoppingList.remove(at: 0)

print(shoppingList)

for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}

for (i, v) in shoppingList.enumerated() {
    print("\(i) : \(v)")
}

let oddDigits: Set = [1, 2, 4, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 3, 8]

oddDigits.union(evenDigits).sorted()

let yetAnotherPoint = (1, -1)

// Sets

let firstSet: Set = [1,2,4,5]
let secondSet: Set = [5,3,19]

firstSet.intersection(secondSet)
firstSet.union(secondSet)
