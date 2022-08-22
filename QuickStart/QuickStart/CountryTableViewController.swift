//
//  CountryViewController.swift
//  QuickStart
//
//  Created by Pavankumar Arepu on 22/08/22.
//

import UIKit

class CountryTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var countryTableView: UITableView!
    
    let countryNames = ["India", "USA", "UK", "Sweden", "Poland"]
    
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
        countryNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Creating a tableview cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell",
                                                     for: indexPath)
        
        // Prepare data or assign data
        cell.textLabel?.text = countryNames[indexPath.row]
        
        // returning a cell
        return cell
    }
    

}
