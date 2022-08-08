import UIKit

var str = "Hello, playground"


func personInTheHouse() -> ((Int) -> String) {
    
    func doProcess(age: Int) -> (String) { // nested function
        return ("Person Age is \(age)")
    }
    return doProcess // or return doProcess(process:)
}

let person = personInTheHouse()


person(100)

// prints “The person is playing cricket.”



  
/*
 { (var) in
 //Statement
 }
 */



func addTwoNumbers(number1:Int, number2:Int) -> Int {
    number1 + number2
}

addTwoNumbers(number1: 8, number2: 2)


// One way of mentioning a closure

let closure: (Int, Int) -> Int = { (number1, number2) in
    return number1 + number2
}
closure(80,20) // the result is 10


// Another way of mentioning closure
let intergerClousre = { (number1: Int, number2: Int) -> Int in
    return number1 + number1
}


// Advanced way of using the closure

var shortHandClosure:(Int,Int)->Int = {
    return $0 + $1
}
shortHandClosure(8,2) // result is 10


// Implicit 'return'
// Functions, Closure, StoredProperties, Lazy Properties

var implicitClosure:(Int,Int)->Int = { $0 + $1 }
implicitClosure(8,2) // result is 10

// Function which takes integer as its first param, and a closure as its 2nd parameter (Int) -> String

func takeIntergers(number: Int, andClosureAsSecondParam: (Int) -> String)  -> String {
    "Hello this fuction return string"

}

takeIntergers(number: 20) { (num) -> String in
    "New Number \(num)"
}

// Function which takes integer as its first param, and a closure as with no param and no return

func takeIntergers(number: Int, andClosureWithNoParamAndReturnType: () -> Void)  -> String {
    "Hello this fuction return string"
}

takeIntergers(number: 20) { _ in
    "Hello"
}

let callStringWtihClosure: () -> String = { "Hello"    }


// Trailing Closure
// Escapting Closure
// Non-Escapting Closure
// Auto Closure


