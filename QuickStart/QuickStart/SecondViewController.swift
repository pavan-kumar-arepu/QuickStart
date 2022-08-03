//
//  SecondViewController.swift
//  QuickStart
//
//  Created by Pavankumar Arepu on 16/07/2022.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    var inputString: String?
    
    @IBOutlet weak var myNewLabel: UILabel!
    
    //var statusUpdateDelegate: StatusUpdate?
    
    var simpleClosure: ((String) -> Void)?
    
    override func loadView() {
        super.loadView()
        print("came to Second loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("came to Second viewDidLoad")
        // Do any additional setup after loading the view.
        myNewLabel.text = inputString
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("came to Second viewWillAppear")

    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("came to Second viewWillLayoutSubviews")

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("came to Second viewDidAppear")

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("came to Second viewDidDisappear")
    }
    
    @IBAction func goBackToFirstVC(_ sender: Any) {
        print("Tap on GoBackButton")
        //self.statusUpdateDelegate?.updateStatus(message: "Came from SecondViewController")
        
        self.callToClosure()
        self.navigationController?.popViewController(animated: true)
    }
}


// Came from SecondViewController


extension SecondViewController {
    func callToClosure() {
        simpleClosure?("Came from SecondViewController from Closure")
    }
}
