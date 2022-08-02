import UIKit

var str = "Hello, playground"

protocol NewProtocol {
    // Methods
    // Properties
}

struct MyNewStructure: NewProtocol {
    
}

class MyNewClass: NewProtocol {
    
}


protocol TrafficRules {
    func stopAtRedSignal()
    func proceedIfGreen()
    func readyToStartOrStopIfOrange()
    func respectPeople()
    var myNewVar: Int { get }
}

class ITEmployees: TrafficRules {
    var myNewVar: Int = 0
    
    func stopAtRedSignal() {
        print("stopAtRedSignal")
        myNewVar = 30
    }
    
    func proceedIfGreen() {
        print("proceedIfGreen")

    }
    
    func readyToStartOrStopIfOrange() {
        print("readyToStartOrStopIfOrange")
    }
    
    func respectPeople() {
        print("respectPeople")

    }
    
}

var itEmployees = ITEmployees()
itEmployees.myNewVar = 13

print("itEmployees.myNewVar", itEmployees.myNewVar)

class GovEmployess : TrafficRules {
    var myNewVar: Int = 0
    
    func stopAtRedSignal() {
        print("stopAtRedSignal")
    }
    
    func proceedIfGreen() {
        print("proceedIfGreen")
    }
    
    func readyToStartOrStopIfOrange() {
        print("readyToStartOrStopIfOrange")
    }
    
    func respectPeople() {
        print("respectPeople")

    }
}

class CommonPeople: TrafficRules {
    var myNewVar: Int = 0
    
    func stopAtRedSignal() {
        print("stopAtRedSignal")
    }
    
    func proceedIfGreen() {
        print("proceedIfGreen")

    }
    
    func readyToStartOrStopIfOrange() {
        print("readyToStartOrStopIfOrange")

    }
    
    func respectPeople() {
        print("respectPeople")

    }
}
