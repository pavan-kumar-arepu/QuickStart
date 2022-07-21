import UIKit

var str = "Hello, playground"

func defaultInitailzer() {
    print("Dummy Method with out any parameters")
}

func defaultMethodWithSingleParameter(age: Int) {
    print("My age:", age)
}

func defaultMethodWithMultipleParameter(age: Int, degree: String) {
    print("My age is \(age) and I have completed \(degree) in 2008")
}

func defaultMethodWithMultipleParameterWithReturnValue(age: Int, degree: String) -> String {
    return "My age is \(age) and I have completed \(degree) in 2008, Congratulation, you have qualified!"
}

let firstSet: Set<Int> = [1,2,4,5]
let secondSet: Set<Int> = [5,3,19]

func someMethodName() -> (Set<Int>, Set<Int>) {
    return (firstSet, secondSet)
}


let firstS: String = "Hello"
let secondS: String = "World"

func consolidatedString() -> (Int, String, Double, String) {
    return (30, "BTech", 73.2, "Congratulations")
}


// TODO: Passing function/Closures as parameters and returning functions/Closures

defaultInitailzer()
defaultMethodWithSingleParameter(age: 30)
defaultMethodWithMultipleParameter(age: 30, degree: "BTech/CSE")
let myNewReturnValue = defaultMethodWithMultipleParameterWithReturnValue(age: 30, degree: "IT")

let (age, degree, percentage, welcome) = consolidatedString()
let summery = consolidatedString()

print(age)
print(summery.0)

// Avaialble
if #available(iOS 10, macOS 10.12, *) {
    // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
} else {
    // Fall back to earlier iOS and macOS APIs
}
