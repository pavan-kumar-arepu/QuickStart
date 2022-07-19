import UIKit

var str = "Hello, playground"


 /**Swift defines away large classes of common programming errors by adopting modern programming patterns:

 Variables are always initialized before use.

 Array indices are checked for out-of-bounds errors.

 Integers are checked for overflow.

 Optionals ensure that nil values are handled explicitly.

 Memory is managed automatically.

 Error handling allows controlled recovery from unexpected failures.
 **/

 /*
  # Basic Operators #
  * Assignment Operator
  * Reminder Operator '%', '/'
  * Compound Assignment Operator --> var yam = 100, yam += 100
  * Comparision Operator
  * Ternary Conditional Operator
  * Nil-Coalescing Operator --> 'a != nil ? a! : b'
  * Range Operator
  * Half-Open Range Operator
  * Logical Operators
  */


 /*
  # String & Characters #
  * String Literals
  * Empty String Initializer
  * String Mutability
  */
 


let b = 10
var a = 5
a = b
print("Value of a", a)


let (x,y) = (1,100)

print("X value is \(x) \n Y values is \(y)")


// Compound Operator

var yam = 100
yam += 100
print(yam)


// Comparision Operator
/*
 ==
 !=
 >
 <
 >=
 <=
 */

if x == yam {
    print("both are equal")
} else {
    print("Not equal")
}


let z =  ( x != 0 ? x : yam )
print(z)

var optionalValue: Int?
// Nil-Coalescing Operator

let s = (optionalValue != nil ? optionalValue! : yam)
print(s)


let s1 = (x != nil ? x : yam)
print(s1)

// Range Operator

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}

for name in names[2...] {
    print(name)
}
// Brian
// Jack

for name in names[...2] {
    print(name)
}

let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}"
let sparklingHeart1 = "\u{00B6}"
