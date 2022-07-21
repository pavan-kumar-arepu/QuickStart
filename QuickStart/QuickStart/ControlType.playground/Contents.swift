import UIKit

var str = "Hello, playground"

//For
//While
//Switch


enum NetworkStatus {
    case networkAvailable
    case networkNotAvailable
    case partialNetWorkAvailable
    case commonMessage
}

let networkStatus = NetworkStatus.networkAvailable

switch networkStatus {
case .networkAvailable:
    print("NetWork available")
    fallthrough
case .commonMessage:
    print("ThankYou")
case .networkNotAvailable:
    print("Network Not Avaiable")
default:
    print("Default Value")
}


let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}
