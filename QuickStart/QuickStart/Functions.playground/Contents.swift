import UIKit

var str = "Hello, playground"

// MARK:- Normal Functions

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

func defaultMethodWithSingleParam(age: Int, AndWithfunction: ()) {
    
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

// To enable/disable particular feature based on their OS by using '#available'

if #available(iOS 10, macOS 10.12, *) {
    // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
} else {
    // Fall back to earlier iOS and macOS APIs
}

// MARK:- Advanced Function

/// Below method takes 'function' as a one of its parameter and returns a 'function' which actually returning a 'Double' value|
func operate(x: Double, y: Double, function: (Double, Double) -> Double) -> Double {
    return function(x, y)
}

/// Below method does a simple 'addition' operation
func add(number1: Double, number2: Double) -> Double {
    return number1 + number2
}

/// Calling 'operate' method by passing a 'function'
var helo = operate(x: 1, y: 2, function: add)

func greeting(message: String) {
    print("Hello guru")
}

/// Below method just returns a string from a given string
func sendGreeting(message: String) -> String {
    return "Welcome!"
}

/// Below method does a simple 'multiplication' operation of two integers
func multiply(x: Int, y: Int) -> Int {
    return x * y
}

/// Below method return a 'method' which actually returns a 'Int' value
func returnMultiplyFunction(x: Int, y: Int) -> Int {
    return multiply(x: x, y: y)
}

let multipliedValue = returnMultiplyFunction(x: 3, y: 4)

/// Below method returns a 'method' which returns 'nothing'
func returnAVoidFunction() -> () {
    return greeting(message: "Whats app dude!")
}

let simpleMessage = returnAVoidFunction()

/// Below method returns a 'method' which returns a 'string'
func returnAFunctionWhichReturnsValue() -> (String) {
    return sendGreeting(message: "Whats app dude!")
}

let messageFromFunction = returnAFunctionWhichReturnsValue()
