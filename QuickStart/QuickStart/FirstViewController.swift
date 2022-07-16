//
//  ViewController.swift
//  QuickStart
//
//  Created by Pavankumar Arepu on 11/07/2022.
//

import UIKit

class FirstViewController: UIViewController {

    override func loadView() {
        super.loadView()
        print("came to First loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("came to First viewDidLoad")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("came to First viewWillAppear")

    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("came to First viewWillLayoutSubviews")

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("came to First viewDidAppear")

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("came to First viewDidDisappear")

    }
    
}

