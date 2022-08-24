//
//  AppCollectionViewController.swift
//  QuickStart
//
//  Created by Pavankumar Arepu on 22/08/22.
//

import UIKit

class AppCollectionViewController: UIViewController, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var appsCollectionView: UICollectionView!
    
    let appsNameArray = ["Siri","Photos","Safari","Podcast","Finder","Music"]
    let appsIconArray = ["siri","photos","safari","pod","finder","music"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        appsCollectionView.delegate = self
        
        appsCollectionView.dataSource = self
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

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 128.0, height: 128.0)
    }
}

extension AppCollectionViewController: UICollectionViewDelegate {
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
//
//    }
    
  
}


extension AppCollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        appsNameArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Create collectionView Cell
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "reuse", for: indexPath) as! AppCollectionViewController
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "reuse", for: indexPath) as! AppCollectionViewCell
        
        // Load the cell
        cell.appIcon.image = UIImage.init(named: appsIconArray[indexPath.item])
        cell.appLabel.text = appsNameArray[indexPath.item]
        
        // return cell
        return cell
    }
    
}
