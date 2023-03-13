//
//  SecondTableViewCell.swift
//  CreatingMultipleCell
//
//  Created by Naman Sharma on 06/03/23.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    static var identifier: String {
      return String(describing: self)  //here self has a value of string
    }
    static var nib: UINib {
      return UINib(nibName: identifier, bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    
    
}
