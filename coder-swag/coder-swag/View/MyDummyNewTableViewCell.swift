//
//  MyDummyNewTableViewCell.swift
//  coder-swag
//
//  Created by Naman Sharma on 23/02/23.
//

import UIKit

class MyDummyNewTableViewCell: UITableViewCell {

    static var identifier: String {
        return String(describing: self)
    }
    
    static var nib : UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
