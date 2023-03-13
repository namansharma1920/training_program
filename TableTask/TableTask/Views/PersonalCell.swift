//
//  PersonalCell.swift
//  TableTask
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
    }
    
    
    @IBAction func powerBtnPressed(_ sender: Any) {
       
        print("name is \(name.text!), class is \(Class.text!), rollNumber is  \(rollNumber.text!)  ")
        
    }
}
