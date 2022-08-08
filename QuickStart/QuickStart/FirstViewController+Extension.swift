//
//  FirstViewController+Extension.swift
//  QuickStart
//
//  Created by Pavankumar Arepu on 02/08/22.
//

import Foundation
import UIKit

extension FirstViewController {
//    func updateStatus(message: String) {
//        statusUpdateLabel.text = message
//    }
    
    func defaultMethodWithMultipleParameterWithReturnValue(age: Int, degree: String) -> String {
        return "My age is \(age) and I have completed \(degree) in 2008, Congratulation, you have qualified!"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "pushSegue") {
            // pass data to next view
            if let vc = segue.destination as? SecondViewController {
                vc.inputString = "Value from FirstVC"
                //vc.statusUpdateDelegate = self
                
                
                vc.simpleClosure = { str in
                    self.statusUpdateLabel.text = str
                }
            }
        }
    }
}
