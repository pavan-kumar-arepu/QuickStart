//
//  SecondViewController.swift
//  QuickStart
//
//  Created by Pavankumar Arepu on 16/07/2022.
//


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
 * Reminder Operator
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

import Foundation
import UIKit

class ThirdViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        print("came to Third loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("came to Third viewDidLoad")
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("came to Third viewWillAppear")

    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("came to Second viewWillLayoutSubviews")

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("came to Third viewDidAppear")

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("came to Third viewDidDisappear")
    }
}
