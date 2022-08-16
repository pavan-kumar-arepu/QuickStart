//
//  SecondViewController.swift
//  QuickStart
//
//  Created by Pavankumar Arepu on 16/07/2022.
//

import Foundation
import UIKit
import MapKit

class SecondViewController: UIViewController {
    
    var inputString: String?
    
    @IBOutlet weak var segmentLabel   : UILabel!
    
    @IBOutlet weak var myNewLabel     : UILabel!
    
    @IBOutlet weak var segmentControl  : UISegmentedControl!
    
    @IBOutlet weak var myMapView       : MKMapView!
    
    @IBOutlet weak var mySwitch        : UISwitch!
    
    @IBOutlet weak var myImageView     : UIImageView!
    
    @IBOutlet weak var nextViewButton: UIButton!
    
    @IBOutlet weak var backButton: UIButton!
    
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
      
        // Default setting
        defaultSettings()
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

/// Grouping IBActions - Segment Control, Switch

extension SecondViewController {
    
    @IBAction func segmentControlTapped(_ sender: Any) {
        if self.segmentControl.selectedSegmentIndex == 0 {
            self.segmentLabel.text = "Tapped First Index"
            self.view.backgroundColor = .blue
        } else if self.segmentControl.selectedSegmentIndex == 1 {
            self.segmentLabel.text = "Tapped Second Index"
            self.view.backgroundColor = .brown

        } else if self.segmentControl.selectedSegmentIndex == 2 {
            self.segmentLabel.text = "Tapped Banana "
            self.view.backgroundColor = .yellow

        } else if self.segmentControl.selectedSegmentIndex == 3 {
            self.segmentLabel.text = "Tapped Apple"
            self.view.backgroundColor = .systemPink
        }
    }
    
    @IBAction func tappedSwitch(_ sender: Any) {
        if mySwitch.isOn {
            segmentLabel.isHidden = false
            myNewLabel.isHidden = false
            segmentControl.isHidden = false
            myMapView.isHidden = false
            //mySwitch.isHidden = false
            myImageView.isHidden = false
            nextViewButton.isHidden = false
            backButton.isHidden = false
        } else {
            segmentLabel.isHidden = true
            myNewLabel.isHidden = true
            segmentControl.isHidden = true
            myMapView.isHidden = true
           // mySwitch.isHidden = true
            myImageView.isHidden = true
            nextViewButton.isHidden = true
            backButton.isHidden = true
        }
    }
    
}

// MARK: - Helper Methods

extension SecondViewController {
    func defaultSettings() {
        segmentControl.selectedSegmentIndex = 0
        self.segmentLabel.text = "Tapped First Index"
        self.view.backgroundColor = .blue
        mySwitch.isOn = true
    }
}
