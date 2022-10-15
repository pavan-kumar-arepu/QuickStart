//
//  CountryViewController.swift
//  QuickStart
//
//  Created by Pavankumar Arepu on 22/08/22.
//

import UIKit

class CountryTableViewController: UIViewController {

    
    @IBOutlet weak var countryTableView: UITableView!
    
    let countryNames = ["India", "USA", "UK", "Sweden", "Poland",
                        "India1", "USA1", "UK1", "Sweden1",
                        "Poland12","UK12", "Sweden12", "Poland12",
                        "Poland24","UK24", "Sweden24", "Poland24",
                        "Poland34","UK34", "Sweden34", "Poland34"]
    
    let studentNamesArray = ["Kumar", "Srekanth", "Arepu", "Rani", "Bhargav"]
    
    let studentAgeArray = [12,21,12,32,31]
    
    let studentQualificationArray = ["BTech", "CSE", "MEC", "IT", "EEE"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setting up datasource delegate
        countryTableView.dataSource = self
        
        // Setting up tableViewDelegate
        countryTableView.delegate = self

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func alert(title: String, message: String, buttonTitle: String) -> Void {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: buttonTitle, style: .default, handler: { _ in
            self.dismiss(animated: true, completion: nil)
        }))
        
        /*
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { _ in
            self.dismiss(animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "Save&Continue", style: .default, handler: { _ in
            self.dismiss(animated: true, completion: nil)
        }))
 */
        
        present(alert, animated: true, completion: nil)
    }
    
    func customAlert(_ title: String, _ message: String, _ buttonTitle: String) -> Void {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: buttonTitle, style: .default, handler: { _ in
            self.dismiss(animated: true, completion: nil)
        }))
        
        /*
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { _ in
            self.dismiss(animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "Save&Continue", style: .default, handler: { _ in
            self.dismiss(animated: true, completion: nil)
        }))
 */
        
        present(alert, animated: true, completion: nil)
    }

}


extension CountryTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        studentAgeArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        142.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Creating a tableview cell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! StudentTableViewCell

        cell.studentAge.text = "\(studentAgeArray[indexPath.row])"
        cell.studentName.text = "\(studentNamesArray[indexPath.row])"
        cell.studentQualification.text = "\(studentQualificationArray[indexPath.row])"
        cell.studentImageView.image = UIImage.init(named: "Bird")

        
        print("Data --> Cell Address --> indexpath", cell.textLabel?.text as Any, cell, indexPath)
        
        // returning a cell
        return cell
    }

}

extension CountryTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        alert(title: "TableView Alert", message: "You selected \(indexPath.row) and \(indexPath.section)", buttonTitle: "OK")
    }
}

