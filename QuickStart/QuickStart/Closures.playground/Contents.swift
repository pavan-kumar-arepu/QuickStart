import UIKit

var str = "Hello, playground"


/// inout
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)

/// without inout
func doubleInPlace1(number: Int) {
    var number1: Int = 0
    number1 *= 2
}

var myNum1 = 10
doubleInPlace1(number: myNum)


/// Closure Expression
/*
 
 Syntax:
 { (parameters) -> returnType in
    statments
 }
 */

/*
func someFunctionTakeClosure(closure: (String) -> Void) {
    // function body is here
   // var receivedClosure = closure
}

someFunctionTakeClosure(closure: { str in
    print("printing without trailing closure")
})

someFunctionTakeClosure() { str in
    print("printing from trailing closure")
}


 */
/// Trailing Closures
///

let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

/*
let stringsWithAutoClosure = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 10
    return output
}

print("String:", stringsWithAutoClosure)
*/

/*
let stringsWithOutAutoClosure = numbers.map({(number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 10
    return output
})

print("String:", stringsWithOutAutoClosure)

*/

func loadData(from value: Bool, completion: (String) -> Void, onFailure: () -> Void, atTheEnd: (String) -> String) -> String {
    
    if value {
        completion("welcomString")
    } else {
        onFailure()
    }
    
    return atTheEnd("GoodBye")
}

var finalValue = loadData(from: true) { (str) in
    //Do what ever you want 'str'
    print("Data Loaded")
} onFailure: {
    // Show error message
    print("Sorry data failed")
} atTheEnd: { (newStr) -> String in
    return newStr
}

print(finalValue)




func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    print(runningTotal)
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)

var incre1 = incrementByTen
var incre2 = incrementByTen

incre1()
incre2()

let incrementByFive = makeIncrementer(forIncrement: 5)
incrementByFive()
incrementByFive()


/// Escaping and non-escaping closures

var completionHandlers: [ () -> Void ] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

func someFunctionWithOutEscaptingClosure(closure: () -> Void) {
    closure()
}

class MyExampleClass {
    var x = 30
    func doSomething() {
        someFunctionWithEscapingClosure {
            self.x = 100
        }
        
        someFunctionWithOutEscaptingClosure {
            x = 200
        }
    }
}

let myInstance = MyExampleClass()
myInstance.doSomething()

print(myInstance.x)

print(completionHandlers.first?())

print(myInstance.x)

/// AutoClosure
var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)



let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)

customerProvider()
print(customersInLine.count)

print("Now serving \(customerProvider())!")


func serve(customer customerProvider: () -> String) {
    print("Now serving \(customerProvider())!")
}

serve { () -> String in
    customersInLine.remove(at: 0)
}


// customersInLine is ["Ewa", "Barry", "Daniella"]
func serve(customer customerProvider: @autoclosure () -> String) {
    print("Now serving \(customerProvider())!")
}

serve(customer: customersInLine.remove(at: 0))


func add(one: Int, two: Int) -> Int {
    return one + two
}
var mathOperation: (Int, Int) -> Int = add

mathOperation(2,3)


let welcom: () -> Void = {
    print("Welcome")
}

welcom()

let hello: (String) -> Void = { str in
    print("Whatsup dude \(str)")
}

hello("Kumar")

// Shorthand Argument Names

let testShorthand: (Int, Int) -> Int = { return $0*$0 + $1 }

testShorthand(2,1)

/// implicit Returns from Closure:
let shortForm: (Int, Int) -> Int = { $0 * $0 + $1 }
shortForm(2,3)






/// Trailling Closures


func makeSquareOf(digit: Int, onCompletion: (Int) -> Void) {
    let squareDigit = digit * digit
    onCompletion(squareDigit)
}


makeSquareOf(digit: 3) { (sqDigit) in
    print("Square is \(sqDigit)")
}

makeSquareOf(digit: 5, onCompletion: { sqNum in
    print("SqRoot is \(sqNum)")
})


/// Capturing Value

class CapturingLists: NSObject {
    let digit = 10
    
    override init() {
        super.init()
        
        makeSquareNumber { [digit] (sqDigit) in
            print("Square of \(digit) is \(sqDigit)")
        }
    }
    
    func makeSquareNumber(onCompletion: (Int) -> Void) {
        let sqDigit = digit * digit
        onCompletion(sqDigit)
    }
}


var list = CapturingLists()

/// Capturing List with Typealiasing

class CaptureList: NSObject {
    let digit = 20
    
    typealias onCompletionHandler = (Int) -> Void
    
    override init() {
        super.init()
        
        makeSquareOfValue { (sqDigit) in
            print("New Square of \(digit) is \(sqDigit)")
        }
    }
    
    func makeSquareOfValue(onCompletion: onCompletionHandler) {
           let squareDigit = digit * digit
           onCompletion(squareDigit)
       }
}

var newList = CaptureList()



func personInTheHouse() -> ((Int) -> String) {
    
    func doProcess(processAge: Int) -> String {
        return "Person age \(processAge)"
    }
    
    return doProcess(processAge:)
}

let person = personInTheHouse()

print(person(100))


let inferredClosure = {(x:Int,y:Int)->Int in x + y }


let inferredReturnTypeClosure = {(number1:Int) in number1 }

let callStringWithClosure: () -> String = {
    return "Hello"
}


var addClosure:(Int,Int)->Int = { $0 + $1 }
func returnClosure() -> (Int,Int)->Int {
return addClosure
}

returnClosure()(10,20)


func setupView() -> UIView {
let view = UIView()
view.backgroundColor = .red
return view
}
let someView = setupView() // returns a red view
print(someView)


let setupViewUsingClosure = { () -> UIView in
let view = UIView()
view.backgroundColor = .green
return view
}
let someOtherView = setupViewUsingClosure() // returns a green view
print(someOtherView)


let setupViewUsingClosure1: UIView = {
let view = UIView()
view.backgroundColor = .green
return view
}()


var i = 0
var closureArray = [()->()]()
for _ in 1...5 {
    closureArray.append { [i] in
        print(i)
    }
    i += 1
}


func someFunctionWithNonescapingClosure1(closure: () -> Void) {
    closure()
}
func someFunctionWithEscapingClosure1(completionHandler: @escaping () -> Void) {
    completionHandler()
}
class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure1 { self.x = 100
            print("FromEscapt",self.x)
        }
        someFunctionWithNonescapingClosure1 { x = 200
            print("FromNonescape",x)
        }
    }
}


let myClassInstance = SomeClass()
myClassInstance.doSomething()



/// Trailling closure

func someFunctionWithIntegerParam(number: Int, with aClosure: () -> Void) {
    if number == 10 {
        //execture closure
        aClosure()
    } else {
        print("Condition doesn't satisfy")
    }
}

// With out trailing closure
someFunctionWithIntegerParam(number: 20, with: {
    print("We are with in the closure")
})

// call the same method with 'trailing' closure syntax
someFunctionWithIntegerParam(number: 10) {
    print("We are in trailing closure")
}



func fdsfdsfds() {
    // sfsafds
    
    
    // fdsfsdfs
    
    // func() with in func(a piece of code) {
    
}


func travel(action: () -> Void) {
    print("Hey I am about to start!")
    
    action()
    
    print("Hey I reached Home!")
}


travel {
    print("I was on bus")
}



/// Escaping closure

class TaskManager {
    var onTaskFinished: (() -> Void)?
    
    func startLenghtyTask(completionHandler: @escaping () -> Void) {
        
        // store completion handler
        onTaskFinished = completionHandler
        
        // do lengthy task
        onLengthyTaskFinished()
    }
    
    func onLengthyTaskFinished() {
        onTaskFinished?()
    }
    
}

let task = TaskManager()
task.startLenghtyTask {
    // print("execute following tasks after completion of main task. Ex: After downloading the heavy images or dataObject
}

