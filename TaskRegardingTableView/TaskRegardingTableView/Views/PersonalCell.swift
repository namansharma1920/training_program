//
//  PersonalCell.swift
//  TaskRegardingTableView
//
//  Created by Naman Sharma on 27/02/23.
//

import UIKit

class PersonalCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var  Class: UILabel!
    @IBOutlet weak var  rollNumber: UILabel!
    @IBOutlet weak var  button: UIButton!
    
    
    func updateViews(personalInfo: PersonalInfo) {
        name.text = personalInfo.name
        Class.text = "\(personalInfo.Class)"
        rollNumber.text = "\(personalInfo.rollNumber)"
        button.backgroundColor = .yellow
    }

}
