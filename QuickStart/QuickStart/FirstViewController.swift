//
//  ViewController.swift
//  QuickStart
//
//  Created by Pavankumar Arepu on 11/07/2022.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var statusUpdateLabel: UILabel!
    @IBOutlet weak var dataImageView: UIImageView!
    
    override func loadView() {
        super.loadView()
        print("came to First loadView")
        
        let task = URLSession.shared.dataTask(with: URL(string: "https://www.goodmorninghdloveimages.com/wp-content/uploads/2021/11/Pic-Of-Bal-Gopal-Images-Hd-Free-Download.jpg")!, completionHandler: { data, response, error in
            // Do something with image data...
            if let receivedData = data {
                DispatchQueue.main.async {
                    self.dataImageView.image = UIImage.init(data: receivedData)
                }
                print("ReceivedData:", receivedData)
            }
        })
        
        task.resume()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("came to First viewDidLoad")
        defaultMethodWithMultipleParameterWithReturnValue(age: 30, degree: "IT")
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

extension FirstViewController {
    func newMethod() {
        print("came to First viewDidDisappear")

    }
    
    func finishTask() {
        
    }
}

