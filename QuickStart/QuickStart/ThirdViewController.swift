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
    
    var progressBarTimer: Timer!
    
    var progressCount = 0
    
    override func loadView() {
        super.loadView()
        print("came to Third loadView")
      
        // Stepper
        myStepper.wraps = true
        myStepper.autorepeat = true
        myStepper.maximumValue = 10
        
        // Timer
        self.progressBarTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateProgressBar), userInfo: nil, repeats: true)
        self.progressBarTimer.fire()
        
        // Progress Bar initial setup
        progressCount = 10
        self.mySlider.value = Float(progressCount)
        self.mySlider.minimumValue = 0
        self.mySlider.maximumValue = 100
        
        // setting delegate for webView
        myWebView.navigationDelegate = self
        
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
    
    // Stepper value change
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        stepperLabel.text = Int(sender.value).description
    }
    
    // Slider value change
    @IBAction func sliderValueChanged(_ sender: Any) {
        stepperLabel.text = "\(mySlider.value) %"
    }
    
    @objc func updateProgressBar() {
        print("Updating Progress Bar")
        progressCount += 10
        
        
        mySlider.value = Float(progressCount)

        if mySlider.value == 100 {
            progressBarTimer.invalidate()
        }
        
        stepperLabel.text = "\(mySlider.value) %"
        
        // Load webview
        if mySlider.value > 50 {
            loadWebView()
        }
        
    }
    
    func loadWebView() {
        let myURL = URL.init(string: "https://www.google.com")
        guard let url = myURL else { return }
        let urlRequest = URLRequest.init(url: url)
        self.myWebView.load(urlRequest)
    }
    
    func triggerAlert() {
        // Initialise AlertViewController
        // Setting option/style of AlertViewController during initialisation
        // Title, Message, button
        
        let alert = UIAlertController(title: "WebView Alert", message: "Webview loaded successfully", preferredStyle: UIAlertController.Style.actionSheet)
        
        alert.addAction(UIAlertAction(title: "Save", style: .default, handler: { _ in
            self.dismiss(animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { _ in
            self.dismiss(animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "Save&Continue", style: .default, handler: { _ in
            self.dismiss(animated: true, completion: nil)
        }))
        
        present(alert, animated: true, completion: nil)
    }
}

// Mark: - WKNavigationDelegate methods implementation
extension ThirdViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        triggerAlert()
    }
}
