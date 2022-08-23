//
//  StudentTableViewCell.swift
//  QuickStart
//
//  Created by Pavankumar Arepu on 23/08/22.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    @IBOutlet weak var studentName: UILabel!
    @IBOutlet weak var studentQualification: UILabel!
    @IBOutlet weak var studentAge: UILabel!
    @IBOutlet weak var studentImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
