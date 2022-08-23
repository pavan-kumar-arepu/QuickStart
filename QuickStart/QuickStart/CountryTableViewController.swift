//
//  CountryViewController.swift
//  QuickStart
//
//  Created by Pavankumar Arepu on 22/08/22.
//

import UIKit

class CountryTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
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

}


extension CountryTableViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        studentAgeArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        142.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Creating a tableview cell
       // let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "TableViewCell")
        
       // let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! StudentTableViewCell

        
        
        // Prepare data or assign data
//        cell.textLabel?.text = countryNames[indexPath.row]
//        cell.imageView?.image = UIImage.init(named: "Bird")
//        cell.detailTextLabel?.text = "DetailedTextLabel"
        
        cell.studentAge.text = "\(studentAgeArray[indexPath.row])"
        cell.studentName.text = "\(studentNamesArray[indexPath.row])"
        cell.studentQualification.text = "\(studentQualificationArray[indexPath.row])"
        cell.studentImageView.image = UIImage.init(named: "Bird")

        
        print("Data --> Cell Address", cell.textLabel?.text as Any, cell )
        
        // returning a cell
        return cell
    }

}
