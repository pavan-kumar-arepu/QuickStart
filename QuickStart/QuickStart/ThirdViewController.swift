//
//  SecondViewController.swift
//  QuickStart
//
//  Created by Pavankumar Arepu on 16/07/2022.
//

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
