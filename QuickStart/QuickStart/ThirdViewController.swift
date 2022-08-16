//
//  SecondViewController.swift
//  QuickStart
//
//  Created by Pavankumar Arepu on 16/07/2022.
//

import Foundation
import UIKit
import WebKit

class ThirdViewController: UIViewController {
    
    // Properties
    
    var myIntegerValue = 1

    @IBOutlet weak var myWebView: WKWebView!
    
    @IBOutlet weak var stepperLabel: UILabel!
    
    @IBOutlet weak var myStepper: UIStepper!
    
    @IBOutlet weak var mySlider: UISlider!
    
    override func loadView() {
        super.loadView()
        print("came to Third loadView")
        myStepper.wraps = true
        myStepper.autorepeat = true
        myStepper.maximumValue = 10
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


// MARK: -  All UI Action Methods

extension ThirdViewController {

    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        stepperLabel.text = Int(sender.value).description
    }
}
